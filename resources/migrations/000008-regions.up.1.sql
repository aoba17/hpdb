CREATE TABLE regions
  (
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL,
    name_alphabet varchar(30) NOT NULL,
    coodinates point NOT NULL,
    region_type integer REFERENCES region_types (id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
