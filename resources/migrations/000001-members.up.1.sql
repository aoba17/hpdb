CREATE TYPE blood_types AS ENUM ('A', 'B', 'AB', 'O');

CREATE TABLE members
  (
    member_id serial PRIMARY KEY,
    stage_name varchar(30) NOT NULL,
    stage_name_alphabet varchar(30) NOT NULL,
    stage_name_katakana varchar(30) NOT NULL,
    stage_name_hiragana varchar(30) NOT NULL,
    birth_date date,
    blood_type blood_types,
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
