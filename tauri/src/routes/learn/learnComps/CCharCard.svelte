<script lang="ts">
  import {CChar, CSentence} from "@lib/types/CChar";

  export let cchar: CChar | undefined = undefined;
  export let isActive = true;
  export let showPinyin = true;
</script>

<div class="flex flex-col {isActive ? '' : 'opacity-50'}">
  <div class="text-9xl">{cchar?.char}</div>
  <span>
    {#if showPinyin}
    {cchar?.pinyin}
    {:else}
      <br>
    {/if}
  </span>
</div>
