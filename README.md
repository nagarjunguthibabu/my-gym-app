# Gym Premium V5.1

A complete GitHub Pages package, built as an upgrade to the existing cloud gym app.

## V5.1 highlights
- Compact bottom rest timer with Pause, Resume, +30 and Stop
- Timer no longer covers the Finish button
- Timer stops when a workout is finished or the user signs out
- Accurate timer recovery after returning from the background
- Sticky workout header and safe-area spacing
- Light theme by default, optional dark theme
- Routine templates, set logging, previous/best weight, PRs, charts and history
- Existing `gymCloudV4` and `gymSessionV4` browser data are reused
- Existing Supabase `gym_app_state` table is reused

## Deploy
Upload `index.html`, `manifest.webmanifest`, `sw.js` and `icon.svg` to the root of the GitHub Pages repository. `setup.sql` is included for a new Supabase project only. Existing installations do not need to rerun it.

If an older version remains cached, remove the home-screen shortcut, reload the GitHub Pages site, then add it again.
