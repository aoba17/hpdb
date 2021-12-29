CREATE TABLE organization_members_colors
  (
    organization_member_color_id serial PRIMARY KEY,
    organization_member_id integer REFERENCES organizations_members (organization_member_id),
    color_id integer REFERENCES colors (color_id),
    started_on date NOT NULL,
    ended_on date NOT NULL default '9999/12/31',
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
