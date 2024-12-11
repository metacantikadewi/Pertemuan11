SELECT Customer.*, [Order].*, Order_Details.*
FROM   Customer INNER JOIN
             [Order] ON Customer.Customer_ID = [Order].Customer_ID INNER JOIN
             Order_Details ON [Order].Order_ID = Order_Details.Order_ID

