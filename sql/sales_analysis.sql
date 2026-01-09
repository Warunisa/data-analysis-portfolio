-- Production Analysis Sample Queries
-- This file contains basic SQL queries for data analysis and reporting

-- Create table
CREATE TABLE production_data (
    production_date DATE,
    department VARCHAR(50),
    product_type VARCHAR(50),
    quantity INT,
    efficiency DECIMAL(5,2)
);

-- Insert sample data
INSERT INTO production_data VALUES
('2025-01-01', 'Knitting', 'Fabric A', 1200, 85.5),
('2025-01-01', 'Dyeing', 'Fabric A', 1100, 82.0),
('2025-01-02', 'Knitting', 'Fabric B', 1300, 88.0),
('2025-01-02', 'Dyeing', 'Fabric B', 1250, 86.5),
('2025-01-03', 'Knitting', 'Fabric A', 1400, 90.0);

-- 1. View all production records
SELECT * FROM production_data;

-- 2. Total production quantity by department
SELECT 
    department,
    SUM(quantity) AS total_quantity
FROM production_data
GROUP BY department;

-- 3. Average efficiency by department
SELECT 
    department,
    AVG(efficiency) AS average_efficiency
FROM production_data
GROUP BY department;

-- 4. Daily production summary
SELECT 
    production_date,
    SUM(quantity) AS daily_total
FROM production_data
GROUP BY production_date
ORDER BY production_date;

-- 5. Filter high efficiency records
SELECT *
FROM production_data
WHERE efficiency > 85;
