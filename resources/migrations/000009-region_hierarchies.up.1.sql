CREATE TABLE region_hierarchies
  (
    id serial PRIMARY KEY,
    upper_region integer REFERENCES regions (id),
    lower_region integer REFERENCES regions (id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
