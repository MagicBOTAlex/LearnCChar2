<script lang="ts">
  import {CChar, CSentence} from "@lib/types/CChar";

  export let cchar: CChar | undefined = undefined;
  export let isActive = true;
  export let showPinyin = true;
</script>

<div class="flex flex-col {isActive ? '' : 'opacity-80'}">
  <div class="text-9xl">{cchar?.char}</div>
  {#if showPinyin}
    <div>{cchar?.pinyin}</div>
  {/if}
</div>
