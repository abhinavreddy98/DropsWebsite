<template>
    <div :class="$style.footer">
        <div :class="$style.address">© DROPS Pvt Ltd<br>DIFC, Dubai</div>
        <div :class="$style.items">
            <a :class="$style.icon"><img src="../../public/x.svg" :class="$style.image"></a>
            <a href="https://www.linkedin.com/company/dropsyieldcoin/" :class="$style.icon"><img src="../../public/linkedin.png" :class="$style.image"></a>
            <a href="https://t.me/+EApzIGbgPAJmNTFk" :class="$style.icon"><img src="../../public/telegram.png" :class="$style.image"></a>
        </div>
    </div>
</template>
<script setup>
  
    import { useRouter, useRoute } from 'vue-router'

    const router = useRouter()
    function onTelegramClick() {
        router.push("/");
    }
    function onTwitterClick() {
        router.push("/team");
    }
    function onLinkedInClick() {
        //router.push("/investorkit");
    }     
</script>
<style module>
.footer {
    position: fixed;
    bottom: 0;
    width: 100%;
    height: 8%;
    background-color: #000;
    display: flex;
    align-items: center;
    justify-content: center;
}
.items {
    display: flex;
    flex-direction: row;
    align-items: right;
    justify-content: space-evenly;
    gap: 1rem;
    right: 5%;
    position: absolute;
    width: 20%;
}
.icon{
    position: relative;
    width: 8%;
    
    object-fit: contain;
}
.image{
    position: relative;
    width: 100%;
    
    object-fit: contain;
}
.address {
    right: 35%;
    position: relative;
    width: 20%;
    font-size: large;
}
</style>