# Kendo Reigi

Kendo Reigi is currently live at [kendo-reigi.surge.sh](http://kendo-reigi.surge.sh/).

### Backstory

My name is Insiya Bambot, and I’m a senior pursuing a B.S. in Computer Science at UCLA. In addition to my studies, I'm serving as President of the UCLA Kendo Club for the 2020-21 school year. You can learn more about me here.

Thanks to a certain pandemic, my education and extracurricular activities have moved online, and it's been a while since I and many others have practiced together in person. So I imagine it's difficult for those who are just beginning their kendo journey to pick up all the language and etiquette that they would normally be exposed to in the dojo. The Kendo Reigi site is my effort to introduce kendo's cultural nuances to these new kendoka while they learn to wield their shinai from home.

However, this isn't purely a kendo endeavor. In creating this project, I leveled up in using Svelte and CSS, and I learned  I how to embed media into my sites using vanilla HTML. I also became friendly with GitHub actions, using it to re-deploy the Kendo Reigi site every time I commit to master.

### Deployment

If you'd like to deploy to deploy your own version of Kendo Reigi, clone the repo and use [surge](https://surge.sh/) to publish it:

```bash
npm install -g surge
git clone https://github.com/insiyab/kendo-reigi.git
cd kendo-reigi
npm install
npm run build
surge public another-kendo-reigi.surge.sh
```

You can also use [Vercel](https://vercel.com) instead of surge:

```bash
npm install -g vercel
git clone https://github.com/insiyab/kendo-reigi.git
cd kendo-reigi
npm install
npm run build
cd public
vercel deploy --name another-kendo-reigi
```

### Developer Mode

```bash
npm install -g surge
git clone https://github.com/insiyab/kendo-reigi.git
cd kendo-reigi
npm install
npm run dev
```

Open up [localhost:5000](http://localhost:5000/) in your browser to see the site. 