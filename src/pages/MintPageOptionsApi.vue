<template>
  <div :class="$style.mintpage">
    <img :class="$style.backgroundIcon" alt="" src="/background1@2x.png" />
    <div :class="$style.mintpageInner">
      <div :class="$style.frameParent">
        <div :class="$style.frameGroup">
          <div :class="$style.frameContainer">
            <button :class="$style.redeemWrapper" id="Redeem" @click="redeemDROPS">
              <b :class="$style.redeem">Redeem</b>
            </button>
            <button :class="$style.mintWrapper" id="Mint" @click="startMint">
              <b :class="$style.mint">Mint</b>
            </button>
          </div>
          <div :class="$style.groupParent">
            <img :class="$style.frameChild" alt="" src="/group-880.svg" />
            <div :class="$style.dropsParent">
              <div :class="$style.drops">6,120,111 DROPS</div>
              <div :class="$style.usd">~6,120,111 USD</div>
            </div>
          </div>
        </div>
        <div :class="$style.groupWrapper1">
          <div :class="$style.rectangleParent2">
            <div :class="$style.groupChild5" />
            <input
              :class="$style.yourEmail"
              v-model = "amount"
              name="AmountInput"
              id="AmountInput"
              placeholder="Amount"
              type="number"
            />
          </div>
          <div :class="$style.dropstext">USDT {{ contractData }}</div>
        </div>
        
        <div :class="$style.frameDiv">
          <div :class="$style.rectangleParent">
            <div :class="$style.frameItem" />
            <div :class="$style.frameInner" />
          </div>
          <div :class="$style.frameParent1">
            <div :class="$style.parent">
              <b :class="$style.b">9753</b>
              <b :class="$style.currentTvl">Current TVL</b>
              <div :class="$style.rectangleDiv" />
            </div>
            <div :class="$style.frameParent2">
              <div :class="$style.groupContainer">
                <div :class="$style.rectangleWrapper">
                  <div :class="$style.groupChild" />
                </div>
                <b :class="$style.b1">397</b>
                <b :class="$style.ofUniqueWallets"># of unique wallets</b>
              </div>
              <div :class="$style.groupParent1">
                <div :class="$style.rectangleWrapper">
                  <div :class="$style.groupItem" />
                </div>
                <b :class="$style.b1">69%</b>
                <b :class="$style.ofUniqueWallets">TVL yield (30D)</b>
              </div>
              <div :class="$style.groupParent2">
                <div :class="$style.rectangleWrapper">
                  <div :class="$style.groupInner" />
                </div>
                <b :class="$style.b3">69%</b>
                <b :class="$style.ofUniqueWallets">24 hour TVL Change</b>
              </div>
              <div :class="$style.groupParent3">
                <div :class="$style.groupDiv">
                  <div :class="$style.groupChild1" />
                </div>
                <b :class="$style.b1">82</b>
                <b :class="$style.ofUniqueWallets"># of new wallets</b>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div :class="$style.navbar">
      <div :class="$style.frameParent3">
        <div :class="$style.dropsGroup">
          <b :class="$style.drops1">Drops</b>
          <div :class="$style.topNav">
            <img :class="$style.logoIcon" alt="" src="/logo.svg" />
            <div :class="$style.hamburgerParent">
              <button :class="$style.hamburger" id="Hamburger" />
              <div :class="$style.links">
                <button :class="$style.home" id="Home" @click="onHomeClick">
                  Home
                </button>
                <button
                  :class="$style.home"
                  id="Investor Kit"
                  @click="onInvestorKitClick"
                >
                  Investor Kit
                </button>
                <button
                  :class="$style.home"
                  id="Pitch Deck"
                  @click="onPitchDeckClick"
                >
                  Pitch Deck
                </button>
                <button
                  :class="$style.home"
                  id="Contact Us"
                  @click="onContactUsClick"
                >
                  Contact Us
                </button>
                <!--button
                  :class="$style.home"
                  id="WhitePaper"
                  @click="onWhitePaperClick"
                >
                  WhitePaper
                </button-->
              </div>
            </div>
          </div>
        </div>
        <!--button :class="$style.connectWalletWrapper" id="whitepapermenu">
          <b :class="$style.mint">Connect Wallet</b>
        </button-->
        <w3m-button />
      </div>
    </div>
  </div>
