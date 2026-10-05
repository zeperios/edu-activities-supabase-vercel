create table if not exists activities (
 id uuid primary key default gen_random_uuid(), section text not null, category text not null,
 class_name text, activity_date date not null, time_from time not null, time_to time not null,
 mosque text not null, registered integer default 0, present integer default 0, absent integer default 0,
 dropout integer default 0, title text, educator text, results text, notes text, created_at timestamptz default now()
);
create table if not exists study_groups (
 id uuid primary key default gen_random_uuid(), name text not null, month date not null,
 monthly_sessions integer not null default 0, present integer not null default 0, absent integer not null default 0,
 attendance_percent numeric generated always as (case when monthly_sessions>0 then round((present::numeric/monthly_sessions::numeric)*100,2) else 0 end) stored,
 created_at timestamptz default now()
);
create table if not exists makeups (
 id uuid primary key default gen_random_uuid(), original_session text, original_date date, reason text, makeup_date date,
 makeup_time time, educator text, status text default 'مجدولة', created_at timestamptz default now()
);
create table if not exists activity_log (
 id bigserial primary key, activity_id uuid, action text, actor text, created_at timestamptz default now()
);
create table if not exists app_users (
 id uuid primary key default gen_random_uuid(), full_name text, role text default 'المستشار التربوي', created_at timestamptz default now()
);
-- Enable RLS before production use, then add policies matching your authentication model.
