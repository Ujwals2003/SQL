CREATE TABLE furniture_info (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    material VARCHAR(50) NOT NULL,
    category ENUM('Chair', 'Table', 'Sofa', 'Bed', 'Cabinet') NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    manufacturer VARCHAR(100) NOT NULL,
    warranty_period INT NOT NULL,
    stock_quantity INT NOT NULL,
    weight DECIMAL(10,2) NOT NULL,
    dimensions VARCHAR(50) NOT NULL
);

ALTER TABLE furniture_info ADD CONSTRAINT chk_price CHECK (price > 0);
ALTER TABLE furniture_info ADD CONSTRAINT chk_stock CHECK (stock_quantity >= 0);
ALTER TABLE furniture_info ADD CONSTRAINT chk_weight CHECK (weight > 0);
ALTER TABLE furniture_info ADD CONSTRAINT chk_dimensions CHECK (dimensions <> '');
ALTER TABLE furniture_info ADD CONSTRAINT chk_warranty CHECK (warranty_period >= 0);
ALTER TABLE furniture_info ADD CONSTRAINT chk_material CHECK (material <> '');

INSERT INTO furniture_info (name, material, category, price, manufacturer, warranty_period, stock_quantity, weight, dimensions) VALUES
('Office Chair', 'Wood', 'Chair', 200.00, 'ABC Corp', 2, 50, 10.5, '40x40x90');

ALTER TABLE furniture_info ADD COLUMN color VARCHAR(50);
ALTER TABLE furniture_info ADD COLUMN availability_status VARCHAR(20);

UPDATE furniture_info SET color = 'Black', availability_status = 'In Stock';

CREATE TABLE electronic_gadgets (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    brand VARCHAR(100) NOT NULL,
    category ENUM('Laptop', 'Phone', 'Tablet', 'Smartwatch', 'Headphone') NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    battery_life INT NOT NULL,
    warranty_period INT NOT NULL,
    stock_quantity INT NOT NULL,
    screen_size DECIMAL(5,2) NOT NULL,
    weight DECIMAL(10,2) NOT NULL
);

ALTER TABLE electronic_gadgets ADD CONSTRAINT chk_price CHECK (price > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT chk_stock CHECK (stock_quantity >= 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT chk_screen CHECK (screen_size > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT chk_weight CHECK (weight > 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT chk_warranty CHECK (warranty_period >= 0);
ALTER TABLE electronic_gadgets ADD CONSTRAINT chk_battery CHECK (battery_life > 0);

INSERT INTO electronic_gadgets (name, brand, category, price, battery_life, warranty_period, stock_quantity, screen_size, weight) VALUES
('iPhone 15', 'Apple', 'Phone', 999.99, 24, 2, 100, 6.1, 0.5);

ALTER TABLE electronic_gadgets ADD COLUMN release_year INT;
ALTER TABLE electronic_gadgets ADD COLUMN connectivity VARCHAR(50);

UPDATE electronic_gadgets SET release_year = 2023, connectivity = '5G';

CREATE TABLE restaurant_info (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL UNIQUE,
    cuisine_type VARCHAR(50) NOT NULL,
    category ENUM('Fast Food', 'Casual Dining', 'Fine Dining', 'Cafe', 'Buffet') NOT NULL,
    rating DECIMAL(3,2) NOT NULL,
    location VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
    opening_hours VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    price_range VARCHAR(20) NOT NULL
);

ALTER TABLE restaurant_info ADD CONSTRAINT chk_rating CHECK (rating >= 0 AND rating <= 5);
ALTER TABLE restaurant_info ADD CONSTRAINT chk_capacity CHECK (capacity > 0);
ALTER TABLE restaurant_info ADD CONSTRAINT chk_price_range CHECK (price_range <> '');
ALTER TABLE restaurant_info ADD CONSTRAINT chk_cuisine CHECK (cuisine_type <> '');
ALTER TABLE restaurant_info ADD CONSTRAINT chk_opening_hours CHECK (opening_hours <> '');
ALTER TABLE restaurant_info ADD CONSTRAINT chk_location CHECK (location <> '');

INSERT INTO restaurant_info (name, cuisine_type, category, rating, location, contact_number, opening_hours, capacity, price_range) VALUES
('Tasty Bites', 'Italian', 'Casual Dining', 4.5, 'NYC', '1234567890', '9 AM - 10 PM', 100, '$$');

ALTER TABLE restaurant_info ADD COLUMN chef_name VARCHAR(100);
ALTER TABLE restaurant_info ADD COLUMN special_dish VARCHAR(100);

UPDATE restaurant_info SET chef_name = 'Gordon Ramsay', special_dish = 'Pasta Alfredo';

CREATE TABLE
olympics_info (
    id INT PRIMARY KEY AUTO_INCREMENT,
    athlete_name VARCHAR(100) NOT NULL UNIQUE,
    country VARCHAR(50) NOT NULL,
    sport ENUM('Athletics', 'Swimming', 'Gymnastics', 'Wrestling', 'Cycling') NOT NULL,
    gold_medals INT NOT NULL,
    silver_medals INT NOT NULL,
    bronze_medals INT NOT NULL,
    total_medals INT NOT NULL,
    year INT NOT NULL,
    event VARCHAR(100) NOT NULL
);

ALTER TABLE olympics_info ADD CONSTRAINT chk_gold CHECK (gold_medals >= 0);
ALTER TABLE olympics_info ADD CONSTRAINT chk_silver CHECK (silver_medals >= 0);
ALTER TABLE olympics_info ADD CONSTRAINT chk_bronze CHECK (bronze_medals >= 0);
ALTER TABLE olympics_info ADD CONSTRAINT chk_total CHECK (total_medals >= 0);
ALTER TABLE olympics_info ADD CONSTRAINT chk_year CHECK (year >= 1896);
ALTER TABLE olympics_info ADD CONSTRAINT chk_country CHECK (country <> '');

INSERT INTO olympics_info (athlete_name, country, sport, gold_medals, silver_medals, bronze_medals, total_medals, year, event) VALUES
('Michael Phelps', 'USA', 'Swimming', 23, 3, 2, 28, 2016, '200m Freestyle');

ALTER TABLE olympics_info ADD COLUMN coach_name VARCHAR(100);
ALTER TABLE olympics_info ADD COLUMN record_time DECIMAL(5,2);

UPDATE olympics_info SET coach_name = 'John Doe', record_time = 9.58;