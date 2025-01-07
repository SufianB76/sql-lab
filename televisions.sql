-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a televisions table, drop it
DROP TABLE IF EXISTS televisions;

-- Create a televisions table
CREATE TABLE televisions (
    id SERIAL PRIMARY KEY,
    model_name VARCHAR(100) NOT NULL,
    screen_size DECIMAL(5, 2) NOT NULL, -- in inches
    resolution VARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL, -- in USD
    release_date DATE NOT NULL,
    photo_url TEXT
);

--  The table should have id, model_name, screen_size, resolution,
--  price, release_date, photo_url


-- Insert 4 televisions into the tv_models table
INSERT INTO televisions (model_name, screen_size, resolution, price, release_date, photo_url)
VALUES
    ('Samsung QLED Q90T', 65, '4K UHD', 1799.99, '2023-02-01', 'https://samsung.com/samsung_q90t.jpg'),
    ('LG OLED CX', 55, '4K UHD', 1499.99, '2023-03-15', 'https://lg.com/lg_oled_cx.jpg'),
    ('Sony Bravia XR A90J', 65, '4K UHD', 2799.99, '2023-05-20', 'https://sony.com/sony_bravia_xr_a90j.jpg'),
    ('TCL 6-Series R646', 75, '4K UHD', 999.99, '2023-01-10', 'https://tcl.com/tcl_6series_r646.jpg');

-- Select all entries from the tv_models table
SELECT * FROM televisions;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the tv_models, removing the resolution column
--  and add vertical_resolution and horizontal_resolution columns
ALTER TABLE televisions
DROP COLUMN resolution,
ADD COLUMN vertical_resolution INTEGER,
ADD COLUMN horizontal_resolution INTEGER;