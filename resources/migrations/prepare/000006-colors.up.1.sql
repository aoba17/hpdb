CREATE TABLE colors
  (
    color_id serial PRIMARY KEY,
    name varchar(30) NOT NULL,
    name_alphabet varchar(30) NOT NULL,
    color_code char(7) NOT NULL,
    color_category integer REFERENCES color_categories (color_category_id),
    created_at timestamp NOT NULL default CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL default CURRENT_TIMESTAMP
  );
