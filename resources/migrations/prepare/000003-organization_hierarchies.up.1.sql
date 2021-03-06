CREATE TABLE organization_hierarchies
  (
    organization_hierarchy_id serial PRIMARY KEY,
    upper_organization integer REFERENCES organizations (organization_id),
    lower_organization integer REFERENCES organizations (organization_id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
