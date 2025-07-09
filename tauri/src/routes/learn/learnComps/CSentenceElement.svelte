<script lang="ts">
  import {CChar, CSentence} from "@lib/types/CChar";
  import CCharCard from "../learnComps/CCharCard.svelte";
  import { onDestroy, onMount, tick } from "svelte";

  export let sentence: CSentence;
  let currentChar = 1;

  let sentenceHolder: HTMLDivElement;
  let sentencePadding: number = 0;

  async function recalculatePadding() {
    sentencePadding = 0;
    await tick();

    let totalWidth = sentenceHolder.clientWidth;
    let singleCharWidth = totalWidth / sentence.chars.length; 

    sentencePadding = singleCharWidth;
  }

  function scrollToNext(){
    
  }

  let interval: number | undefined = undefined;
  onMount(()=>{
    interval = setInterval(()=>{
      currentChar += 1;
      currentChar = currentChar % sentence.chars.length;
      console.log(currentChar)
    }, 1000);

    recalculatePadding();
  });

  onDestroy(()=> {clearInterval(interval)})
</script>

<div class="w-full" style="height: 70%">
    <div bind:this={sentenceHolder} class="grid grid-rows-1 grid-flow-col w-full  items-center overflow-x-scroll">
      <div class="h-32 bg-rose-500" style="width: {sentencePadding}px;"></div>
      {#each sentence.chars as char, i}
        <CCharCard bind:cchar={char} isActive={i == currentChar} showPinyin={i < currentChar}/>
      {/each}
      <div class="h-32 bg-rose-500" style="width: {sentencePadding}px;"></div>
    </div>
  </div>
