CREATE DATABASE ev_analytics;
USE ev_analytics;

-- Schema was changed because we only had state name and no. of stations to match the dataset and avoid NULL values
CREATE TABLE charging_stations_raw (
    state VARCHAR(100),
    region VARCHAR(100),
    station_type VARCHAR(100),
    no_of_stations INT
);

CREATE TABLE ev_sales_makers_raw (
    date DATE,
    maker VARCHAR(100),
    vehicle_category VARCHAR(100),
    electric_vehicles_sold INT
);

CREATE TABLE ev_sales_state_raw (
    date DATE,
    state VARCHAR(100),
    vehicle_category VARCHAR(100),
    electric_vehicles_sold INT
);

CREATE TABLE dim_date_raw (
    date DATE,
    year INT,
    month INT,
    month_name VARCHAR(20),
    quarter INT
);

CREATE TABLE charging_stations_detailed (
    state VARCHAR(100),
    region VARCHAR(100),
    station_type VARCHAR(100),
    no_of_stations INT
);