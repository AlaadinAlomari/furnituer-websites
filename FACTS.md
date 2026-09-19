# Fact sheet — Mobilia Qatar

Compiled 2026-09-18 for the website rebuild. Every line on the site must trace to a row here.

| Field | Value | Source |
|---|---|---|
| Display name | Mobilia Qatar (Instagram profile name: "Mobilia Qatar / Mobilia Warehouse") | Google Maps place URL; [Instagram](https://www.instagram.com/mobilia_qatar/) |
| Category | Furniture store — furniture & decoration, residential and commercial | QatarSale / Qatar Living listings (via search) |
| Established | 2015 | QatarSale + Qatar Living listings (via search) — "established in 2015 out of the growing demand for high-quality furniture at an affordable price point" |
| Positioning | An outlet/warehouse where customers can walk through a variety of living styles for both residential and commercial furnishing | QatarSale listing (via search) |
| Address | Zone 55, Al Aziziya, Al Aziziya Road — beside Aziziyah Pharmacy. Al Rayyan municipality, Doha area, Qatar | Directory listings (via search); owner-supplied "العزيزية، الدوحة، قطر" |
| Coordinates | 25.2511153, 51.4509846 | Google Maps place URL (search hint only) |
| Phone (mobile / WhatsApp) | +974 6630 5397 | Owner-supplied; corroborated by directory listings |
| Phone (landline) | +974 4029 8546 | Directory listings (via search) — **needs owner confirmation before publishing** |
| Email | mobilia.furnitureqa@gmail.com | Owner-supplied |
| Services | Ready-made furniture and custom-made pieces to order (تفصيل حسب الطلب); delivery and installation | Directory listings (via search); owner-supplied brief |
| Product range | Bedrooms, majlis seating, tables & chairs, interior decor | Owner-supplied brief; listings |
| Instagram | https://www.instagram.com/mobilia_qatar/ | Owner-supplied |
| Facebook | https://www.facebook.com/mobilia.qatar/ | Owner-supplied |
| Snapchat | https://www.snapchat.com/@mobilia.qatar | Owner-supplied |
| X | https://x.com/Mobiliaqatar | Owner-supplied |
| Official website | None found | — |
| Opening hours | Sat–Thu 10:00–21:00 · Fri 16:00–21:00 | **Owner-confirmed** (supersedes the conflicting directory listings) |
| Rating / review count | **Unobtainable.** No verified rating found; the Yandex listing shows no reviews. | — |
| Tagline | **"Quality for less. Everyday."** | Owner-supplied logo artwork (first-party) |
| Logo | Script wordmark "Mobilia" + tagline lockup | Owner-supplied (`mobilia face logo.webp`) |
| Brand colours | White / warm off-white / charcoal with a pink accent (#f04a7c) | Owner-supplied brief |

## Conflicts and gaps

- **Opening hours — resolved.** Two directory listings disagreed (Sat–Thu 12:00–20:00 / Fri 17:00–21:00 vs 10:00–21:00 daily), so nothing was published at first. The owner has since confirmed **Sat–Thu 10:00–21:00, Fri 16:00–21:00**, which is now on the page, in the JSON-LD `openingHoursSpecification`, and behind a live "Open now / Closed now" badge computed in Qatar time (UTC+3).
- **No rating is published.** Per the research rules an unverifiable rating is omitted rather than invented. The trust strip uses verified facts instead (established 2015, Al Aziziya location, made-to-order service, delivery & installation).
- **The landline needs confirmation.** +974 4029 8546 appears in directory listings but was not supplied by the owner.
- **A "MOBILIA FURNITURE" storefront exists on noon.com.** It could not be confirmed as the same business, so it is not linked from the site.
- **Reviews are real and owner-supplied.** Five 5-star Google reviews were provided by the owner as screenshots of the live listing: kokilan prasanth, Stiti Mahdi, Mohamed Salah, Ahmad Ahmad farhat and Issmael Aldar, all about a year old. Four were written in Arabic and are shown in English translation, each labelled "translated from Arabic" on the card, the way Google itself presents them. Two (Ahmad, Issmael) were truncated by Google's "More" link in the source screenshots; their full text has not been seen, and they are not among the three displayed.

  Three are shown on the page — kokilan prasanth, Mohamed Salah and Stiti Mahdi — chosen because they are complete rather than truncated and cover different ground: prices and creativity, a fault put right in two days, and quality plus after-warranty support. All five stay in the `REVIEWS` array; `REVIEWS_SHOWN` controls how many render.

  Review dates are not displayed. All five are about a year old and the timestamps made the page read as stale. Nothing false results — no date is claimed at all — and the link to the live listing shows them in full.
- **No `aggregateRating` in the JSON-LD.** Google's structured-data policy treats ratings a business collects and marks up about itself as self-serving, and they are ignored or penalised. If an overall rating is ever shown on the page it stays out of the markup.

## Explicitly NOT on the site (previously invented, now removed)

The first draft (Arabic, now removed) carried placeholder statistics — 850 happy clients, 120 completed projects, 40 collections. None of these were verifiable. They have been removed entirely and replaced with facts from the table above.

The site is English-only. The Arabic page was removed at the owner's request.

## Imagery

The eight photographs in `assets/` and the logo were supplied by the owner via
the repository. The photographs are generated interior imagery, not documentary
photographs of the Al Aziziya showroom, so no caption or alt text claims to
show the actual premises. Replacing them with real showroom photography would
strengthen the page further and needs no code change — same filenames.
