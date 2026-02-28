SELECT COUNT(*) FROM electric_vehicle_sales_by_makers;
SELECT COUNT(*) FROM electric_vehicle_sales_by_state;
SELECT COUNT(*) FROM dim_date;
SELECT COUNT(*) FROM charging_stations_raw;
SELECT COUNT(*) FROM charging_stations_detailed;

DROP VIEW IF EXISTS vw_ev_by_vehicle_category;
DROP VIEW IF EXISTS vw_brand_performance;
DROP VIEW IF EXISTS vw_brand_by_powertrain;
DROP VIEW IF EXISTS vw_sales_by_maker;
DROP VIEW IF EXISTS vw_top_10_ev_brands;
DROP VIEW IF EXISTS vw_brands_by_category;
DROP VIEW IF EXISTS vw_model_count_by_brand;
DROP VIEW IF EXISTS vw_summary_global_brands;
DROP VIEW IF EXISTS vw_summary_india;


CREATE VIEW vw_ev_by_vehicle_category AS
SELECT
    Brand AS brand,
    Model AS model,
    Segment AS vehicle_type,
    BodyStyle AS body_style,
    PowerTrain AS powertrain,
    Seats AS seats,
    TopSpeed_KmH AS top_speed,
    Range_Km AS range_km,
    Efficiency_WhKm AS efficiency_wh_km,
    FastCharge_KmH AS fast_charge_speed,
    PriceEuro AS price_euro
FROM electric_car_data;


CREATE VIEW vw_brand_performance AS
SELECT
    Brand AS brand,
    MAX(TopSpeed_KmH) AS max_top_speed,
    AVG(Range_Km) AS avg_range,
    AVG(Efficiency_WhKm) AS avg_efficiency,
    AVG(AccelSec) AS avg_acceleration
FROM electric_car_data
GROUP BY Brand;



CREATE VIEW vw_brands_by_category AS
SELECT
    Name AS car_name,
    Drive AS drive_type,
    NumberofSeats AS seats,
    PriceinGermany AS price_germany,
    PriceinUK AS price_uk,
    TopSpeed AS top_speed,
    `Range` AS range_text,
    Efficiency AS efficiency_text
FROM ev_price_data;



CREATE VIEW vw_top_10_ev_brands AS
SELECT
    Brand AS brand,
    AVG(Efficiency_WhKm) AS avg_efficiency
FROM electric_car_data
GROUP BY Brand
ORDER BY avg_efficiency ASC
LIMIT 10;


CREATE VIEW vw_brand_by_powertrain AS
SELECT
    Brand AS brand,
    PowerTrain AS powertrain,
    COUNT(Model) AS model_count
FROM electric_car_data
GROUP BY Brand, PowerTrain;


CREATE VIEW vw_model_count_by_brand AS
SELECT
    Brand AS brand,
    COUNT(Model) AS model_count
FROM electric_car_data
GROUP BY Brand;


CREATE VIEW vw_summary_global_brands AS
SELECT
    COUNT(DISTINCT Brand) AS total_brands,
    COUNT(DISTINCT Model) AS total_models,
    ROUND(AVG(PriceEuro),2) AS avg_price_euro,
    ROUND(AVG(Range_Km),2) AS avg_range_km,
    ROUND(AVG(Efficiency_WhKm),2) AS avg_efficiency
FROM electric_car_data;



CREATE VIEW vw_summary_india AS
SELECT
    COUNT(DISTINCT Car) AS total_cars_india,
    COUNT(DISTINCT Style) AS body_styles,
    COUNT(DISTINCT VehicleType) AS vehicle_types,
    ROUND(AVG(`PriceRange(Lakhs)`),2) AS avg_price_lakhs
FROM ev_india_data;

SHOW FULL TABLES WHERE TABLE_TYPE = 'VIEW';


