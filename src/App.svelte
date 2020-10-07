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
      <button
        id="btn_about"
        onmouseover="this.innerHTML='アバウト';"
        onmouseout="this.innerHTML='About';"
        on:click={() => changePage('about')}>About</button>
      <div class="vertical_divider" />

      <button
        id="btn_etiquette"
        onmouseover="this.innerHTML='礼儀';"
        onmouseout="this.innerHTML='Etiquette';"
        on:click={() => changePage('etiquette')}>Etiquette</button>
      <div class="vertical_divider" />

      <button
        id="btn_vocab"
        onmouseover="this.innerHTML='語彙';"
        onmouseout="this.innerHTML='Vocabulary';"
        on:click={() => changePage('vocabulary')}>Vocabulary</button>
    </div>

    {#if currPage == newPage}
      <div id="page" on:outroend={showPage} transition:fade={{ duration: 200 }}>
        <svelte:component this={currPage} />
      </div>
    {/if}
  </body>
</main>