</template>
<script>
  import { defineComponent } from "vue";
  import { createWeb3Modal } from '@web3modal/wagmi/vue'

  import { mainnet, sepolia } from 'viem/chains'
  import { useReconnect } from '@wagmi/vue'
  import { useAccount, useConfig, useReadContract, useWriteContract, useWaitForTransactionReceipt } from '@wagmi/vue'
  import { config } from '../config.ts'
  import { USDTAbi } from '../abi/USDTAbi'
  import { DROPSAbi } from '../abi/DROPSAbi'
import { readContract } from "viem/actions";

  export default defineComponent({
    name: "MintPageOptionsApi",
    data() {
      return {
        account: null,
        projectId: 'dae763966b3bed48f4b4f28663e3fc04',
        dropsAddress: '0x01172591f469B114d3685C314a992C7F5e8776BB',
        usdtAddress: '0x5F1C982C9FdCaa46FDb5a9d6B379D2dadcdd2360',
        usdcAddress: '0xad56085ADf9Ec7D62d9A704EC5ef3E5977533A13',
        chains: [mainnet, sepolia],
        metadata: {
          name: 'Web3Modal',
          description: 'Web3Modal Example',
          url: 'https://web3modal.com',
          icons: ['https://avatars.githubusercontent.com/u/37784886']
        },
        contractData: null,
        dropsData: null,
        amount: 0n,
        allowanceData: null,
        hash: null,
        error: null,
        isPending: false,
        writeContract: null,
        webmodal: null,
        isSuccess: null,
        isLoading: null,
      };
    },
    created() {
      this.setupWeb3Modal();
      this.fetchContractData();
      this.initializeContract();
      //console.log(useConfig())
    },
    methods: {
      setupWeb3Modal() {
        const { reconnect } = useReconnect();
        reconnect();
        this.webmodal = createWeb3Modal({
          wagmiConfig: config,
          projectId: this.projectId,
          enableAnalytics: true
        });
      },
      initializeContract() {
        const { address: account } = useAccount()
        this.account = account
        console.log(this.account)
        const { data: allowanceData } = useReadContract({
          abi: DROPSAbi,
          address: this.usdtAddress,
          functionName: 'allowance',
          args: [this.account, this.dropsAddress],
        });
        this.allowanceData = allowanceData
        console.log(allowanceData)
        const { data: hash, error, isPending, writeContract } = useWriteContract();
        this.hash = hash;
        this.error = error;
        this.isPending = isPending;
        this.writeContract = writeContract;
        const { isLoading, isSuccess } = useWaitForTransactionReceipt(this.hash)
        this.isLoading = isLoading
        this.isSuccess = isSuccess
      },
      
      async executeWriteContract(abi, address, functionName, args) {
        try {
          const result = await this.writeContract({ 
            abi: abi,
            address: address,  
            functionName: functionName,
            args: args, 
          });
          console.log('Contract executed successfully:', result);
        } catch (err) {
          console.error('Error executing contract:', err);
        }
      },
      async fetchContractData() {
        const { data } = useReadContract({
          abi: DROPSAbi,
          address: this.dropsAddress,
          functionName: 'symbol'
        });
        this.contractData = data;
      },
      async startMint(){
        try {
          console.log(this.hash)
          const amount = this.amount;
          const allowance = this.allowanceData
          // Call approveUSDT and get the returned content
          console.log(allowance)
          
          if(allowance != amount){
            if(allowance > 0){
              console.log("Hello")
              const approveResult = await this.approveUSDT(0);
              if(true){
                console.log("HelloT")
                const approve2Result = await this.approveUSDT(amount);
              }
            }
            else{
              console.log("HelloThere")
              const approveResult = await this.approveUSDT(amount);
            }
          }
          while (true) {
            await new Promise(resolve => setTimeout(resolve, 1000));
            console.log(this.hash)
            console.log(this.isLoading)
            console.log(this.isSuccess)
          }
          
          // Wait for the transaction receipt using the approveResult hash          
          /*if (this.isSuccess) {
            console.log("HelloThereKenobi")
            // If the receipt indicates success, call mintDROPS
            await this.mintDROPS(amount);
          } else {
            console.error('Transaction failed:');
          }*/
        } catch (error) {
          console.error('Error during minting process:', error);
        }
      },
      async approveUSDT(amount){
        try{
          const result = this.executeWriteContract(USDTAbi, 
          this.usdtAddress,
          'approve', 
          [
              this.dropsAddress,
              amount,
          ])
        
          return result;
        }
        catch{
          if (error.value) {
            throw new Error(`Approve transaction failed: ${error.value.message}`);
          }
        }
      },

      async mintDROPS(amount){
        const result = this.executeWriteContract(USDTAbi, 
        this.dropsAddress,
         'mintDROPS', 
         [
            amount,
            1,
         ])
        
        if (error.value) {
          throw new Error(`Approve transaction failed: ${error.value.message}`);
        }
        return result;
      },
      async redeemDROPS(){
        const amount = this.amount
        return useWriteContract({ 
          DROPSAbi,
          address: this.dropsAddress,
          functionName: 'redeemDROPS',
          args: [
            amount,
            1,
            false,
          ],
        })
      },
      onHomeClick() {
        this.$router.push("/");
      },
      onInvestorKitClick() {
        window.location.href = "https://google.com";
      },
      onPitchDeckClick() {
        window.location.href = "https://google.com";
      },
      onWhitePaperClick() {
        window.location.href = "https://google.com";
      },
      onContactUsClick() {
        const anchor = document.querySelector(
          "[data-scroll-to='contactUsContainer']"
        );
        if (anchor) {
          anchor.scrollIntoView({ block: "start" });
        }
      },
    },
  });
