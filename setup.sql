create table if not exists public.gym_app_state (
  user_id uuid primary key references auth.users(id) on delete cascade,
  app_data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.gym_app_state enable row level security;

drop policy if exists "Users can read own gym data" on public.gym_app_state;
create policy "Users can read own gym data"
on public.gym_app_state for select
to authenticated
using ((select auth.uid()) = user_id);

drop policy if exists "Users can insert own gym data" on public.gym_app_state;
create policy "Users can insert own gym data"
on public.gym_app_state for insert
to authenticated
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can update own gym data" on public.gym_app_state;
create policy "Users can update own gym data"
on public.gym_app_state for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

drop policy if exists "Users can delete own gym data" on public.gym_app_state;
create policy "Users can delete own gym data"
on public.gym_app_state for delete
to authenticated
using ((select auth.uid()) = user_id);

create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin new.updated_at = now(); return new; end; $$;

drop trigger if exists gym_app_state_updated_at on public.gym_app_state;
create trigger gym_app_state_updated_at
before update on public.gym_app_state
for each row execute function public.set_updated_at();
