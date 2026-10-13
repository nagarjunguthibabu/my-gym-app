MY GYM PLAN PREMIUM V6

Built directly from the supplied V5.1 source.

DATA SAFETY
- Keeps local storage key gymCloudV4.
- Keeps session key gymSessionV4.
- Keeps Supabase table gym_app_state and the same JSON data model.
- Existing routines, workouts, weights, PRs and settings load after sign-in.
- No new SQL migration is required when V5.1 sync already works.

NEW IN V6
- Exercise catalogue tab inspired by the clean OpenGym browsing experience.
- 12 illustrated exercises with muscle group, equipment, instructions and common mistakes.
- Search and muscle filters.
- Last performance and PR shown on exercise detail.
- Add catalogue exercise to an existing or new routine.
- Open an exercise's progress chart from the catalogue.
- iPhone-safe backup export via Share Sheet with download, clipboard and manual-copy fallbacks.
- Updated cache version so GitHub Pages and the installed app fetch V6.

DEPLOY
1. Keep the current Supabase project and do not change the table.
2. Replace index.html, manifest.webmanifest, sw.js, icon-192.png and icon-512.png in GitHub.
3. Upload the entire exercises folder.
4. Commit all files together.
5. Open the deployed URL once with ?v=60.
6. Verify the Exercises tab, existing routines and existing workouts.
7. On iPhone, remove and re-add the Home Screen app only if the old cache remains.
