# assets/

`index.html` expects these files here:

| File | Used by | Width |
|---|---|---|
| `hero.webp` | Hero | 1800 |
| `bedroom.webp` `majlis.webp` `dining.webp` `decor.webp` | Collections + lookbook | 1000 |
| `showroom.webp` | Showroom section | 1600 |
| `armchair.webp` | Lookbook (tall tile) | 900 |
| `swatches.webp` | Lookbook | 1200 |
| `og.jpg` | Social sharing card | 1200×630 |
| `favicon.svg` | Browser tab | ✔ committed |

## The photographs

Eight original photographs were generated for this site. They could **not** be
downloaded into the repository from the build environment: its network policy
blocks the CDN they were delivered on, and that policy must be reported rather
than worked around.

Two ways to add them:

1. **Run the script** from the repository root — it downloads all eight and
   converts them to the sizes above:
   ```bash
   bash assets/fetch-assets.sh
   ```
   The source URLs are temporary. If they have expired the script will say so,
   and the images need regenerating.

2. **Drop the files in by hand.** Save them into this folder using the names in
   the table. WebP is preferred; if you only have JPG or PNG, either convert
   them or rename the references in `index.html`.

## Until then

The page does not look broken. Every image sits in a `.ph` frame that shows a
warm branded tile with a MOBILIA watermark, so missing photos read as a design
choice rather than a fault. The layout reserves the exact final dimensions, so
nothing shifts when the real images land.
