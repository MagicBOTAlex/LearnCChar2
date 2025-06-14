<script lang="ts">
    import DeprivedDevsLogo from "@images/brands/DeprivedLogo.svg?raw";

    import { openUrl } from '@tauri-apps/plugin-opener';
</script>

<ul class="menu bg-base-200 text-base-content min-h-full w-80 p-0">
    <!-- Sidebar content here -->
    <li><a href="/setup">Setup</a></li>
    <li><a href="/tracking">Tracking</a></li>
    <li><a href="/Settings">Settings</a></li>

    <div class="w-full pb-6 mt-auto">
        <div class="flex place-items-center w-full justify-center">
            <button on:click={()=>{openUrl("https://Deprived.dev/")}} class="w-20 h-20 overflow-hidden cursor-pointer">
                <div
                    class="w-full h-full object-contain fill-base-content"
                    aria-label="Deprived Devs logo"
                    role="img"
                    >{@html DeprivedDevsLogo}</div>
            </button>
            
            
        </div>

        <div class="w-full text-center text-base-300">Designed by BOTAlex</div>
    </div>
</ul>
