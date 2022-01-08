CREATE TABLE region_hierarchies
  (
    region_hierarchy_id serial PRIMARY KEY,
    upper_region integer REFERENCES regions (region_id),
    lower_region integer REFERENCES regions (region_id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
