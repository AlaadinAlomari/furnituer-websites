# assets/

## How images work on this page

Every photo slot is a `.ph` frame. The frame carries a hand-drawn SVG
illustration as its background; the `<img>` sits on top. So:

- **No photo file present** → the illustration shows. The page looks designed,
  not broken.
- **Photo file present** → it covers the illustration completely. Nothing else
  needs changing.

The frame reserves the final dimensions either way, so nothing shifts on the
page when real photos arrive.

## Drop-in photo filenames

| File | Used by | Width | Aspect |
|---|---|---|---|
| `hero.webp` | Hero | 1800 | 4:3 |
| `bedroom.webp` `majlis.webp` `dining.webp` `decor.webp` | Collections + lookbook | 1000 | 4:3 |
| `showroom.webp` | Showroom section | 1600 | 3:2 |
| `armchair.webp` | Lookbook (tall tile) | 900 | 2:3 |
| `swatches.webp` | Lookbook | 1200 | 3:2 |
| `og.jpg` | Social sharing card | 1200×630 | — |

Save files with exactly these names and they appear automatically. WebP is
preferred; for JPG or PNG, either convert or update the `src` values in
`index.html`.

## Committed here

- `ill-*.svg` — the eight illustrations (about 1.4 KB each)
- `favicon.svg`
- `fetch-assets.sh` — see below

## Why there are no photographs yet

Eight original photographs were generated for this site. They could not be
downloaded into the repository: **the build environment's network policy blocks
every external image host** — the CDN the photos were delivered on, and also
Fal, Replicate, OpenAI, Unsplash, Pexels, Pixabay and Wikimedia. This was
tested directly; `fetch-assets.sh` returns HTTP 403 from the egress proxy, not
an expired-URL error. A policy block has to be reported rather than worked
around, so no relay was built.

Photographs can therefore only enter this repository from your side:

1. Download the eight generated images and save them into this folder with the
   names above, or
2. Send them to Claude in the conversation — attachments do reach the working
   environment, and they can be placed and committed from there, or
3. Use your own showroom photography, which would be better than generated
   imagery anyway.

`fetch-assets.sh` is kept for use **outside** this environment: run it from a
normal machine with internet access and it will download and convert all eight,
as long as the temporary source URLs are still alive.
