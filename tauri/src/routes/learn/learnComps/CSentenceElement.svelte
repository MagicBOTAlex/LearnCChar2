<script lang="ts">
  import {CChar, CSentence} from "@lib/types/CChar";
  import CCharCard from "../learnComps/CCharCard.svelte";
  import { onDestroy, onMount, tick } from "svelte";

  export let sentence: CSentence;
  let currentChar = 1;

  let charSize = -1;

  let sentenceHolder: HTMLDivElement;
  let sentencePadding: number = 0;
  let screenWidth: number = 0;

  async function recalculatePadding() {
    sentencePadding = 0;
    await tick();

    let totalWidth = sentenceHolder.scrollWidth;
    charSize = totalWidth / sentence.chars.length; 

    sentencePadding = ( totalWidth - charSize ) / 2;
  }

  // Idk what i did, but it works. so imma not question it
  function scrollToIndex(index: number) {
    const centerOffset = screenWidth / 2  ;
    const scrollTarget = index * charSize - centerOffset;
    sentenceHolder.scrollTo({
      left: scrollTarget,
      behavior: "smooth",
    });
  }

  let interval: number | undefined = undefined;
  onMount(()=>{
    interval = setInterval(()=>{
      currentChar += 1;
      currentChar = currentChar % sentence.chars.length;
      scrollToIndex(currentChar);
      console.log(currentChar)
    }, 1000);

    recalculatePadding();
  });

  onDestroy(()=> {clearInterval(interval)})
  let testClass = "bg-white";
</script>

<svelte:window on:resize={recalculatePadding}/>

<div bind:this={sentenceHolder} class="grid grid-rows-1 grid-flow-col w-full scrollbar-none items-center overflow-x-scroll">
  <div class="h-32 {testClass}" style="width: {sentencePadding}px;"></div>
  {#each sentence.chars as char, i}
    <CCharCard bind:cchar={char} isActive={i == currentChar} showPinyin={i < currentChar}/>
  {/each}
  <div class="h-32 {testClass}" style="width: {sentencePadding}px;"></div>
</div>

