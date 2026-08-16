-- ============================================================
-- Supply Chain Optimization Analytics Project
-- File: 01_schema.sql
-- Database: PostgreSQL (pgAdmin 4)
--
-- Description:
-- Creates the database schema for the Supply Chain
-- Optimization Analytics project.
-- ============================================================


-- ============================================================
-- Create Warehouse Table
-- Stores warehouse information and storage capacity.
-- ============================================================

CREATE TABLE warehouse (
    warehouse_id VARCHAR(5) PRIMARY KEY,
    capacity INT NOT NULL
);


-- ============================================================
-- Create Market Table
-- Stores market demand information.
-- ============================================================

CREATE TABLE market (
    market_id VARCHAR(5) PRIMARY KEY,
    demand INT NOT NULL
);


-- ============================================================
-- Create Transportation Cost Table
-- Stores transportation cost per unit for each
-- warehouse-to-market route.
-- ============================================================

CREATE TABLE transportation_cost (
    warehouse_id VARCHAR(5),
    market_id VARCHAR(5),
    cost_per_unit DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (warehouse_id, market_id),

    FOREIGN KEY (warehouse_id)
        REFERENCES warehouse(warehouse_id),

    FOREIGN KEY (market_id)
        REFERENCES market(market_id)
);


-- ============================================================
-- Create Shipment Table
-- Stores shipment quantities for each warehouse-to-market route.
-- ============================================================

CREATE TABLE shipment (
    warehouse_id VARCHAR(5),
    market_id VARCHAR(5),
    units_shipped DECIMAL(10,2) NOT NULL,

    PRIMARY KEY (warehouse_id, market_id),

    FOREIGN KEY (warehouse_id)
        REFERENCES warehouse(warehouse_id),

    FOREIGN KEY (market_id)
        REFERENCES market(market_id)
);


-- ============================================================
-- Verify Tables
-- ============================================================

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';
