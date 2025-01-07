-- enter your schema for apartments, offices and storefronts below
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS offices;
DROP TABLE IF EXISTS storefronts;

CREATE TABLE apartments (
    id SERIAL PRIMARY KEY,
    apartment_number INTEGER,
    bedrooms INTEGER,
    bathrooms INTEGER,
    address VARCHAR(255),
    tenant VARCHAR(255),
    occupied BOOLEAN,
    sq_ft INTEGER,
    price INTEGER
);

CREATE TABLE offices (
    id SERIAL PRIMARY KEY,
    office_number INTEGER,
    floors INTEGER,
    sq_ft INTEGER,
    cubicles INTEGER,
    bathrooms INTEGER,
    address VARCHAR(255),
    company VARCHAR(255),
    occupied BOOLEAN,
    price INTEGER
);

CREATE TABLE storefronts (
    address VARCHAR(255) PRIMARY KEY,
    occupied BOOLEAN,
    price INTEGER,
    kitchen BOOLEAN,
    sq_ft INTEGER,
    owner VARCHAR(255),
    outdoor_seating BOOLEAN
);
