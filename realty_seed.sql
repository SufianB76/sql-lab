--enter your seed data below
INSERT INTO apartments (apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES
    (101, 2, 1, '123 Elm St', 'John Doe', TRUE, 800, 1200),
    (202, 3, 2, '456 Oak St', NULL, FALSE, 1200, 1800),
    (303, 1, 1, '789 Pine St', 'Jane Smith', TRUE, 600, 1000);

INSERT INTO offices (office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price)
VALUES
    (1, 3, 3000, 50, 4, '1 Corporate Way', 'TechCorp', TRUE, 10000),
    (2, 2, 2000, 30, 2, '2 Business Blvd', NULL, FALSE, 7500),
    (3, 1, 1500, 10, 1, '3 Industry Rd', 'DesignCo', TRUE, 5000);

INSERT INTO storefronts (address, occupied, price, kitchen, sq_ft, owner, outdoor_seating)
VALUES
    ('101 Market St', TRUE, 5000, TRUE, 1000, 'Alice Brown', FALSE),
    ('202 Commerce Ave', FALSE, 4000, FALSE, 800, NULL, TRUE),
    ('303 Retail Rd', TRUE, 6000, TRUE, 1200, 'Bob Green', TRUE);