# assets/

`index.html` and `index-ar.html` expect these files here:

| File | Used by | Size |
|---|---|---|
| `hero.webp` | Hero | 1800w |
| `bedroom.webp` `majlis.webp` `dining.webp` `decor.webp` | Collections + lookbook | 1000w |
| `showroom.webp` | Showroom section | 1600w |
| `armchair.webp` | Lookbook (tall tile) | 900w |
| `swatches.webp` | Lookbook | 1200w |
| `og.jpg` | Social sharing card | 1200×630 |
| `favicon.svg` | Browser tab | ✔ committed |

Eight original photographs were generated for this site. They could not be
downloaded into the repository from the build environment, because its network
policy blocks the image CDN they were delivered on.

**To add them, run once, from the repository root:**

```bash
bash assets/fetch-assets.sh
```

That downloads all eight and converts them to the sizes above. The source URLs
are temporary, so run it soon — if they have expired, regenerate the images and
update the URLs at the top of the script.

Until the files are present the pages still lay out correctly; each image slot
renders as a warm neutral block.
