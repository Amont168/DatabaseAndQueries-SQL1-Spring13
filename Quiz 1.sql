--Quiz 1
--1/30/12
-- Dustyne Brown - Connor Murphy - Alex Wakefield
SET ECHO ON;
SET FEEDBACK 1;

--Question 1
--Who works here with the last name 'Smith' and what department do they work in?
SELECT e.emp_id, e.last_name, e.first_name, e.dept_id, d.dept_name
FROM f_emp e JOIN f_dept d
ON (e.dept_id = d.dept_id)
WHERE e.last_name LIKE 'Smith';

--Question 2
--How many customers are serviced out of Africe/Middle East
SELECT cc.customer_id, cc.name, cc.country, r.region_name
FROM f_customer cc JOIN f_region r
ON (cc.region_id = r.region_id)
WHERE r.region_id = '3';

--Question 3
--What items need restocked?
SELECT p.product_name, i.product_id, i.warehouse_id, i.amount_in_stock, i.reorder_point
FROM f_inventory i JOIN f_product p
ON (i.product_id = p.product_id)
WHERE i.reorder_point >= i.amount_in_stock
AND rownum <=8;

--Question 4
--List all employees that work in the finance department
SELECT e.emp_id, e.last_name, e.first_name, d.dept_id
FROM f_emp e JOIN f_dept d
ON (e.dept_id = d.dept_id)
WHERE d.dept_id = '10'
AND rownum <=8;