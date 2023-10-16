SELECT * FROM EMPLOYEES
WHERE LASTNAME = 'Murphy' AND FIRSTNAME = 'DIANE';

SELECT count(DISTINCT(PRODUCTLINE)) FROM PRODUCTS;

SELECT DISTINCT PRODUCTLINE FROM PRODUCTS;

SELECT * FROM PRODUCTS
WHERE BUYPRICE >= 48.81
ORDER BY BUYPRICE ASC
LIMIT 5;

SELECT * FROM PRODUCTS
WHERE QUANTITYINSTOCK BETWEEN 1005 AND 7933
ORDER BY QUANTITYINSTOCK ASC
LIMIT 5;

SELECT * FROM ORDERS
WHERE COMMENTS IS NULL
LIMIT 5;

SELECT * FROM ORDERS
WHERE COMMENTS IS NOT NULL;

SELECT * FROM ORDERS
WHERE SHIPPEDDATE IS NULL AND COMMENTS IS NULL;

SELECT * FROM ORDERS
WHERE COMMENTS = 'CHECK ON AVAILABILITY.' AND STATUS = 'SHIPPED';

SELECT * FROM ORDERS
HAVING CUSTOMERNUMBER = 363 OR CUSTOMERNUMBER = 128;

SELECT COUNT(DISTINCT(ORDERNUMBER)) ORDERNUMBER FROM ORDERDETAILS;

SELECT * FROM ORDERDETAILS
WHERE QUANTITYORDERED BETWEEN 20 AND 30;

SELECT * FROM CUSTOMERS
WHERE CITY IN ('Milan', 'Sevilla', 'nANTES');

SELECT * FROM CUSTOMERS
WHERE CUSTOMERNAME LIKE 'A%' OR CUSTOMERNAME LIKE 'S%';

SELECT * FROM CUSTOMERS
WHERE CONTACTFIRSTNAME LIKE '__A_';

SELECT * FROM CUSTOMERS
WHERE addressLine2 IS NULL AND SALESREPEMPLOYEENUMBER IS NULL;

SELECT * FROM CUSTOMERS
WHERE ADDRESSLINE2 IS NOT NULL AND CITY IS NOT NULL;

SELECT * FROM PAYMENTS
WHERE AMOUNT = '82261.22';

SELECT COUNT(*) FROM PAYMENTS;

SELECT COUNT(DISTINCT(CUSTOMERNUMBER)) FROM PAYMENTS;

SELECT SUM(CUSTOMERNUMBER * AMOUNT) AS SUM_OF_CUSTOMER_AMOUNT FROM PAYMENTS;

select avg(quantityordered * priceEach) as quantityordered_priceeach from orderdetails;

select quantityordered * priceEach as quantityordered_priceeach from orderdetails;

select avg(priceeach) from orderdetails;
select avg(quantityordered) from orderdetails;

select min(amount) from payments;
select productname, count(productline) from products
group by productname
order by productname desc;

select count(productname), productline from products
group by productline
order by productline asc;

select * from products;
select * from orders;
select * from customers;
select * from orderdetails;
select * from payments;

select customers.customernumber from customers
inner join payments ON customers.customernumber = payments.customernumber
where amount > 6000;
