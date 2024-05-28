CREATE TABLE invoices(
id SERIAL PRIMARY KEY,
product_id INT NOT NULL,
qty NUMERIC NOT NULL CHECK (qty > 0)
net_price NUMERIC CHECK(net_price > 0)
);