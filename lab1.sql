alter session set current_schema = builder2;

describe BUILDER2.stock;

--a
select stock_code, stock_description, unit_price, unitcostprice from BUILDER2.stock;

--b
select to_char(unit_price, 'U9,999.99') from BUILDER2.stock;
select to_char(unitstockprice, 'U9,999.99') from BUILDER2.stock;
select stock_description, from BUILDER2.stock;

--c
select to_char(unit_price, 'U9,999.99') "Stock Code" from BUILDER2.stock;
select to_char(unitstockprice, 'U9,999.99') "Unit Stock Price" from BUILDER2.stock;
select stock_description "Stock Description" from BUILDER2.stock;

--d
select to_char(unit_price, 'U9,999.99') "Stock Code" from BUILDER2.stock;
select to_char(unitstockprice, 'U9,999.99') "Unit Stock Price" from BUILDER2.stock;
select stock_description "Stock Description" from BUILDER2.stock;
select (unit_price - unitcostprice) "Profit" from BUILDER2.stock;

--e
select to_char(unit_price, 'U9,999.99') "Stock Code" from BUILDER2.stock;
select to_char(unitstockprice, 'U9,999.99') "Unit Stock Price" from BUILDER2.stock;
select stock_description "Stock Description" from BUILDER2.stock;
select (unit_price - unitcostprice) "Profit" from BUILDER2.stock ORDER BY UNIT_PRICE-UNITCOSTPRICE;

--f
select to_char(unit_price, 'U9,999.99') "Stock Code" from BUILDER2.stock;
select to_char(unitstockprice, 'U9,999.99') "Unit Stock Price" from BUILDER2.stock;
select stock_description "Stock Description" from BUILDER2.stock;
select (unit_price - unitcostprice) "Profit" from BUILDER2.stock ORDER BY UNITCOSTPRICE-UNIT_PRICE;

--g
select 'The Stock item' ||stock_code|| 'is a' ||stock_description from BUILDER2.stock;

--the rest
alter session set current_schema = POBYRNE;

commit;

