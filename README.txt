MY GYM PLAN PREMIUM V4

Changes
- Premium redesign in light and dark mode.
- Improved dashboard, cards, inputs, buttons and bottom navigation.
- Workout Finish button stays visible in a sticky header.
- Rest timer moved from the top-right to a compact bottom control.
- Rest timer includes +30 seconds and Skip.
- Rest timer stops automatically when a workout finishes or the user signs out.
- Extra workout-sheet spacing stops the timer covering set inputs.
- Existing Supabase login, sync, routines, history, weight tracking, charts and PR logic remain intact.

Install
1. Keep the current Supabase project and data. The schema has not changed.
2. Replace index.html, manifest.webmanifest, sw.js, icon-192.png and icon-512.png in GitHub.
3. setup.sql does not need to be rerun if cloud sync already works.
4. Open the published URL with ?v=4 once. If the Home Screen copy stays old, remove it and add it again.
