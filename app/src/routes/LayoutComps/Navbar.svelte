<script lang="ts">
    import GithubMark from "@images/brands/GithubMark.svelte";
    import DeprivedDevsLogo from "@images/brands/DeprivedLogo.svg?raw";

    import { afterNavigate } from '$app/navigation';
    import { onMount } from "svelte";
    let currentPath = '/';

    onMount(async ()=>{
        currentPath = window.location.pathname;
    });

    afterNavigate(({ to }) => {
        currentPath = to!.url.pathname;
    });
</script>

<!-- svelte-ignore a11y_consider_explicit_label -->
<!-- svelte-ignore a11y_missing_attribute -->
<div {...$$restProps } class="bg-base-100">
    <div class="flex flex-col w-full">
        <div class="flex items-center p-2 shadow-lg">
            <div class="w-10 h-10 mr-3">
              <div
                  class="w-full h-full object-contain fill-base-content"
                  aria-label="Deprived Devs logo"
                  role="img"
                  >{@html DeprivedDevsLogo}</div>
            </div>
            <a class="p-0 text-xl">
              <div class="font-bold">
                  <div>Learn CChar 2</div>
              </div>
            </a>
            <div class="ml-auto p-2">
                <a href="https://github.com/MagicBOTAlex/HapticsExtended" target="_blank">
                    <div class="w-6 h-6object-contain fill-base-content">
                        <GithubMark/>
                    </div>
                </a>
            </div>

            <div class="flex-none ">
              <label for="SideDrawer" class="btn btn-square btn-ghost">
              <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" class="inline-block h-5 w-5 stroke-current"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16"></path> </svg>
              </label>
            </div>
        </div>
    </div>
</div>
