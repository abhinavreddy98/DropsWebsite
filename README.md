# DROPSWebsite
It is NOT RECOMMENDED to launch the token officially before oracle support is added. It can lead to the token breaking or misuse by the admin. This code is only for MVP purposes.
  
Note: Please ensure you have installed <code><a href="https://nodejs.org/en/download/">nodejs</a></code>
  
To preview and run the project on your device:
1) Open project folder in <a href="https://code.visualstudio.com/download">Visual Studio Code</a>
2) In the terminal, run `npm install`
3) Run `npm run start` to view project in browser

To connect to smart contract, publish DROPSMVP.sol on TestNet or MainNet as required. Adjust contract addresses in the smart contract code based on USDT, USDC addresses. Additionally change the address configs in the script section of /pages/responsivelanding.vue, mintpage.vue and /components/navbar.vue wherever applicable.

DROPSMVPMultiple.sol is an alternative contract for when the reserves need to be stored in multiple addresses.

Manual Burn and redemption of drops is allowed by default and is not restricted by code but can only be triggered by the admin. The automatic flow for redemption is enable by default. In order to add manual burn limitation by code, add an if clause in the redeemDROPS function to restrict the manual bool in case manualBurnEnabled is false.

Ideally Mints, Burns of more than 0.1% of the TVL should happen exclusively with an oracle lookup rebase in order to prevent reduction of rewards to long term holders. Rebasing is currently written to be a manual input to the rebase function.
