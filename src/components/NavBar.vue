<template>
  <div :class="$style.navbar">
      <div :class="$style.frameParent3">       
        <div :class="$style.dropsGroup">
          <div :class="$style.titleGroup">
            <img src ="../../public/logo.png" :class="$style.logoIcon">
            <b :class="$style.drops1">Drops</b>
          </div>
          <div :class="$style.topNav">
            <div :class="$style.hamburgerParent">
              <button :class="$style.hamburger" id="Hamburger" />
              <div :class="$style.links">
                <button :class="$style.home" id="Home" @click="onHomeClick">
                  Home
                </button>
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
</template>
<script setup>
import { createWeb3Modal } from '@web3modal/wagmi/vue'

import { mainnet, sepolia } from 'viem/chains'
import { useReconnect } from '@wagmi/vue'
import { config } from '../config.ts'
import { useRouter, useRoute } from 'vue-router'

const router = useRouter()
        function onHomeClick() {
          router.push("/");
        }
        function onTeamClick() {
            router.push("/team");
        }
        function onInvestorKitClick() {
            //router.push("/investorkit");
        }
        function onPitchDeckClick() {
            router.push("/pitchdeck");
        }
        function onContactUsClick() {
            //router.push("/contactus");
        }
        const projectId= 'dae763966b3bed48f4b4f28663e3fc04'
        const dropsAddress= '0x01172591f469B114d3685C314a992C7F5e8776BB'
        const chains= [mainnet, sepolia]
        const metadata= {
            name: 'Web3Modal',
            description: 'Web3Modal Example',
            url: 'https://web3modal.com',
            icons: ['https://avatars.githubusercontent.com/u/37784886']
        }
        createWeb3Modal({
            wagmiConfig: config,
            projectId: projectId,
            enableAnalytics: true
        });
        const { reconnect } = useReconnect();
        reconnect();
  
</script>
<style module>
  .drops1 {
    position: relative;
    text-transform: uppercase;
  }
  .logoIcon {
    border-radius: 50px;
    position: relative;
    width: 4.438rem;
    height: 4.438rem;
  }
  .titleGroup{
    width: auto;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: flex-start;
    gap: 1rem;
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
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    gap: var(--gap-30xl);
    right:0px;
  }
  .topNav {
    width: 45.438rem;
    position: relative;
    height: 1.625rem;
  }
  .dropsGroup {
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