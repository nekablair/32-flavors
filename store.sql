-- CREATE DATABASE ice_cream_store;
DROP TABLE IF EXISTS buckets_ice_cream CASCADE;

CREATE TABLE buckets_ice_cream (
    ice_cream_id SERIAL PRIMARY KEY,
    types_ice_cream VARCHAR(30),
    quantity INT NOT NULL CHECK (quantity > 0)
);

\COPY buckets_ice_cream FROM './data/buckets_ice_cream.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS boxes_cones CASCADE;

CREATE TABLE boxes_cones (
    boxes_cones_id SERIAL PRIMARY KEY,
    types_of_cones VARCHAR(15) NOT NULL,
    quantity INT NOT NULL CHECK (quantity > 0)
);

\COPY boxes_cones FROM './data/boxes_cones.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS employee CASCADE;

CREATE TABLE employee (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(30) NOT NULL,
    position VARCHAR(30) NOT NULL,
    -- position VARCHAR(30) NOT NULL CHECK( position IN ('Ice Cream Attendant')),
    salary DECIMAL(7,2) NOT NULL
);

\COPY employee FROM './data/employee.csv' WITH CSV HEADER;

DROP TABLE IF EXISTS shifts CASCADE;

CREATE TABLE shifts (
    shifts_id SERIAL PRIMARY KEY,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    employee_id INT NOT NULL
);

\COPY shifts FROM './data/shifts.csv' WITH CSV HEADER;



