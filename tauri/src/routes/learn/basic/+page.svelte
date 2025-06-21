<script>

</script>

<div class="flex flex-col justify-around items-center h-full w-full">
  <div class="flex w-full h-full justify-center items-center">Hej</div>
  <div class="grid grid-cols-2 items-center w-full h-full">
    {#each { length: 4 } as _, i}
      <div class="flex justify-center items-center">{i +1}</div>
    {/each}
  </div>
</div>
