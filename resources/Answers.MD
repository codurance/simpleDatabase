# Challenge Answers

no peeking! ಠ_ಠ

Answers to the questions set in the kata


## Exercise 1
Demonstrate a foreign key violation

(if using `user.sql`):

`DELETE FROM example_user WHERE id = 2`

## Exercise 2
Rollback back a transaction

(if using `user.sql`):

```
BEGIN;
INSERT INTO product (userId, description) VALUES (1, 'clock');
ROLLBACK;
COMMIT;
```

## Exercise 3 (products table)
Get all products that whose product line is either 'Classic Cars' or 'Motorcycles'

```
SELECT *
FROM "PUBLIC".products
WHERE "productLine" IN ('Classic Cars', 'Motorcycles');`
```

## Exercise 4 (orders table)
Get all orders that do not have an empty shipped date. Sort the list by more recent first in descending order

```
SELECT *
FROM "PUBLIC".orders
WHERE "shippedDate" IS NOT NULL
ORDER BY "shippedDate" DESC
```


## Exercise 5 (offices table) 
Get all offices whose first line of their address begins with "1" or are located in Japan

```
SELECT *
FROM "PUBLIC".offices
WHERE "addressLine1" LIKE'1%'
OR "countryCode" = 'JPN'`
```

## Exercise 6 (products table)
Get the product name and product line of every product and show the results by product line eg:
Classic Cars -> Motorcycles -> Planes -> Ships -> Trucks and Buses -> Vintage Cars

```
SELECT "productLine", "productName"
FROM "PUBLIC".products
GROUP BY "productLine", "productName"
ORDER BY "productLine" ASC
```


## Exercise 7 (customers table)
Get how many customers we have by the country they live in and show them results alongside each other from most to fewest

```
SELECT "countryCode", COUNT("countryCode") AS "CustomersPerCountry"
FROM "PUBLIC".customers
GROUP BY "countryCode"
ORDER BY "CustomersPerCountry"
```
