<template>
  <div :class="$style.team">
    <b :class="$style.heading">Team</b>
    <div :class="$style.frame">
      <div :class="$style.vectorParent">
        <img :class="$style.frameChild" alt="" src="/rectangle-178.svg" />
        <img :class="$style.frameItem" alt="" src="/rectangle-184@2x.png" />
        <div :class="$style.rectangleParent">
          <div :class="$style.frameInner" />
          <b :class="$style.antonGolub">Julien Beaujolin</b>
          <b :class="$style.designation">CEO</b>
          <a href="https://www.linkedin.com/in/julien-beaujolin/">
            <img :class="$style.linkedin" alt="" src="/linkedin.png"  />
          </a>
          <img :class="$style.telegram" alt="" src="/telegram.png" href="" />
        </div>
      </div>
      <div :class="$style.vectorParent">
        <div :class="$style.rectangleDiv" />
        <img :class="$style.frameChild" alt="" src="/rectangle-178.svg" />
        <img :class="$style.frameItem" alt="" src="/rectangle-185@2x.png" />
        <div :class="$style.rectangleParent">
          <div :class="$style.frameInner" />
          <b :class="$style.antonGolub">Michael Rey</b>
          <b :class="$style.designation">COO</b>
          <a href="https://www.linkedin.com/in/reymi/">
            <img :class="$style.linkedin" alt="" src="/linkedin.png"  />
          </a>
          <img :class="$style.telegram" alt="" src="/telegram.png" href="" />
        </div>
      </div>
      <div :class="$style.vectorParent">
        <div :class="$style.rectangleDiv" />
        <img :class="$style.frameChild" alt="" src="/rectangle-178.svg" />
        <img :class="$style.frameItem" alt="" src="/rectangle-186@2x.png" />
        <div :class="$style.rectangleParent">
          <div :class="$style.frameInner" />
          <b :class="$style.antonGolub">Fang Zhang</b>
          <b :class="$style.designation">Partnerships</b>
          <a href="https://www.linkedin.com/in/fang-zhang-49a40512/">
            <img :class="$style.linkedin" alt="" src="/linkedin.png"  />
          </a>
          <img :class="$style.telegram" alt="" src="/telegram.png" href="" />
        </div>
      </div>
    </div>
    <div :class="$style.frame">
      <div :class="$style.vectorParent">
        <img :class="$style.frameChild" alt="" src="/rectangle-178.svg" />
        <img :class="$style.frameItem" alt="" src="/rectangle-187@2x.png" />
        <div :class="$style.rectangleParent">
          <div :class="$style.frameInner" />
          <b :class="$style.antonGolub">Anton Golub</b>
          <b :class="$style.designation">Marketing</b>
          <a href="https://www.linkedin.com/in/antongolub/">
            <img :class="$style.linkedin" alt="" src="/linkedin.png"  />
          </a>
          <img :class="$style.telegram" alt="" src="/telegram.png" href="" />
        </div>
      </div>
      <div :class="$style.vectorParent">
        <div :class="$style.rectangleDiv" />
        <img :class="$style.frameChild" alt="" src="/rectangle-178.svg" />
        <img :class="$style.frameItem" alt="" src="/rectangle-188@2x.png" />
        <div :class="$style.rectangleParent">
          <div :class="$style.frameInner" />
          <b :class="$style.antonGolub">Abhinav Reddy</b>
          <b :class="$style.designation">Technology</b>
          <a href="https://www.linkedin.com/in/abhinavred/">
            <img :class="$style.linkedin" alt="" src="/linkedin.png"  />
          </a>
          <img :class="$style.telegram" alt="" src="/telegram.png" href="" />
        </div>
      </div>
      <div :class="$style.vectorParent">
        <div :class="$style.rectangleDiv" />
        <img :class="$style.frameChild" alt="" src="/rectangle-178.svg" />
        <img :class="$style.frameItem" alt="" src="/rectangle-189@2x.png" />
        <div :class="$style.rectangleParent">
          <div :class="$style.frameInner" />
          <b :class="$style.antonGolub">Achuth Krishna</b>
          <b :class="$style.designation">Finance</b>
          <a href="https://www.linkedin.com/in/achuth-k/">
            <img :class="$style.linkedin" alt="" src="/linkedin.png"  />
          </a>
          <img :class="$style.telegram" alt="" src="/telegram.png" href="" />
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  import { defineComponent } from "vue";

  export default defineComponent({
    name: "TeamComp",
  });
</script>
<style module>
  .heading {

    position: undefined;
    font-size: 200%;
    letter-spacing: -0.04em;
    line-height: 89px;
    color: var(--color-white);
    text-align: left;
    height: 89px;
  }
  .frameChild {
    position: absolute;
    top: 0px;
    left: 0px;
    border-radius: var(--br-11xl);
    width: 238px;
    height: 326px;
  }
  .frameItem {
    position: absolute;
    top: 10%;
    left: 15%;
    border-radius: var(--br-181xl);
    width: 180px;
    height: 180px;
    object-fit: cover;
    filter: grayscale(100%)
  }
  .frameInner {
    position: absolute;
    top: 0px;
    left: 0px;
    border-radius: var(--br-11xl);
    background-color: var(--color-gainsboro-100);
    width: 100%;
    height: 100%;
  }
  .julienBeaujolin {
    position: absolute;
    width: 93.22%;
    top: 8px;
    left: 3.81%;
    text-transform: capitalize;
    display: inline-block;
  }
  .rectangleParent {
    position: absolute;
    top: 65%;
    width: 100%;
    height: 35%;
  }
  .vectorParent {
    width: 238px;
    position: relative;
    height: 326px;
  }
  .rectangleDiv {
    position: absolute;
    top: 0px;
    left: 0px;
    border-radius: var(--br-11xl);
    background-color: var(--color-gainsboro-100);
    width: 238px;
    height: 326px;
  }
  .rectangleContainer {
    position: absolute;
    top: 275px;
    left: 0px;
    width: 236px;
    height: 51px;
  }
  .rectangleParent1 {
    position: absolute;
    top: 275px;
    left: 1px;
    width: 236px;
    height: 51px;
  }
  .frame {
    width: 1070px;
    overflow: hidden;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: space-between;
  }
  .antonGolub {
    position: absolute;
    width: 93.22%;
    top: 5%;
    left: 3.81%;
    text-transform: capitalize;
    display: inline-block;
    color: #052556;
  }
  .designation {
    position: absolute;
    width: 93.22%;
    top: 30%;
    left: 5%;
    text-transform: capitalize;
    display: inline-block;
    color: #052556;
  }
  .linkedin {
    position: absolute;
    bottom: 10%;
    left: 35%;
    width: 31.75px;
    height: 27px;
    object-fit: cover;
  }
  .telegram {
    position: absolute;
    bottom: 8%;
    right: 35%;
    width:30px;
    height: 30px;
    object-fit: cover;
  }
  .team {
    width: 75%;
    height: 50%;
    margin: auto;
    background-color: var(--color-gray-100);
    max-width: 100%;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: var(--padding-12xl) 164px 232px 160px;
    box-sizing: border-box;
    gap: 93px;
    text-align: center;
    font-size: var(--font-size-5xl);
    color: var(--color-gray-200);
    font-family: var(--font-poppins);
  }
</style>
