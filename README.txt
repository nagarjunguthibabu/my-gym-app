GYM PREMIUM V5.1 EXPORT FIX

The existing export fails because URL.createObjectURL is unavailable in the affected browser/PWA environment.

APPLY THE FIX
1. Upload export-fix.js to the same GitHub repository folder as index.html.
2. Open index.html for editing.
3. Immediately before </body>, add:
   <script src="export-fix.js?v=511"></script>
4. Commit both changes.
5. Open the deployed app once with ?v=511.
6. If the Home Screen app stays cached, remove it and add it again from Safari.

TEST
1. Open Profile.
2. Tap Export.
3. On iPhone, the Share Sheet should open.
4. Choose Save to Files.
5. Confirm a file named gym-plan-backup-YYYY-MM-DD.json exists.

The fix uses this fallback order:
- Native iPhone Share Sheet and Save to Files
- Data URL download for desktop browsers
- Clipboard copy
- Manual copy prompt

The fix does not change routines, workouts, charts, login, Supabase sync, or the data model.
