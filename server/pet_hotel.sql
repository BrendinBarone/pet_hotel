CREATE TABLE owners (
id SERIAL PRIMARY KEY,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL);

CREATE TABLE "pets" (
  id SERIAL PRIMARY KEY,
  name VARCHAR(25) NOT NULL,
  breed VARCHAR(25) NOT NULL,
  color VARCHAR(25) NOT NULL,
  owner_id INT REFERENCES "owners"
);

CREATE TABLE "visits" (
  id SERIAL PRIMARY KEY,
  check_in_date DATE NOT NULL,
  check_out_date DATE NOT NULL,
  pet_id INT REFERENCES "pets"
);

-- Create a database named "pets_hotel"
-- Enter each query 1 by 1
