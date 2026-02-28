-- View 1: Charging Stations by State
-- Used for Bar Chart / State Comparison

CREATE OR REPLACE VIEW vw_charging_stations_by_state AS
SELECT 
    state,
    SUM(no_of_stations) AS total_charging_stations
FROM charging_stations_raw
GROUP BY state;

-- View 2: Charging Stations Map Data
-- Used for Tableau Map (State + Measure)

CREATE OR REPLACE VIEW vw_charging_map_india AS
SELECT 
    state,
    SUM(no_of_stations) AS total_charging_stations
FROM charging_stations_raw
GROUP BY state;

-- View 3: EV Distribution by Vehicle Category in India

CREATE OR REPLACE VIEW vw_ev_by_vehicle_category AS
SELECT 
    vehicle_category,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_state_raw
GROUP BY vehicle_category;

-- View 4: Brand Performance (Sales Based Ranking)

CREATE OR REPLACE VIEW vw_brand_performance AS
SELECT 
    maker,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_makers_raw
GROUP BY maker
ORDER BY total_ev_sold DESC;

-- View 8: Brand Sales by Powertrain Type (Vehicle Category)

CREATE OR REPLACE VIEW vw_brand_by_powertrain AS
SELECT 
    vehicle_category,
    maker,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_makers_raw
GROUP BY vehicle_category, maker;

SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';
SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';

-- View 5: Sales by Maker (Proxy for Market Strength)

CREATE OR REPLACE VIEW vw_sales_by_maker AS
SELECT 
    maker,
    vehicle_category,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_makers_raw
GROUP BY maker, vehicle_category;

-- View 6: Top 10 EV Brands by Sales Volume

CREATE OR REPLACE VIEW vw_top_10_ev_brands AS
SELECT 
    maker,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_makers_raw
GROUP BY maker
ORDER BY total_ev_sold DESC
LIMIT 10;

-- View 7: Brands Grouped by Vehicle Category

CREATE OR REPLACE VIEW vw_brands_by_category AS
SELECT 
    vehicle_category,
    maker,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_makers_raw
GROUP BY vehicle_category, maker;


SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';

-- View 9: Count of Categories per Brand (Model Proxy)

CREATE OR REPLACE VIEW vw_model_count_by_brand AS
SELECT 
    maker,
    COUNT(DISTINCT vehicle_category) AS category_count
FROM ev_sales_makers_raw
GROUP BY maker;

-- View 10: Global Brand Sales Summary

CREATE OR REPLACE VIEW vw_summary_global_brands AS
SELECT 
    COUNT(DISTINCT maker) AS total_brands,
    SUM(electric_vehicles_sold) AS total_ev_sold
FROM ev_sales_makers_raw;

-- View 11: India EV Market Summary

CREATE OR REPLACE VIEW vw_summary_india AS
SELECT 
    COUNT(DISTINCT state) AS total_states,
    SUM(electric_vehicles_sold) AS total_ev_sold_india
FROM ev_sales_state_raw;

SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';

-- modified

CREATE OR REPLACE VIEW vw_charging_stations_by_state AS
SELECT 
    region,
    station_type,
    SUM(no_of_stations) AS no_of_stations
FROM charging_stations_detailed
GROUP BY region, station_type;

DROP VIEW IF EXISTS vw_charging_stations_by_state;

CREATE VIEW vw_charging_stations_by_state AS
SELECT 
    region,
    station_type,
    SUM(no_of_stations) AS total_stations
FROM charging_stations_detailed
GROUP BY region, station_type;

DESCRIBE vw_charging_stations_by_state;

SELECT * FROM vw_charging_stations_by_state;