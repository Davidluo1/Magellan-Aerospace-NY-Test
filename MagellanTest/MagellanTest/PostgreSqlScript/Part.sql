/*
Create a database called Part
Create a table named item
*/

CREATE TABLE item (
    id int NOT NULL PRIMARY KEY,        -- primary key
    item_name VARCHAR(50) NOT NULL,
    parent_item int,
    FOREIGN KEY (parent_item) REFERENCES item(id),      -- foreign key to id
    cost int NOT NULL,
    req_date DATE NOT NULL,
);

/*
Insert data into item table
*/
INSERT INTO item (
    item_name,
    parent_item,
    cost,
    req_date
)
VALUES 
('Item1', NULL, 500, DATE '02-20-2024'),
('Sub1', 1, 200, DATE '02-10-2024'),
('Sub2', 1, 300, DATE '01-05-2024'),
('Sub3', 2, 300, DATE '01-02-2024'),
('Sub4', 2, 400, DATE '01-02-2024'),
('Item2', NULL, 600, DATE '03-15-2024'),
('Sub1', 6, 200, DATE '02-25-2024');