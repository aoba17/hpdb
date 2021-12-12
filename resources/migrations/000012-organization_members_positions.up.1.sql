CREATE TABLE organization_members_positions
  (
    id serial PRIMARY KEY,
    organization_member_id integer REFERENCES organizations_members (id),
    position_id integer REFERENCES positions (id),
    started_on date NOT NULL,
    ended_on date NOT NULL default '9999/12/31',
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
