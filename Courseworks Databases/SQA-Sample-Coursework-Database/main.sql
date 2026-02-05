--SELECT V.voucherID, O.custID, C.firstName, C.surname, V.price
--FROM Voucher V
--JOIN CustomerOrder O ON O.voucherID = V.voucherID
--JOIN Customer C ON C.custID = O.custID;



--SELECT C.firstName, C.surname, O.custID
--FROM Customer C
--JOIN CustomerOrder O ON O.custID = C.custID;



--SELECT V.price, O.voucherID
--FROM Voucher V
--JOIN CustomerOrder O ON O.voucherID = V.voucherID;



-- SELECT C.firstName, C.surname, V.voucherID, V.price * O.quantityPurchased AS 'Amount of Money Spent on Voucher £'
-- FROM Voucher V
-- JOIN CustomerOrder O ON O.voucherID = V.voucherID
-- JOIN Customer C ON C.custID = O.custID
-- WHERE category LIKE 'Adventure'
-- AND V.voucherName LIKE 'E%'
-- ORDER BY V.voucherID ASC;



-- SELECT * FROM Voucher;



-- SELECT V.voucherID, S.supplierName, V.voucherName, V.quantityAvailable - 2 AS 'Still Available'
-- FROM Voucher V
-- JOIN Supplier S ON S.supplierCode = V.supplierCode
-- WHERE V.voucherID LIKE 'V543';



-- SELECT S.supplierName, V.voucherName, V.price, COUNT(O.custID) AS 'Number of Customers'
-- FROM Voucher V
-- JOIN CustomerOrder O ON O.voucherID = V.voucherID
-- JOIN Supplier S ON S.supplierCode = V.supplierCode
-- WHERE category LIKE 'Family'
-- AND price < 15
-- GROUP BY V.voucherName
-- ORDER BY COUNT(O.custID) DESC;



-- SELECT S.supplierName, V.voucherName, V.price, Sum(V.price) AS 'Number of Customers'
-- FROM CustomerOrder O, Supplier S, Voucher V
-- WHERE O.voucherID = V.voucherID
-- AND S.suppliercode = V.supplierCode
-- AND V.price < 15
-- AND V.category = 'Family'
-- GROUP BY S.supplierName, V.voucherName, V.price;
-- whoever wrote this must be a weirdo--^

SELECT S.supplierName, V.voucherName, V.price, COUNT(O.custID) AS 'Number of Customers'
FROM CustomerOrder O, Supplier S, Voucher V
WHERE O.voucherID = V.voucherID
AND S.suppliercode = V.supplierCode
AND V.price < 15
AND V.category = 'Family'
GROUP BY S.supplierName, V.voucherName, V.price
ORDER BY COUNT(O.custID) DESC;
-- correct version