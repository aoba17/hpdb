CREATE TABLE organization_hierarchies
  (
    id serial PRIMARY KEY,
    upper_organization integer REFERENCES organizations (id),
    lower_organization integer REFERENCES organizations (id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
