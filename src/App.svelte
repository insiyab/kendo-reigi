<script>
  import { fade } from "svelte/transition";

  import pEtiquette from "./Etiquette.svelte";
  import pAbout from "./About.svelte";
  import pVocab from "./Vocabulary.svelte";

  let defaultPage = pAbout; // set default page

  let currPage = defaultPage;
  let newPage = defaultPage;

  function changePage(page) {
    switch (page) {
      case "etiquette":
        newPage = pEtiquette;
        break;
      case "about":
        newPage = pAbout;
        break;
      case "vocabulary":
        newPage = pVocab;
        break;
      default:
        newPage = defaultPage;
    }
  }

  function showPage() {
    currPage = newPage;
  }
</script>

<main>
  <head>
    <link rel="stylesheet" type="text/css" href="style.css" />
  </head>

  <body>
    <h1>Kendo Reigi</h1>

    <div class="button_wrapper">
      <button on:click={() => changePage('about')}>About</button>
      <div class="vertical_divider" />
      <button on:click={() => changePage('etiquette')}>Etiquette</button>
      <div class="vertical_divider" />
      <button on:click={() => changePage('vocabulary')}>Vocabulary</button>
    </div>

    {#if currPage == newPage}
      <div id="page" on:outroend={showPage} transition:fade={{ duration: 200 }}>
        <svelte:component this={currPage} />
      </div>
    {/if}
  </body>
</main>
