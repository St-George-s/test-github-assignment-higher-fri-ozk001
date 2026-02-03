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

SELECT C.firstName, C.surname, V.voucherID, V.price
FROM Voucher V
JOIN CustomerOrder O ON O.voucherID = V.voucherID
JOIN Customer C ON C.custID = O.custID
GROUP BY category 'Adventure'
ORDER BY V.voucherID ASC;