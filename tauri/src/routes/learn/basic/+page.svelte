<script lang="ts">
  import {CChar, CSentence} from "@lib/types/CChar";
  import CCharCard from "../learnComps/CCharCard.svelte";

  let sentence: CSentence = new CSentence([new CChar("正"), new CChar("气", "Qi"), new CChar("合") ]);
  let currentChar = 1;
</script>

<div class=" flex flex-col items-center h-full w-full">
  <div>{sentence.chars.map(x=>x.char).join("")}</div>
  <div class="flex w-full justify-center items-center" style="height: 70%">
    {#each sentence.chars as char, i}
      <CCharCard bind:cchar={char} isActive={i == currentChar} showPinyin={i < currentChar}/>
    {/each}
  </div>
  <div class="flex grow w-full border-t border-t-base-200">
    <div class="grid grid-cols-2 items-center w-full">
      {#each { length: 4 } as _, i}
        <div class="flex justify-center items-center">{i +1}</div>
      {/each}
    </div>
  </div>
</div>
