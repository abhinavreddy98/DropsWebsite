<template>
    <div :class="$style.responsiveLanding">
      <div :class="$style.howitworks">
        <div :class="$style.howItWorks">
          <div :class="$style.howItWorksInner">
            <div :class="$style.howItWorksInner">
              <b :class="$style.heading">
                <p :class="$style.automatedMinting">AUTOMATED MINTING</p>
                <p :class="$style.automatedMinting">AND REDEMPTIONS</p>
              </b>
              <div :class="$style.subheading">How it works</div>
              <div :class="$style.values">
                <div :class="$style.value">
                  <img :class="$style.valueChild" alt="" src="/group-7.svg" />
                  <b :class="$style.administrator">Administrator</b>
                  <div :class="$style.theDropsAdministratorContainer">
                    <p :class="$style.automatedMinting">
                      The DROPS administrator will manage the collateral
                    </p>
                    <p :class="$style.tokenizedRwaInvestment">
                      tokenized RWA investment and rotation strategy.
                    </p>
                  </div>
                </div>
                <div :class="$style.value1">
                  <div :class="$style.valueChild">
                    <div :class="$style.groupChild" />
                    <img :class="$style.taxi1Icon" alt="" src="/taxi-1.svg" />
                  </div>
                  <div :class="$style.usersCanRedeemContainer">
                    <p :class="$style.automatedMinting">
                      Users can redeem their DROPS for the underlying
                    </p>
                    <p :class="$style.automatedMinting">
                      tokenized RWA asset seamlessly.
                    </p>
                  </div>
                  <b :class="$style.administrator">RWA Redemptions</b>
                </div>
                <div :class="$style.value2">
                  <div :class="$style.theDropsAdministratorContainer">
                    <p :class="$style.automatedMinting">
                      A distributed portfolio of tokenized RWAs will be the
                    </p>
                    <p :class="$style.automatedMinting">
                      yield-producing collateral backing for DROPS.
                    </p>
                  </div>
                  <b :class="$style.administrator">Tokenized RWAs</b>
                  <div :class="$style.valueChild">
                    <div :class="$style.groupItem" />
                    <img
                      :class="$style.eosIconsblockchain"
                      alt=""
                      src="/eosiconsblockchain.svg"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <img :class="$style.howItWorksChild" alt="" src="/howitworks.png" />
        </div>
      </div>
      <div :class="$style.hero">
        <div :class="$style.backgroundParent">
          <img :class="$style.backgroundIcon" alt="" src="/background@2x.png" />
          <div :class="$style.desc">
            <div :class="$style.frameParent">
              <button
                :class="$style.whitepaperWrapper"
                id="WhitepaperHero"
                @click="onFrameButtonClick"
              >
                <b :class="$style.whitepaper">Whitepaper</b>
              </button>
              <button
                :class="$style.getInTouchWrapper"
                id="MintDROPS"
                @click="onMintDROPS"
              >
                <b :class="$style.getInTouch">Mint DROPS</b>
              </button>
            </div>
            <div :class="$style.taglineParent">
              <b :class="$style.tagline">BUILT FOR ENTERPRISE TREASURIES</b>
              <b :class="$style.heading1">
                <p :class="$style.automatedMinting">Decentralized</p>
                <p :class="$style.automatedMinting">YieldCoin</p>
              </b>
            </div>
          </div>
        </div>
      </div>
      <div :class="$style.navbar">
        <div :class="$style.frameGroup" data-scroll-to="frameContainer">
          <div :class="$style.dropsParent">
            <div :class="$style.titleGroup">
              <img src ="../../public/logo.png" :class="$style.logoIcon">
              <b :class="$style.drops1">DROPS</b>
            </div>
            <div :class="$style.topNav">
              <div :class="$style.hamburgerParent">
                <button :class="$style.hamburger" id="Hamburger" />
                <div :class="$style.links">
                  <button :class="$style.home" id="Home" @click="onHomeClick">Home</button>
                  <button
                    :class="$style.home"
                    id="Team"
                    @click="onTeamClick"
                  >
                    Team
                  </button>
                  <button
                    :class="$style.home"
                    id="Investor Kit"
                    @click="onInvestorKitClick"
                  > Investor Kit </button>
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
                </div>
              </div>
            </div>
          </div>
          <!--button :class="$style.connectWalletWrapper" id="whitepapermenu">
            <b :class="$style.getInTouch">Connect Wallet</b>
          </button-->
          <w3m-button />
        </div>
      </div>
      
      <div :class="$style.aboutdrops">
        <div :class="$style.aboutDrops">
          <img :class="$style.decoreIcon" alt="" src="/decore.svg" />
          <img :class="$style.decoreIcon1" alt="" src="/decore.svg" />
          <div :class="$style.parent">
            <div :class="$style.div">+</div>
            <div :class="$style.div1">+</div>
            <div :class="$style.div2">+</div>
            <div :class="$style.div3">+</div>
            <div :class="$style.div4">+</div>
            <div :class="$style.div5">+</div>
            <div :class="$style.div6">+</div>
            <div :class="$style.div7">+</div>
            <div :class="$style.div8">+</div>
            <div :class="$style.div9">+</div>
            <div :class="$style.div10">+</div>
            <div :class="$style.div11">+</div>
            <div :class="$style.div12">+</div>
            <div :class="$style.div13">+</div>
            <div :class="$style.div14">+</div>
            <div :class="$style.div15">+</div>
            <div :class="$style.div16">+</div>
            <div :class="$style.div17">+</div>
            <div :class="$style.div18">+</div>
            <div :class="$style.div19">+</div>
            <div :class="$style.div20">+</div>
            <div :class="$style.div21">+</div>
          </div>
          <div :class="$style.aboutDrops1">About DROPS</div>
          <b :class="$style.yieldcoinBackedBy"
            >YieldCoin backed by Tokenized Global RWAs</b
          >
          <div :class="$style.frameContainer">
            <div :class="$style.groupWrapper">
              <div :class="$style.rectangleContainer">
                <div :class="$style.groupInner" />
                <div :class="$style.rectangleDiv" />
                <div :class="$style.collateralAssetsBacking">
                  <ul>
                    <li>The decentralized
                    collateral pool is the sole
                    token issuer; removing
                    centralization.</li>
                    <br>
                    <li>
                      Transparent on-chain
  performance data
  available for tokenized
  collateral RWAs.
                    </li>
                  
                  </ul>
                </div>
                <div :class="$style.distributedReserves">
                  Distributed Reserves
                </div>
                <div :class="$style.groupDiv">
                  <div :class="$style.groupChild1" />
                  <img
                    :class="$style.trustlessYieldDistributedRe"
                    alt=""
                    src="/trustless-yield-distributed-reserves-global-compliance-multicurrency-4-1@2x.png"
                  />
                </div>
              </div>
            </div>
            <div :class="$style.groupContainer">
              <div :class="$style.groupParent">
                <div :class="$style.rectangleParent1">
                  <div :class="$style.groupChild2" />
                  <img
                    :class="$style.trustlessYieldDistributedRe1"
                    alt=""
                    src="/trustless-yield-distributed-reserves-global-compliance-multicurrency-2@2x.png"
                  />
                </div>
                <div :class="$style.firstBuiltTraditionally">
                  <ul>
                    <li>DROPS is structured as a
  derivative product, not
  exposed to securities
  regulations.</li>
                    <br>
                    <li>
                      DROPS employs a risk
  administrator separated
  from the asset holding
  SPV.
                    </li>
                  </ul>
                </div>
                <div :class="$style.globalCompliance">Global Compliance</div>
              </div>
            </div>
            <div :class="$style.groupFrame">
              <div :class="$style.groupParent1">
                <div :class="$style.rectangleWrapper">
                  <div :class="$style.groupChild3" />
                </div>
                <div :class="$style.yieldIsDistributed">
                  <ul>
                    <li>Trustless yield distribution
                  using rebasing
                  mechanism.</li>
                  <br>
                  <li>100% yield distributed daily to holders autonomously.</li>
                  </ul>
                </div>
                <div :class="$style.trustlessYield">Trustless Yield</div>
                <img
                  :class="$style.trustlessYieldDistributedRe2"
                  alt=""
                  src="/trustless-yield-distributed-reserves-global-compliance-multicurrency-21@2x.png"
                />
              </div>
            </div>
            <!--div :class="$style.frameDiv">
              <div :class="$style.groupParent2">
                <div :class="$style.rectangleFrame">
                  <div :class="$style.groupChild4" />
                </div>
                <div :class="$style.underlyingPortfolioTvl">
                  Underlying portfolio TVL is calculated in USD and converted
                  using normal Forex rate feeds.
                </div>
                <div :class="$style.multiCurrency">Multi-currency</div>
                <img
                  :class="$style.trustlessYieldDistributedRe3"
                  alt=""
                  src="/trustless-yield-distributed-reserves-global-compliance-multicurrency-22@2x.png"
                />
              </div>
            </div-->
          </div>
        </div>
      </div>
      <div :class="$style.contactus1" data-scroll-to="contactUsContainer">
        <div :class="$style.contactUsWrapper">
          <div :class="$style.contactUs">
            <img :class="$style.contactUsChild" alt="" src="/group-78@2x.png" />
            <b :class="$style.registerInterestToContainer">
              <p :class="$style.automatedMinting">
                Register interest to receive updates
              </p>
              <p :class="$style.automatedMinting">
                and learn how to get involved
              </p>
            </b>
            <button
              :class="$style.telegrambutton"
              id="TelegramButton"
              @click="onTelegramButtonClick"
            >
              <div :class="$style.telegrambuttonChild" />
              <img :class="$style.send21" alt="" src="/send-2-1@2x.png" />
            </button>
            <div :class="$style.frameParent1">
              <div :class="$style.groupWrapper1">
                <div :class="$style.rectangleParent2">
                  <div :class="$style.groupChild5" />
                  <input
                    :class="$style.yourEmail"
                    name="EmailInput"
                    id="EmailInput"
                    placeholder="Your email"
                    type="email"
                  />
                  <div :class="$style.vectorParent">
                    <img :class="$style.frameChild" alt="" src="/vector-5.svg" />
                    <div :class="$style.frameItem" />
                  </div>
                </div>
              </div>
              <button
                :class="$style.getInTouchContainer"
                id="GetInTouchForm"
                @click="onFrameButtonClick2"
              >
                <b :class="$style.whitepaper">Get In Touch</b>
              </button>
            </div>
          </div>
        </div>
      </div>
      <Social/>
    </div>
  </template>
  <script>
    import NavBar from "../components/NavBar.vue"
    import Social from "../components/Social.vue"
  
    import { defineComponent } from "vue";
    import { createWeb3Modal } from '@web3modal/wagmi/vue'
  
    import { mainnet, sepolia } from 'viem/chains'
    import { useReconnect } from '@wagmi/vue'
    import { useReadContract, useWriteContract } from '@wagmi/vue'
    import { config } from '../config.ts'
    import { USDTAbi } from '../abi/USDTAbi'
    import { DROPSAbi } from '../abi/DROPSAbi'
  
    export default defineComponent({
      name: "ResponsiveLanding",
      components: {
          NavBar,
          Social,
      },
      data() {
        return {
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
          contractData: null
        };
      },
      created() {
        this.setupWeb3Modal();
        this.fetchContractData();
      },
      methods: {
        setupWeb3Modal() {
          const { reconnect } = useReconnect();
          reconnect();
          createWeb3Modal({
            wagmiConfig: config,
            projectId: this.projectId,
            enableAnalytics: true
          });
        },
        async fetchContractData() {
          const { data } = useReadContract({
            abi: USDTAbi,
            address: this.usdtAddress,
            functionName: 'symbol'
          });
          this.contractData = data;
        },
        onInvestorKitClick() {
          //window.location.href = "";
        },
        onHomeClick() {
          this.$router.push("/");
        },
        onTeamClick() {
          this.$router.push("/team");
        },
        onPitchDeckClick() {
          this.$router.push("/pitchdeck");
        },
        onContactUsClick() {
          //this.$router.push("/contactus");
        },
        onMintDROPS() {
          this.$router.push("/mintpage");
        },
        onFrameButtonClickTeam() {
          this.$router.push("/team");
        },
        onFrameButtonClick1() {
          const anchor = document.querySelector(
            "[data-scroll-to='contactUsContainer']"
          );
          if (anchor) {
            anchor.scrollIntoView({ block: "start" });
          }
        },
        onTelegramButtonClick() {
          window.open("https://google.com");
        },
        onFrameButtonClick2() {
          const anchor = document.querySelector(
            "[data-scroll-to='frameContainer']"
          );
          if (anchor) {
            anchor.scrollIntoView({ block: "start" });
          }
        },
      },
    });
  </script>
  <style module>
    .automatedMinting {
      margin: 0;
    }
    .heading {
      position: absolute;
      top: 2.563rem;
      left: 0rem;
      line-height: 147.13%;
      text-transform: capitalize;
      display: inline-block;
      width: 27.813rem;
      height: 8.188rem;
    }
    .subheading {
      position: absolute;
      top: 0rem;
      left: 0rem;
      font-size: var(--font-size-5xl);
      font-weight: 600;
      color: #80a6c9;
      text-align: center;
    }
    .valueChild {
      position: absolute;
      top: 0.25rem;
      left: 0rem;
      width: 2.938rem;
      height: 3rem;
    }
    .administrator {
      position: absolute;
      top: 0rem;
      left: 4.25rem;
      line-height: 124.5%;
    }
    .tokenizedRwaInvestment {
      margin: 0;
      white-space: pre-wrap;
    }
    .theDropsAdministratorContainer {
      position: absolute;
      top: 1.5rem;
      left: 4.25rem;
      line-height: 124.5%;
    }
    .value {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 30rem;
      height: 4rem;
    }
    .groupChild {
      position: absolute;
      top: 0rem;
      left: 0rem;
      border-radius: var(--br-smi);
      background-color: var(--color-darkslateblue-100);
      width: 2.938rem;
      height: 3rem;
    }
    .taxi1Icon {
      position: absolute;
      top: 0.563rem;
      left: 0.563rem;
      width: 1.875rem;
      height: 1.875rem;
    }
    .usersCanRedeemContainer {
      position: absolute;
      top: 1.563rem;
      left: 4.25rem;
      line-height: 124.5%;
    }
    .value1 {
      position: absolute;
      top: 14rem;
      left: 0rem;
      width: 28.5rem;
      height: 4.063rem;
    }
    .groupItem {
      position: absolute;
      top: 0rem;
      left: 0rem;
      border-radius: var(--br-smi);
      background-color: var(--color-deepskyblue);
      width: 2.938rem;
      height: 3rem;
    }
    .eosIconsblockchain {
      position: absolute;
      top: 0.75rem;
      left: 0.75rem;
      width: 1.5rem;
      height: 1.5rem;
      overflow: hidden;
    }
    .value2 {
      position: absolute;
      top: 7rem;
      left: 0rem;
      width: 29.625rem;
      height: 4rem;
    }
    .values {
      position: absolute;
      top: 12.625rem;
      left: 0rem;
      width: 30rem;
      height: 18.063rem;
      font-size: var(--font-size-base);
    }
    .howItWorksInner {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 30rem;
      height: 30.688rem;
    }
    .howItWorksChild {
      position: absolute;
      top: 1.625rem;
      left: 38.188rem;
      width: 25.5rem;
      height: 31.063rem;
    }
    .howItWorks {
      width: 63.688rem;
      position: relative;
      height: 32.688rem;
    }
    .howitworks {
      position: absolute;
      height: 25.22%;
      width: 97.93%;
      top: 53.22%;
      right: 2.07%;
      bottom: 17.56%;
      left: 0%;
      overflow: hidden;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      padding: 8.312rem 10.937rem;
      box-sizing: border-box;
    }
    .backgroundIcon {
      width: 87.375rem;
      position: absolute;
      margin: 0 !important;
      top: 0rem;
      left: 0rem;
      height: 49.563rem;
      object-fit: cover;
      z-index: 0;
    }
    .whitepaper {
      position: relative;
      font-size: var(--font-size-xl);
      font-family: var(--font-montserrat);
      color: var(--color-white);
      text-align: center;
    }
    .whitepaperWrapper {
      cursor: pointer;
      border: 2px solid var(--color-white);
      padding: var(--padding-lg) 1.937rem;
      background-color: transparent;
      position: absolute;
      top: 0rem;
      left: 13.75rem;
      box-shadow: 0px 20px 35px rgba(76, 225, 225, 0.1);
      border-radius: var(--br-base);
      box-sizing: border-box;
      width: 11.813rem;
      height: 3.75rem;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
    }
    .getInTouch {
      position: relative;
      font-size: var(--font-size-xl);
      font-family: var(--font-montserrat);
      color: var(--color-darkslateblue-300);
      text-align: center;
    }
    .getInTouchWrapper {
      cursor: pointer;
      border: none;
      padding: var(--padding-lg) 1.5rem;
      background-color: var(--color-white);
      position: absolute;
      top: 0rem;
      left: 0rem;
      box-shadow: var(--shadow-1);
      border-radius: var(--br-base);
      width: 11.813rem;
      height: 3.75rem;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
      box-sizing: border-box;
    }
    .frameParent {
      position: absolute;
      top: 23.063rem;
      left: 0rem;
      width: 25.563rem;
      height: 3.75rem;
    }
    .tagline {
      align-self: stretch;
      position: relative;
      text-transform: uppercase;
    }
    .heading1 {
      align-self: stretch;
      position: relative;
      font-size: 5rem;
      letter-spacing: -0.04em;
      line-height: 5.563rem;
      color: var(--color-white);
    }
    .taglineParent {
      position: absolute;
      top: 0rem;
      left: 0rem;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-content: flex-start;
      gap: 1.5rem;
    }
    .desc {
      width: 35.313rem;
      position: relative;
      height: 26.813rem;
      z-index: 1;
    }
    .backgroundParent {
      width: 87.375rem;
      height: 49.563rem;
      display: flex;
      flex-direction: column;
      align-items: flex-start;
      justify-content: flex-start;
      padding: 11.062rem 7.75rem;
      box-sizing: border-box;
      position: relative;
      gap: 0.625rem;
    }
    .hero {
      position: absolute;
      height: 27.37%;
      width: 100%;
      top: 4.93%;
      right: 0%;
      bottom: 65.7%;
      left: 0%;
      overflow: hidden;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
      font-size: var(--font-size-xl);
      color: var(--color-lightsteelblue-100);
    }
    .drops {
      position: relative;
      text-transform: uppercase;
    }
    .logoIcon {
      border-radius: 50px;
      position: relative;
      width: 3.438rem;
      height: 3.438rem;
    }
    .titleGroup{
      width: auto;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: flex-start;
      gap: 2rem;
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
      gap: 2rem;
    }
    .hamburgerParent {
      position: absolute;
      top: 0rem;
      right: 0rem;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
      gap: var(--gap-30xl);
    }
    .topNav {
      width: 45.438rem;
      position: relative;
      height: 1.625rem;
    }
    .dropsParent {
      flex: 1;
      display: flex;
      flex-direction: row;
      align-items: center;
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
    .frameGroup {
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
      font-size: var(--font-size-9xl);
      font-family: var(--font-helvetica);
    }
    .decoreIcon {
      position: absolute;
      width: 29.27%;
      top: 5.313rem;
      right: 26.17%;
      left: 44.56%;
      max-width: 100%;
      overflow: hidden;
      height: 0.75rem;
    }
    .decoreIcon1 {
      position: absolute;
      width: 29.27%;
      top: 5.313rem;
      right: 18.81%;
      left: 51.92%;
      max-width: 100%;
      overflow: hidden;
      height: 0.75rem;
    }
    .div {
      position: absolute;
      top: 0rem;
      left: 0%;
      color: var(--color-lightsteelblue-100);
    }
    .div1 {
      position: absolute;
      top: 2.188rem;
      left: 0%;
    }
    .div2 {
      position: absolute;
      top: 4.375rem;
      left: 0%;
    }
    .div3 {
      position: absolute;
      top: 0rem;
      left: 22.88%;
    }
    .div4 {
      position: absolute;
      top: 2.188rem;
      left: 22.88%;
    }
    .div5 {
      position: absolute;
      top: 4.375rem;
      left: 22.88%;
    }
    .div6 {
      position: absolute;
      top: 6.563rem;
      left: 22.88%;
    }
    .div7 {
      position: absolute;
      top: 0rem;
      left: 45.75%;
    }
    .div8 {
      position: absolute;
      top: 2.188rem;
      left: 45.75%;
    }
    .div9 {
      position: absolute;
      top: 4.375rem;
      left: 45.75%;
      color: var(--color-lightblue);
    }
    .div10 {
      position: absolute;
      top: 6.563rem;
      left: 45.75%;
    }
    .div11 {
      position: absolute;
      top: 8.75rem;
      left: 45.75%;
    }
    .div12 {
      position: absolute;
      top: 0rem;
      left: 68.63%;
    }
    .div13 {
      position: absolute;
      top: 2.188rem;
      left: 68.63%;
    }
    .div14 {
      position: absolute;
      top: 4.375rem;
      left: 68.63%;
    }
    .div15 {
      position: absolute;
      top: 6.563rem;
      left: 68.63%;
    }
    .div16 {
      position: absolute;
      top: 8.75rem;
      left: 68.63%;
    }
    .div17 {
      position: absolute;
      top: 0rem;
      left: 91.5%;
    }
    .div18 {
      position: absolute;
      top: 2.188rem;
      left: 91.5%;
    }
    .div19 {
      position: absolute;
      top: 4.375rem;
      left: 91.5%;
    }
    .div20 {
      position: absolute;
      top: 6.563rem;
      left: 91.5%;
    }
    .div21 {
      position: absolute;
      top: 8.75rem;
      left: 91.5%;
    }
    .parent {
      position: absolute;
      width: 12.51%;
      top: 0rem;
      right: 0%;
      left: 87.49%;
      height: 10.375rem;
      text-align: left;
      color: var(--color-gainsboro);
      font-family: var(--font-roboto);
    }
    .aboutDrops1 {
      position: absolute;
      top: 0.5rem;
      left: 39.9%;
      font-size: var(--font-size-5xl);
      font-weight: 600;
    }
    .yieldcoinBackedBy {
      position: absolute;
      top: 2.813rem;
      left: 13%;
      font-size: var(--font-size-17xl);
      text-transform: capitalize;
      color: #14183e;
    }
    .groupInner {
      position: absolute;
      top: 22rem;
      left: 0rem;
      border-radius: 30px 0px var(--br-3xs) 0px;
      background-color: var(--color-lightsteelblue-100);
      width: 6.25rem;
      height: 6.25rem;
    }
    .rectangleDiv {
      position: absolute;
      top: 0rem;
      left: 1.25rem;
      box-shadow: 0px 100px 80px rgba(0, 0, 0, 0.02),
        0px 64.8px 46.85px rgba(0, 0, 0, 0.02),
        0px 38.5px 25.48px rgba(0, 0, 0, 0.01), 0px 20px 13px rgba(0, 0, 0, 0.01),
        0px 8.1px 6.52px rgba(0, 0, 0, 0.01), 0px 1.9px 3.15px rgba(0, 0, 0, 0);
      border-radius: 36px;
      background-color: var(--color-white);
      width: 18.563rem;
      height: 26.875rem;
    }
    .collateralAssetsBacking {
      position: absolute;
      top: 13.063rem;
      left: 10%;
      line-height: 1.625rem;
      font-weight: 500;
      display: inline-block;
      width: 90%;
      text-align: left;
    }
    .distributedReserves {
      position: absolute;
      top: 10.438rem;
      left: 3.938rem;
      font-size: var(--font-size-xl);
      font-weight: 600;
      color: var(--color-darkslateblue-200);
    }
    .groupChild1 {
      position: absolute;
      top: 0rem;
      left: 0.063rem;
      border-radius: var(--br-lg) var(--br-8xs) var(--br-3xs) var(--br-8xs);
      background-color: var(--color-lightblue);
      width: 3.125rem;
      height: 3.063rem;
    }
    .trustlessYieldDistributedRe {
      position: absolute;
      top: 0.188rem;
      left: 0rem;
      width: 9.813rem;
      height: 6.125rem;
      object-fit: cover;
    }
    .groupDiv {
      position: absolute;
      top: 3.625rem;
      left: 5.625rem;
      width: 9.813rem;
      height: 6.313rem;
    }
    .rectangleContainer {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 19.813rem;
      height: 29.813rem;
    }
    .groupWrapper {
      position: absolute;
      width: 29.24%;
      top: 0rem;
      right: 33.18%;
      left: 37.57%;
      height: 22.813rem;
    }
    .groupChild2 {
      position: absolute;
      top: 0rem;
      left: 6.625rem;
      border-radius: var(--br-lg) var(--br-8xs) var(--br-3xs) var(--br-8xs);
      background-color: var(--color-lightblue);
      width: 3.125rem;
      height: 3.063rem;
      transform: rotate(180deg);
      transform-origin: 0 0;
    }
    .trustlessYieldDistributedRe1 {
      position: absolute;
      top: 0.25rem;
      left: 0rem;
      width: 6.938rem;
      height: 5.75rem;
      object-fit: cover;
    }
    .rectangleParent1 {
      position: absolute;
      top: 0rem;
      left: 2.25rem;
      width: 6.938rem;
      height: 6rem;
    }
    .firstBuiltTraditionally {
      position: absolute;
      top: 9.438rem;
      left: -2rem;
      line-height: 1.625rem;
      font-weight: 500;
      text-align: left;
      display: inline-block;
      width: 16.313rem;
    }
    .globalCompliance {
      position: absolute;
      top: 6.813rem;
      left: 0rem;
      font-size: var(--font-size-xl);
      font-weight: 600;
      color: var(--color-darkslateblue-200);
    }
    .groupParent {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 12.313rem;
      height: 17.563rem;
    }
    .groupContainer {
      position: absolute;
      width: 19%;
      top: 3.625rem;
      left: 76%;
      height: 17.563rem;
    }
    .groupChild3 {
      position: absolute;
      top: 3.063rem;
      left: 3.125rem;
      border-radius: var(--br-lg) var(--br-8xs) var(--br-3xs) var(--br-8xs);
      background-color: var(--color-lightblue);
      width: 3.125rem;
      height: 3.063rem;
      transform: rotate(-180deg);
      transform-origin: 0 0;
    }
    .rectangleWrapper {
      position: absolute;
      top: 3.813rem;
      left: 6.625rem;
      width: 3.125rem;
      height: 3.063rem;
    }
    .yieldIsDistributed {
      position: absolute;
      top: 10rem;
      left: -5%;
      line-height: 1.625rem;
      font-weight: 500;
      display: inline-block;
      width: 15.313rem;
      text-align: left;
    }
    .trustlessYield {
      position: absolute;
      top: 7.375rem;
      left: 1.125rem;
      font-size: var(--font-size-xl);
      font-weight: 600;
      color: var(--color-darkslateblue-200);
    }
    .trustlessYieldDistributedRe2 {
      position: absolute;
      top: 0rem;
      left: 1.563rem;
      width: 7.75rem;
      height: 6.25rem;
      object-fit: cover;
    }
    .groupParent1 {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 15.313rem;
      height: 18.125rem;
    }
    .groupFrame {
      position: absolute;
      width: 21.7%;
      top: 3.063rem;
      right: 66.3%;
      left: 12%;
      height: 18.125rem;
    }
    .groupChild4 {
      position: absolute;
      top: 0rem;
      left: 0rem;
      border-radius: var(--br-lg) var(--br-8xs) var(--br-3xs) var(--br-8xs);
      background-color: var(--color-lightblue);
      width: 3.125rem;
      height: 3.063rem;
      transform: rotate(90deg);
      transform-origin: 0 0;
    }
    .rectangleFrame {
      position: absolute;
      top: 3rem;
      left: 6.5rem;
      width: 3.063rem;
      height: 3.125rem;
    }
    .underlyingPortfolioTvl {
      position: absolute;
      top: 9.563rem;
      left: 0rem;
      line-height: 1.625rem;
      font-weight: 500;
      display: inline-block;
      width: 11.313rem;
    }
    .multiCurrency {
      position: absolute;
      top: 6.938rem;
      left: 0.875rem;
      font-size: var(--font-size-xl);
      font-weight: 600;
      color: var(--color-darkslateblue-200);
    }
    .trustlessYieldDistributedRe3 {
      position: absolute;
      top: 0rem;
      left: 2.438rem;
      width: 6.5rem;
      height: 6.063rem;
      object-fit: cover;
    }
    .groupParent2 {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 11.313rem;
      height: 17.688rem;
    }
    .frameDiv {
      position: absolute;
      width: 16.7%;
      top: 3.5rem;
      right: 0%;
      left: 83.3%;
      height: 17.688rem;
    }
    .frameContainer {
      position: absolute;
      width: 88.63%;
      top: 8rem;
      left: -1%;
      height: 27.813rem;
      font-size: var(--font-size-base);
    }
    .aboutDrops {
      top: -5%;
      width: 76.438rem;
      position: relative;
      height: 32.813rem;
    }
    .aboutdrops {
      position: absolute;
      height: 25.89%;
      width: 99.93%;
      top: 29.37%;
      right: 0.07%;
      left: 0%;
      background-color: var(--color-white);
      overflow: hidden;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
      padding: 3.75rem 5.437rem;
      box-sizing: border-box;
      text-align: center;
      font-size: var(--font-size-3xl);
      color: var(--color-slategray);
    }
    .contactUsChild {
      position: absolute;
      height: 100%;
      width: 98.16%;
      top: 0%;
      right: 1.84%;
      bottom: 0%;
      left: 0%;
      max-width: 100%;
      overflow: hidden;
      max-height: 100%;
      object-fit: cover;
    }
    .registerInterestToContainer {
      position: absolute;
      height: 28.23%;
      width: 52.13%;
      top: 21.45%;
      left: 25.71%;
      line-height: 145%;
      display: inline-block;
    }
    .telegrambuttonChild {
      position: absolute;
      height: 100%;
      width: 100%;
      top: 0%;
      right: 0%;
      bottom: 0%;
      left: 0%;
      border-radius: 50%;
      background-color: var(--color-lightsteelblue-200);
    }
    .send21 {
      position: absolute;
      height: 61.96%;
      width: 64.47%;
      top: 15.69%;
      right: 13.99%;
      bottom: 22.35%;
      left: 21.54%;
      max-width: 100%;
      overflow: hidden;
      max-height: 100%;
      object-fit: contain;
    }
    .telegrambutton {
      cursor: pointer;
      border: none;
      padding: 0;
      background-color: transparent;
      position: absolute;
      height: 19.01%;
      width: 5.55%;
      top: 2.36%;
      right: 0%;
      bottom: 78.63%;
      left: 94.45%;
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
      width: 17.81%;
      top: 31.76%;
      left: 15.69%;
      color: var(--color-darkslategray);
      text-align: left;
      display: inline-block;
    }
    .frameChild {
      position: absolute;
      top: 0.5rem;
      left: 0.25rem;
      border-radius: 1px;
      width: 1rem;
      height: 0.375rem;
    }
    .frameItem {
      position: absolute;
      top: 0.25rem;
      left: 0.125rem;
      border-radius: 4px;
      border: 1px solid var(--color-darkslategray);
      box-sizing: border-box;
      width: 1.25rem;
      height: 1rem;
    }
    .vectorParent {
      position: absolute;
      height: 40%;
      width: 5.7%;
      top: 30.08%;
      right: 87.16%;
      bottom: 29.92%;
      left: 7.14%;
      overflow: hidden;
    }
    .rectangleParent2 {
      position: absolute;
      height: 100%;
      width: 100%;
      top: 0%;
      right: 0%;
      bottom: 0%;
      left: 0%;
    }
    .groupWrapper1 {
      position: absolute;
      top: 0rem;
      left: 0rem;
      width: 27.413rem;
      height: 4.094rem;
    }
    .getInTouchContainer {
      cursor: pointer;
      border: 2px solid var(--color-white);
      padding: 1.25rem var(--padding-6xl);
      background-color: transparent;
      position: absolute;
      height: 100%;
      width: 30%;
      top: 0%;
      right: 0%;
      bottom: 0%;
      left: 70%;
      box-shadow: var(--shadow-1);
      border-radius: var(--br-base);
      box-sizing: border-box;
      display: flex;
      flex-direction: row;
      align-items: center;
      justify-content: center;
    }
    .frameParent1 {
      position: absolute;
      top: 15.425rem;
      left: 22.725rem;
      width: 41.019rem;
      height: 4.094rem;
    }
    .contactUs {
      top: 5%;
      width: 85.056rem;
      position: relative;
      height: 25.15rem;
    }
    .contactUsWrapper {
      align-self: stretch;
      background-color: var(--color-white);
      height: 28.125rem;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: flex-start;
    }
    .contactus1 {
      position: absolute;
      height: 25.67%;
      width: 100%;
      top: 77.33%;
      right: 0%;
      bottom: 0%;
      left: 0%;
      overflow: hidden;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      text-align: center;
      font-size: var(--font-size-17xl);
    }
    .responsiveLanding {
      width: 100%;
      position: relative;
      background-color: var(--color-gray-100);
      height: 190.75rem;
      overflow: hidden;
      text-align: left;
      font-size: 2.5rem;
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
    @media screen and (max-width: 420px) {
      .getInTouchContainer {
        width: 15%;
        height: 4%;
      }
    }
  </style>
  