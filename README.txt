MY GYM PLAN CLOUD SETUP

1. In Supabase, open SQL Editor and run setup.sql.
2. In Authentication > URL Configuration:
   - Set Site URL to your GitHub Pages URL.
   - Add the same URL to Redirect URLs.
3. In Authentication > Providers > Email:
   - Keep Email enabled.
   - For easiest initial testing, you may disable Confirm email.
   - For safer production use, enable Confirm email.
4. Upload index.html, manifest.webmanifest, sw.js, icon-192.png and icon-512.png to the root of GitHub Pages.
5. Do not upload setup.sql or README.txt to the website unless you want them publicly visible.
6. Open the app, create an account and sign in on phone and laptop with the same email.
7. Use Settings > Sync now after making changes on another device.

SECURITY
- The app contains only the public anon key.
- Never place the service_role key, database password or JWT secret in the app.
- Row Level Security in setup.sql ensures a signed-in user can only access their own record.