</script>
<style module>
  .backgroundIcon {
    position: absolute;
    top: -29.937rem;
    left: -69.225rem;
    width: 244.513rem;
    height: 158.894rem;
    object-fit: cover;
  }
  .redeem {
    position: relative;
    font-size: var(--font-size-xl);
    font-family: var(--font-montserrat);
    color: var(--color-white);
    text-align: center;
  }
  .redeemWrapper {
    cursor: pointer;
    border: 2px solid var(--color-white);
    padding: var(--padding-lg) 5rem;
    background-color: transparent;
    position: absolute;
    top: 0rem;
    left: 20.125rem;
    box-shadow: 0px 20px 35px rgba(76, 225, 225, 0.1);
    border-radius: var(--br-base);
    box-sizing: border-box;
    width: 18.875rem;
    height: 3.75rem;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
  }
  .mint {
    position: relative;
    font-size: var(--font-size-xl);
    font-family: var(--font-montserrat);
    color: var(--color-darkslateblue-300);
    text-align: center;
  }
  .mintWrapper {
    cursor: pointer;
    border: none;
    padding: var(--padding-lg) 2.437rem;
    background-color: var(--color-white);
    position: absolute;
    top: 0rem;
    left: 0rem;
    box-shadow: var(--shadow-1);
    border-radius: var(--br-base);
    width: 18.875rem;
    height: 3.75rem;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    box-sizing: border-box;
  }
  .frameContainer {
    position: absolute;
    top: 25.188rem;
    left: 0rem;
    width: 39rem;
    height: 3.75rem;
  }
  .frameChild {
    position: absolute;
    height: 79.37%;
    width: 95.18%;
    top: 0%;
    right: 2.47%;
    bottom: 20.63%;
    left: 2.35%;
    max-width: 100%;
    overflow: hidden;
    max-height: 100%;
  }
  .drops {
    position: absolute;
    top: 0rem;
    left: calc(50% - 170px);
    line-height: 145%;
    text-transform: uppercase;
    font-weight: 600;
    display: inline-block;
    width: 21.25rem;
  }
  .dropstext {
    position: absolute;
    left: calc(50% - 170px);
    line-height: 145%;
    text-transform: uppercase;
    font-weight: 600;
    display: inline-block;
    width: 21.25rem;
    z-index: 1;
  }
  .usd {
    position: absolute;
    top: 2.875rem;
    left: calc(50% - 64px);
    font-size: var(--font-size-xl);
    line-height: 145%;
    color: var(--color-lightsteelblue-100);
  }
  .dropsParent {
    position: absolute;
    top: 18rem;
    left: calc(50% - 170px);
    width: 21.25rem;
    height: 4.688rem;
  }
  .groupParent {
    position: absolute;
    top: 0rem;
    left: 8.813rem;
    width: 21.25rem;
    height: 22.688rem;
  }
  .frameGroup {
    width: 39rem;
    position: relative;
    height: 28.938rem;
  }
  .frameItem {
    position: absolute;
    top: 0rem;
    left: 0rem;
    backdrop-filter: blur(28.77px);
    border-radius: 20px;
    background-color: rgba(0, 0, 0, 0.35);
    width: 71.875rem;
    height: 26.75rem;
  }
  .frameInner {
    position: absolute;
    top: 1.169rem;
    left: 1.169rem;
    border-radius: var(--br-base);
    border: 2.7px solid var(--color-mediumslateblue);
    box-sizing: border-box;
    width: 69.544rem;
    height: 24.419rem;
  }
  .groupChild5 {
    position: absolute;
    height: 100%;
    width: 100%;
    top: 0%;
    right: 0%;
    bottom: 0%;
    left: 0%;
    border-radius: var(--br-base);
    background-color: var(--color-white);
  }
  .yourEmail {
    border: none;
    outline: none;
    font-family: var(--font-poppins);
    font-size: 0.875rem;
    background-color: transparent;
    position: absolute;
    height: 34.96%;
    width: 80%;
    top: 31.76%;
    left: 15.69%;
    color: var(--color-darkslategray);
    text-align: left;
    display: inline-block;
  }
  .rectangleParent2 {
    height: 100%;
    width: 100%;
    top: 0%;
    right: 0%;
    bottom: 0%;
    left: 0%;
  }
  .groupWrapper1 {
    position: absolute;
    width: 15.413rem;
    height: 3.094rem;
  }
  .rectangleParent {
    position: absolute;
    top: 0rem;
    left: 0rem;
    width: 71.875rem;
    height: 26.75rem;
  }
  .b {
    position: absolute;
    top: 3.819rem;
    left: 3rem;
    line-height: 124.5%;
  }
  .currentTvl {
    position: absolute;
    top: 8.763rem;
    left: 3.875rem;
    font-size: var(--font-size-base);
    line-height: 145%;
    text-transform: uppercase;
    color: var(--color-lightsteelblue-100);
  }
  .rectangleDiv {
    position: absolute;
    top: -0.081rem;
    left: -0.081rem;
    border-radius: var(--br-base);
    border: 2.7px solid var(--color-mediumslateblue);
    box-sizing: border-box;
    width: 14.669rem;
    height: 14.606rem;
  }
  .parent {
    position: absolute;
    top: 0.625rem;
    left: 48.875rem;
    width: 14.5rem;
    height: 14.438rem;
  }
  .groupChild {
    position: absolute;
    top: 0rem;
    left: 0rem;
    border-radius: var(--br-xs);
    background-color: #80bfd6;
    width: 5.625rem;
    height: 5.625rem;
  }
  .rectangleWrapper {
    position: absolute;
    top: 0.313rem;
    left: 0rem;
    width: 5.625rem;
    height: 5.625rem;
  }
  .b1 {
    position: absolute;
    top: 0rem;
    left: 7.125rem;
    line-height: 145%;
  }
  .ofUniqueWallets {
    position: absolute;
    top: 4.719rem;
    left: 7.125rem;
    font-size: var(--font-size-base);
    line-height: 124.5%;
    text-transform: uppercase;
    color: var(--color-lightsteelblue-300);
  }
  .groupContainer {
    position: absolute;
    top: 0rem;
    left: 0rem;
    width: 18.313rem;
    height: 5.969rem;
  }
  .groupItem {
    position: absolute;
    top: 0rem;
    left: 0rem;
    border-radius: var(--br-xs);
    background-color: var(--color-deepskyblue);
    width: 5.625rem;
    height: 5.625rem;
  }
  .groupParent1 {
    position: absolute;
    top: 0rem;
    left: 23.313rem;
    width: 15rem;
    height: 5.969rem;
  }
  .groupInner {
    position: absolute;
    top: 0rem;
    left: 0rem;
    border-radius: var(--br-xs);
    background-color: var(--color-lightsteelblue-200);
    width: 5.625rem;
    height: 5.625rem;
  }
  .b3 {
    position: absolute;
    top: 0rem;
    left: 7.125rem;
    line-height: 145%;
    display: inline-block;
    width: 7.644rem;
  }
  .groupParent2 {
    position: absolute;
    top: 8.994rem;
    left: 0rem;
    width: 18rem;
    height: 5.969rem;
  }
  .groupChild1 {
    position: absolute;
    top: 0rem;
    left: 0rem;
    border-radius: var(--br-xs);
    background-color: var(--color-darkslateblue-100);
    width: 5.625rem;
    height: 5.625rem;
  }
  .groupDiv {
    position: absolute;
    top: 0.319rem;
    left: 0rem;
    width: 5.625rem;
    height: 5.625rem;
  }
  .groupParent3 {
    position: absolute;
    top: 8.994rem;
    left: 23.313rem;
    width: 16.875rem;
    height: 5.969rem;
  }
  .frameParent2 {
    position: absolute;
    top: 0rem;
    left: 0rem;
    width: 40.188rem;
    height: 14.963rem;
    text-align: left;
  }
  .frameParent1 {
    position: absolute;
    top: 5.438rem;
    left: 4.25rem;
    width: 63.375rem;
    height: 15.063rem;
  }
  .frameDiv {
    width: 71.875rem;
    position: relative;
    height: 26.75rem;
    font-size: var(--font-size-37xl);
  }
  .frameParent {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 9.5rem;
  }
  .mintpageInner {
    position: absolute;
    height: 73.35%;
    width: 82.26%;
    top: 11.18%;
    right: 8.87%;
    bottom: 15.47%;
    left: 8.87%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
  }
  .drops1 {
    position: relative;
    text-transform: uppercase;
  }
  .logoIcon {
    position: absolute;
    top: 0.406rem;
    left: -21.306rem;
    width: 2.438rem;
    height: 1.094rem;
    display: none;
  }
  .hamburger {
    cursor: pointer;
    border: none;
    padding: 0;
    background-color: transparent;
    height: 2rem;
    width: 2rem;
    position: relative;
    background-image: url("/public/hamburger@3x.png");
    background-size: cover;
    background-repeat: no-repeat;
    background-position: top;
    display: none;
  }
  .home {
    cursor: pointer;
    border: none;
    padding: 0;
    background-color: transparent;
    position: relative;
    font-size: var(--font-size-mid);
    font-weight: 700;
    font-family: var(--font-poppins);
    color: var(--color-white);
    text-align: left;
    display: inline-block;
  }
  .links {
    display: flex;
    flex-direction: row;
    align-items: flex-start;
    justify-content: flex-start;
    gap: var(--gap-30xl);
  }
  .hamburgerParent {
    position: absolute;
    top: 0rem;
    left: 0rem;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    gap: var(--gap-30xl);
  }
  .topNav {
    width: 30.438rem;
    position: relative;
    height: 1.625rem;
  }
  .dropsGroup {
    flex: 1;
    display: flex;
    flex-direction: row;
    align-items: flex-end;
    justify-content: space-between;
  }
  .connectWalletWrapper {
    cursor: pointer;
    border: none;
    padding: var(--padding-lg) var(--padding-6xl);
    background-color: var(--color-white);
    width: 11.875rem;
    box-shadow: 0px 20px 35px rgba(76, 225, 225, 0.1);
    border-radius: var(--br-base);
    height: 3.75rem;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    box-sizing: border-box;
  }
  .frameParent3 {
    align-self: stretch;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: flex-start;
    gap: var(--gap-28xl);
  }
  .navbar {
    position: absolute;
    width: 100%;
    top: 0rem;
    right: 0%;
    left: 0%;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    justify-content: flex-start;
    padding: var(--padding-17xl) var(--padding-93xl);
    box-sizing: border-box;
    text-align: left;
    font-size: var(--font-size-9xl);
    font-family: var(--font-helvetica);
  }
  .mintpage {
    width: 100%;
    position: relative;
    background-color: var(--color-gray-100);
    height: 88.875rem;
    overflow: hidden;
    text-align: center;
    font-size: 2rem;
    color: var(--color-white);
    font-family: var(--font-poppins);
  }

  @media screen and (max-width: 960px) {
    .hamburger {
      display: flex;
    }

    .links {
      display: none;
    }
  }
</style>
