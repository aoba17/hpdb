CREATE TABLE organization_sequences
  (
    organization_sequence_id serial PRIMARY KEY,
    former_organization integer REFERENCES organizations (id),
    latter_organization integer REFERENCES organizations (id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  )
