--DATABASE CREATION:
CREATE DATABASE SUPPLY_CHAIN;
GO

--USE DATABASE
USE SUPPLY_CHAIN;
GO

--TABLE IMPORTED IN DATABASES AS DATA1 
SELECT * FROM DATA1;
GO

--1. Dataset Preparation:
--Checked dataset contains all the columns mentioned Correctly: 

--Product_type, SKU, Price, Availability, Number_of_products_sold, Revenue_generated, Customer_demographics, Stock_levels, 
--Lead_times, Order_quantities, Shipping_times, Shipping_carriers, Shipping_costs, Supplier_name, Location, Lead_time, 
--Production_volumes, Manufacturing_lead_time, Manufacturing_costs, Inspection_results, Defect_rates, Transportation_modes, 
--Routes, Costs.
GO

--FINDING NULL VALUE:
SELECT * FROM DATA1 WHERE 
Product_type is null or SKU is null or Price is null or  Availability is null or Number_of_products_sold is null or
Revenue_generated is null or  Customer_demographics is null or Stock_levels is null or
Lead_times is null or Order_quantities is null or Shipping_times is null or Shipping_carriers is null or
Shipping_costs is null or  Supplier_name is null or Location is null or Lead_time is null or
Production_volumes is null or Manufacturing_lead_time is null or Manufacturing_costs is null or
Inspection_results is null or Defect_rates is null or Transportation_modes is null or
Routes is null or Costs is null
                            --NULL VALUE NOT FOUND

--DATA EXPLORING:-

--1.) Number of products sold for each Product Type(PRODUCT SALES)

SELECT * FROM DATA1;
SELECT Product_type, sum(Number_of_products_sold) as Total_no_of_sale 
from data1 group by Product_type;
GO

--2.)Revenue generated over time Filter by Product Type. (REVENUE ANALYSIS)
SELECT * FROM DATA1
SELECT PRODUCT_TYPE,SHIPPING_TIMES, SUM(REVENUE_GENERATED) AS TOTAL_REVENUE FROM DATA1 GROUP BY PRODUCT_TYPE,SHIPPING_TIMES;
GO

--3.Show the distribution of Price for different Product Types.