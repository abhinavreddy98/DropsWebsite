pragma solidity ^0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/interfaces/draft-IERC6093.sol";

abstract contract ERC20 is Context, IERC20, IERC20Metadata, IERC20Errors {
    mapping(address account => uint256) private _balances;

    mapping(address account => mapping(address spender => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;

    /**
     * @dev Sets the values for {name} and {symbol}.
     *
     * All two of these values are immutable: they can only be set once during
     * construction.
     */
    constructor(string memory name_, string memory symbol_) {
        _name = name_;
        _symbol = symbol_;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    function decimals() public view virtual returns (uint8) {
        return 6;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view virtual returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `to` cannot be the zero address.
     * - the caller must have a balance of at least `value`.
     */
    function transfer(address to, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _transfer(owner, to, value);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * NOTE: If `value` is the maximum `uint256`, the allowance is not updated on
     * `transferFrom`. This is semantically equivalent to an infinite approval.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 value) public virtual returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, value);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Skips emitting an {Approval} event indicating an allowance update. This is not
     * required by the ERC. See {xref-ERC20-_approve-address-address-uint256-bool-}[_approve].
     *
     * NOTE: Does not update the allowance if the current allowance
     * is the maximum `uint256`.
     *
     * Requirements:
     *
     * - `from` and `to` cannot be the zero address.
     * - `from` must have a balance of at least `value`.
     * - the caller must have allowance for ``from``'s tokens of at least
     * `value`.
     */
    function transferFrom(address from, address to, uint256 value) public virtual returns (bool) {
        address spender = _msgSender();
        _spendAllowance(from, spender, value);
        _transfer(from, to, value);
        return true;
    }

    /**
     * @dev Moves a `value` amount of tokens from `from` to `to`.
     *
     * This internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _transfer(address from, address to, uint256 value) internal {
        if (from == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        if (to == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(from, to, value);
    }

    /**
     * @dev Transfers a `value` amount of tokens from `from` to `to`, or alternatively mints (or burns) if `from`
     * (or `to`) is the zero address. All customizations to transfers, mints, and burns should be done by overriding
     * this function.
     *
     * Emits a {Transfer} event.
     */
    function _update(address from, address to, uint256 value) internal virtual {
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            _totalSupply += value;
        } else {
            uint256 fromBalance = _balances[from];
            if (fromBalance < value) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                _balances[from] = fromBalance - value;
            }
        }

        if (to == address(0)) {
            unchecked {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
                _totalSupply -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                _balances[to] += value;
            }
        }

        emit Transfer(from, to, value);
    }

    /**
     * @dev Creates a `value` amount of tokens and assigns them to `account`, by transferring it from address(0).
     * Relies on the `_update` mechanism
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead.
     */
    function _mint(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidReceiver(address(0));
        }
        _update(address(0), account, value);
    }

    /**
     * @dev Destroys a `value` amount of tokens from `account`, lowering the total supply.
     * Relies on the `_update` mechanism.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * NOTE: This function is not virtual, {_update} should be overridden instead
     */
    function _burn(address account, uint256 value) internal {
        if (account == address(0)) {
            revert ERC20InvalidSender(address(0));
        }
        _update(account, address(0), value);
    }

    /**
     * @dev Sets `value` as the allowance of `spender` over the `owner` s tokens.
     *
     * This internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     *
     * Overrides to this logic should be done to the variant with an additional `bool emitEvent` argument.
     */
    function _approve(address owner, address spender, uint256 value) internal {
        _approve(owner, spender, value, true);
    }

    /**
     * @dev Variant of {_approve} with an optional flag to enable or disable the {Approval} event.
     *
     * By default (when calling {_approve}) the flag is set to true. On the other hand, approval changes made by
     * `_spendAllowance` during the `transferFrom` operation set the flag to false. This saves gas by not emitting any
     * `Approval` event during `transferFrom` operations.
     *
     * Anyone who wishes to continue emitting `Approval` events on the`transferFrom` operation can force the flag to
     * true using the following override:
     *
     * ```solidity
     * function _approve(address owner, address spender, uint256 value, bool) internal virtual override {
     *     super._approve(owner, spender, value, true);
     * }
     * ```
     *
     * Requirements are the same as {_approve}.
     */
    function _approve(address owner, address spender, uint256 value, bool emitEvent) internal virtual {
        if (owner == address(0)) {
            revert ERC20InvalidApprover(address(0));
        }
        if (spender == address(0)) {
            revert ERC20InvalidSpender(address(0));
        }
        _allowances[owner][spender] = value;
        if (emitEvent) {
            emit Approval(owner, spender, value);
        }
    }

    /**
     * @dev Updates `owner` s allowance for `spender` based on spent `value`.
     *
     * Does not update the allowance value in case of infinite allowance.
     * Revert if not enough allowance is available.
     *
     * Does not emit an {Approval} event.
     */
    function _spendAllowance(address owner, address spender, uint256 value) internal virtual {
        uint256 currentAllowance = allowance(owner, spender);
        if (currentAllowance != type(uint256).max) {
            if (currentAllowance < value) {
                revert ERC20InsufficientAllowance(spender, currentAllowance, value);
            }
            unchecked {
                _approve(owner, spender, currentAllowance - value, false);
            }
        }
    }
}

