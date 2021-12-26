CREATE TABLE organizations_members
  (
    organization_member_id serial PRIMARY KEY,
    organization_id integer REFERENCES organizations (id),
    member_id integer REFERENCES members (id),
    generation integer NOT NULL,
    started_on date NOT NULL,
    ended_on date NOT NULL default '9999/12/31',
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
