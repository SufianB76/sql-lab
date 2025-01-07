-- Open up psql and create a sql_lab database if you haven't already done so. 
-- If you already have a sql_lab database, no need to create it again.

-- Write SQL commands under the prompts below, and run the file to get results.

-- In case there is already a computers table, drop it
DROP TABLE IF EXISTS computers;
-- Create a computers table


-- The table should have id, make, model, cpu_speed, memory_size,
--  price, release_date, photo_url, storage_amount, number_usb_ports,
--  number_firewire_ports, number_thunderbolt_ports
CREATE TABLE computers (
    id SERIAL PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    cpu_speed DECIMAL(4, 2) NOT NULL, -- in GHz
    memory_size INTEGER NOT NULL, -- in GB
    price DECIMAL(10, 2) NOT NULL, -- in USD
    release_date DATE NOT NULL,
    photo_url TEXT,
    storage_amount INTEGER NOT NULL, -- in GB
    number_usb_ports INTEGER,
    number_firewire_ports INTEGER,
    number_thunderbolt_ports INTEGER
);

-- Insert 4 computers into the computers table
INSERT INTO computers (make, model, cpu_speed, memory_size, price, release_date, photo_url, storage_amount, number_usb_ports, number_firewire_ports, number_thunderbolt_ports)
VALUES
    ('Apple', 'MacBook Pro', 3.1, 16, 2499.99, '2023-03-14', 'https://apple.com/macbookpro.jpg', 512, 4, 0, 3),
    ('Dell', 'XPS 13', 2.8, 8, 1199.99, '2022-11-10', 'https://dell.com/xps13.jpg', 256, 3, 0, 1),
    ('HP', 'Spectre x360', 3.0, 16, 1399.99, '2023-01-20', 'https://hp.com/spectrex360.jpg', 512, 2, 0, 2),
    ('Lenovo', 'ThinkPad X1 Carbon', 2.6, 16, 1899.99, '2023-05-01', 'https://lenovo.com/thinkpadx1.jpg', 1024, 3, 1, 1);

-- Select all entries from the computers table
SELECT * FROM computers;

-- HUNGRY FOR MORE? 
-- Look at this afternoon's instructor notes and read on altering tables before attempting below

-- Alter the computers_models, removing the storage_amount column
-- and add storage_type and storage_size columns
ALTER TABLE computers
DROP COLUMN storage_amount,
ADD COLUMN storage_type VARCHAR(20),
ADD COLUMN storage_size INTEGER;