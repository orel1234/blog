# YouTube Without Shorts

A small browser extension that removes Shorts from YouTube. You keep using the
real youtube.com, signed in with your own account, with your subscriptions,
history and playlists. It only hides Shorts:

- Shorts shelves on the home page, search results, subscriptions and the watch page
- The "Shorts" button in the sidebar and in the mobile site's bottom bar
- The "Shorts" tab on channel pages and the "Shorts" filter in search
- A Shorts link you open plays as a regular video instead of in the Shorts player

## Installing (Chrome, Edge, Brave)

1. Download this `youtube-no-shorts` folder to your computer.
2. Open `chrome://extensions` (in Edge: `edge://extensions`).
3. Turn on **Developer mode**.
4. Click **Load unpacked** and choose the `youtube-no-shorts` folder.
5. Open or refresh youtube.com.

## Installing (Firefox)

1. Open `about:debugging#/runtime/this-firefox`.
2. Click **Load Temporary Add-on** and choose `manifest.json` in this folder.

Firefox removes temporary add-ons when it restarts.

## When YouTube changes its layout

YouTube renames page elements from time to time. If Shorts start showing up
again, the selectors in `hide-shorts.css` need updating.
