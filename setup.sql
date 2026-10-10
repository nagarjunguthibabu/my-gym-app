create table if not exists public.gym_app_state (
 user_id uuid primary key references auth.users(id) on delete cascade,
 app_data jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.gym_app_state enable row level security;
drop policy if exists "own_select" on public.gym_app_state;
drop policy if exists "own_insert" on public.gym_app_state;
drop policy if exists "own_update" on public.gym_app_state;
drop policy if exists "own_delete" on public.gym_app_state;
create policy "own_select" on public.gym_app_state for select to authenticated using ((select auth.uid())=user_id);
create policy "own_insert" on public.gym_app_state for insert to authenticated with check ((select auth.uid())=user_id);
create policy "own_update" on public.gym_app_state for update to authenticated using ((select auth.uid())=user_id) with check ((select auth.uid())=user_id);
create policy "own_delete" on public.gym_app_state for delete to authenticated using ((select auth.uid())=user_id);
