<script lang="ts">
  import {CChar, CSentence, CQuestion} from "@lib/types/CChar";
  import CSentenceElement from "../learnComps/CSentenceElement.svelte";

  let sentence: CSentence = new CSentence([new CChar("正", "Zhen"), new CChar("气", "Qi"), new CChar("合", "Hui") ]);
  let quesiton: CQuestion = new CQuestion(sentence, [new CChar("正", "Zhen"), new CChar("气", "Qi"), new CChar("合", "Hui") ]);
</script>

<div class=" flex flex-col items-center h-full w-full">
  <div>{sentence.chars.map(x=>x.char).join("")}</div>
  <div class="w-full flex items-center justify-center" style="height: 70%">
    <CSentenceElement bind:sentence/>
  </div>
  <div class="flex grow w-full border-t border-t-base-200">
    <div class="grid grid-cols-2 items-center w-full">
      {#each { length: 4 } as _, i}
        <div class="flex justify-center items-center">{i +1}</div>
      {/each}
    </div>
  </div>
</div>
