MY GYM PLAN PREMIUM V5.1

This version keeps every V5 feature and only improves numeric input.

Preserved
- Home, Train, Progress, Records and Profile tabs.
- Supabase login and cloud sync.
- Existing routines, history, body weights, PRs, achievements and settings.
- Previous-set comparison, workout summary and premium rest timer.

Improved
- Workout weight fields request the decimal number keypad.
- Workout rep fields request the integer number keypad.
- Body-weight input requests the decimal number keypad.
- Custom rest input and routine set-count input request the integer number keypad.
- Existing values are selected when a numeric field receives focus, making replacement faster.
- No database or data-model changes.

Install
1. Replace index.html, manifest.webmanifest, sw.js, icon-192.png and icon-512.png in GitHub.
2. Keep the existing Supabase project. Do not rerun setup.sql if sync already works.
3. Open the deployed URL once with ?v=51. If the installed app remains cached, remove and add it again.
