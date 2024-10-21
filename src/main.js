import { createApp } from "vue";
import { createRouter, createWebHistory } from "vue-router";
import App from "./App.vue";

import ResponsiveLanding from "./pages/ResponsiveLanding.vue";
import MintPage from "./pages/MintPage.vue";
import Team from "./pages/Team.vue";
import PitchDeck from "./pages/PitchDeck.vue";
import "./global.css";

import { WagmiPlugin } from '@wagmi/vue'
import { config } from './config.ts'
import { QueryClient, VueQueryPlugin } from '@tanstack/vue-query'

const routes = [
  {
    path: "/",
    name: "ResponsiveLanding",
    component: ResponsiveLanding,
  },
  {
    path: "/mintpage",
    name: "MintPage",
    component: MintPage,
  },
  {
    path: "/team",
    name: "Team",
    component: Team,
  },
  {
    path: "/pitchdeck",
    name: "PitchDeck",
    component: PitchDeck,
  },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

router.beforeEach((toRoute, _, next) => {
  const metaTitle = toRoute?.meta?.title;
  const metaDesc = toRoute?.meta?.description;

  window.document.title = metaTitle || "DROPS - Yield Coin";
  if (metaDesc) {
    addMetaTag(metaDesc);
  }
  next();
});

const addMetaTag = (value) => {
  const element = document.querySelector(`meta[name='description']`);
  if (element) {
    element.setAttribute("content", value);
  }
};
  
const queryClient = new QueryClient()

createApp(App)
  .use(router)
  .use(WagmiPlugin, { config })
  .use(VueQueryPlugin, { queryClient })
  .mount('#app')  

export default router;
