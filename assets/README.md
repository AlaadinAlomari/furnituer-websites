# assets/

## Photography

| File | Used by | Size |
|---|---|---|
| `hero.webp` | Hero | 1800×1018 |
| `bedroom.webp` `majlis.webp` `dining.webp` `decor.webp` | Collections + lookbook | 1000×747 |
| `showroom.webp` | Showroom section | 1600×1062 |
| `armchair.webp` | Lookbook (tall tile) | 900×1355 |
| `swatches.webp` | Lookbook | 1200×797 |
| `og.jpg` | Social sharing card | 1200×630 |

Supplied by the owner, then resized and re-encoded to WebP (quality 76) for the
web. To swap any of them, drop in a replacement **with the same filename** —
no code change needed. Keep roughly the same aspect ratio so the crop holds.

## Brand

| File | Used by |
|---|---|
| `logo-mark.png` | Header — the script wordmark alone, so it stays legible at 30px |
| `logo.png` | Footer — the full lockup including "Quality for less. Everyday." |
| `icon-512.png`, `apple-touch-icon.png` | Browser tab and iOS home screen, built from the logo's M |
| `favicon.svg` | Fallback tab icon |

Both logo files are transparent PNGs, keyed from the supplied artwork, so they
sit correctly on white and on the warm footer background.

## Illustrations

`ill-*.svg` are line-art fallbacks — one per image slot. They sit behind each
photo in its `.ph` frame, so if a photo file is ever missing or slow, the frame
shows a branded illustration instead of a broken icon. They cost about 1.4 KB
each and are worth keeping.
