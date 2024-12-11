SELECT Customer.Name, [Order].Order_ID, Order_Details.Detail_ID
FROM   Customer INNER JOIN
             [Order] ON Customer.Customer_ID = [Order].Customer_ID INNER JOIN
             Order_Details ON [Order].Order_ID = Order_Details.Order_ID

