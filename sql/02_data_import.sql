-- ============================================================
-- Supply Chain Optimization Analytics Project
-- File: 02_data_import.sql
-- Database: PostgreSQL (pgAdmin 4)
--
-- Description:
-- Instructions for importing the project datasets into
-- PostgreSQL using pgAdmin 4.
-- ============================================================

/*

DATASETS TO IMPORT
------------------

1. warehouse.csv
2. market.csv
3. transportation_cost.csv
4. shipment.csv


IMPORT STEPS
------------

1. Open pgAdmin 4.

2. Expand:

   Databases
   → supply_chain_optimization
   → Schemas
   → public
   → Tables

3. Right-click the required table.

4. Select:

   Import / Export Data

5. Configure:

   Import: Yes

   Filename:
   Select the corresponding CSV file.

   Format:
   CSV

   Header:
   Yes

   Delimiter:
   ,

   Encoding:
   UTF-8

6. Click OK.

Repeat for all four tables.

IMPORT ORDER
------------

1. warehouse
2. market
3. transportation_cost
4. shipment

This order ensures all foreign key dependencies are satisfied.

*/


-- ============================================================
-- Verify Imported Data
-- ============================================================

SELECT * FROM warehouse;

SELECT * FROM market;

SELECT * FROM transportation_cost;

SELECT * FROM shipment;
