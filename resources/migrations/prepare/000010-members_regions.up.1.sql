CREATE TYPE hometown_types AS ENUM ('born', 'raised', 'born-raised');

CREATE TABLE members_regions
  (
    member_region_id serial PRIMARY KEY,
    member_id integer REFERENCES members (member_id),
    region_id integer REFERENCES regions (region_id),
    hometown_type hometown_types NOT NULL,
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