interface IERC20_USDT {
    function transferFrom(address from, address to, uint value) external;
    function balanceOf(address who) external returns (uint);
    function transfer(address to, uint value) external;
}

contract DROPS is ERC20, Ownable {

    IERC20_USDT immutable USDT;
    IERC20_USDT immutable USDC;
    IERC20 STABLE;
    mapping (address => uint256)  pendingburns;
    uint256 totalpendingburns;

    uint256 CTVL;
    uint256 totalTD;
    mapping (address => uint256) TD;
    uint256 price = 10**6;
    bool manualBurnEnabled = false;

    mapping (uint8 => address) RWA;
    uint8 LastIndexRWA = 0;

    address[1] reserves;

    constructor(/*address USDTaddress, address USDCaddress*/)
        ERC20("DROPS", "DROPS")
        Ownable(_msgSender())
    {
        USDT = IERC20_USDT(0xd9145CCE52D386f254917e481eB44e9943F39138);
        USDC = IERC20_USDT(0xa131AD247055FD2e2aA8b156A11bdEc81b9eAD95);
        STABLE = IERC20(0xd9145CCE52D386f254917e481eB44e9943F39138);
        reserves[0]  = address(this);
    }

    function burn(address holder, uint256 amount) internal {
        _burn(holder, amount);
    }

    function mint(address to, uint256 amount) internal {

        _mint(to, amount);
    }

    function totalSupply() public view override returns (uint256) {
        return (totalTD * price)/10**6;
    }

    function balanceOf(address holder) public view override returns(uint256){
        return (TD[holder] * price)/10**6;
    }

    function transfer(address to, uint256 value) public override returns(bool){
        address sender = _msgSender();
        super._transfer(sender, to, value);
        /*if (to == address(this)) {
            //get Updated Values from api?
            if(USDT.balanceOf(address(this)) >= value){
                require(USDT.transfer(sender, value), "USDT reserves low. Try again later"); // need to add multiple stables and multiple reserves and maybe multiple intermediary reserver holder contracts
                burn(address(this), value);
            }
            else{ // delayed burn after converting rwa to usdt you would get current prices with the current logic and not future price when its liquidated, since tokens are already locked
                addToBurnQueue(to, value);
            }
        }*/
        return true;
    }

    function _update(address from, address to, uint256 value) internal override {
        uint256 amountofTD = (value*10**6)/price;
        if (from == address(0)) {
            // Overflow check required: The rest of the code assumes that totalSupply never overflows
            CTVL += value;
            totalTD += amountofTD;
        } else {
            uint256 fromBalance = balanceOf(from);
            if (TD[from] < amountofTD) {
                revert ERC20InsufficientBalance(from, fromBalance, value);
            }
            unchecked {
                // Overflow not possible: value <= fromBalance <= totalSupply.
                TD[from] -= amountofTD;
            }
        }

        if (to == address(0)) {
                // Overflow not possible: value <= totalSupply or value <= fromBalance <= totalSupply.
            unchecked {
                totalTD -= amountofTD;
                CTVL -= value;
            }
        } else {
            unchecked {
                // Overflow not possible: balance + value is at most totalSupply, which we know fits into a uint256.
                TD[to] += amountofTD;
            }
        }

        emit Transfer(from, to, value);
    }

    function enableManualBurn(bool status) onlyOwner external{
        manualBurnEnabled = status;
    }

    function redeemDROPS(uint256 value, uint8 stabletype, bool manual) external{
        address sender = _msgSender();
        if(stabletype == 1){
            checkBalanceAndBurn(sender, value, USDT, manual);
        }
        else {
            checkBalanceAndBurn(sender, value, USDC, manual);
        }
    }

    function checkBalanceAndBurn(address sender, uint256 value, IERC20_USDT USD, bool manual) internal{
            if(USD.balanceOf(address(this)) >= value){
                USD.transfer(sender, value); // need to add multiple stables and multiple reserves and maybe multiple intermediary reserver holder contracts
                burn(sender, value);
            }
            else if(manual == true && value > 10**10){ // delayed burn 
                addToBurnQueue(sender, value);
            }
    }

    function manualRedemption(address[] calldata receivers) external onlyOwner{
        uint256 burntamount = 0;
        uint256 p = price;
        for(uint256 i = 0; i < receivers.length; i++){
            uint256 amount = (p*pendingburns[receivers[i]])/10**6;
            burn(address(this), amount);
            USDT.transferFrom(_msgSender(), receivers[i], amount);
            pendingburns[receivers[i]] = 0;
            burntamount += (amount*10**6)/p;
        }
        totalpendingburns -= burntamount;
    }

    function addToBurnQueue(address holder, uint256 amount) internal{
        uint256 TDcount = (amount*10**6)/price;
        pendingburns[holder] += TDcount;
        totalpendingburns += TDcount;
        require(transferFrom(holder, address(this), amount), "Failed to add to BurnQueue");
    }

    function mintDROPS(uint256 amount, uint8 stabletype) external returns(uint256 allowance){
        address sender = _msgSender();
        if(stabletype == 1){
            USDT.transferFrom(sender, address(this), amount); //Needs prior approval
        }
        else {
            USDC.transferFrom(sender, address(this), amount); //Needs prior approval
        }
        mint(sender, amount);
        return allowance;
    }

    function rebase(uint32[] calldata input) external onlyOwner{ //single point of price updates
        uint256 TVL = 0;
        for (uint8 i = 0; i < input.length; i++){
            for(uint8 j = 0; j < reserves.length; j++){
                TVL += input[i] * IERC20(RWA[i]).balanceOf(reserves[j]); 
            }
        }
        CTVL = TVL + USDT.balanceOf(address(this)) + USDC.balanceOf(address(this));
        price = (CTVL*10**6)/totalTD;
        require(price != 0, "price cannot be 0");
    }

    function appendRWA(address[] calldata input) external onlyOwner{ //appends list of RWA addresses
        for (uint8 i = 0; i < input.length; i++){
            RWA[LastIndexRWA] = input[i];
            LastIndexRWA += 1;
        }
    }

    function replaceRWAAtIndex(address tokenAddress, uint8 index) external onlyOwner{
        RWA[index] = tokenAddress;
    }

    function appendRWAFromIndex(address[] calldata input, uint8 index) external onlyOwner{
        uint8 i;
        for (i = 0; i < input.length; i++){
            RWA[index] = input[i];
            index += 1;
        }
        if(index > LastIndexRWA){
            LastIndexRWA = index;
        }
    }

    function rescueERC20Token(address token, address to) external onlyOwner() returns(bool returned) {
        IERC20 rescuedContract = IERC20(token);
        require(rescuedContract.transfer(to, rescuedContract.balanceOf(address(this))), "Token Address is incorrect or not ERC20");
        return true;
    }
}