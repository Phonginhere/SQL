/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Request_Id]
      ,[Employee_ID]
      ,[Role_ID]
      ,[productID]
      ,[Unit]
      ,[Quantity]
      ,[Price]
      ,[Purpose]
      ,[DateAdd]
      ,[Status]
      ,[Note]
  FROM [ProjectTest2].[dbo].[Requests]

  Select Role_ID, productID, Unit, Sum(Quantity) As 'Tổng số lượng', Sum(Price) As 'Tổng giá tiền', Status, Note
  from [Requests]

  
  where Status = 2 or Status = 3 
  group by Role_ID, productID, Unit, status, Note
  
 Select Role_ID, productID, Unit, Sum(Quantity), Sum(Price), Status, Note from Requests as r where Status = 2 or Status = 3 
 group by Role_ID, productID, Unit, status, Note
 go
  --left join VanPhongPhams as v 
  --on r.productID = v.productID 

  Update Requests SET Price = 0, Status = 2 where Role_ID = 2 and productID = 1 and Unit = N'hộp' and Status = 3
  go

  select ro.RoleName, v.productName, Unit, Sum(Quantity), Price, Status, Pause, Note from Requests as r
  left join Roles as ro on r.Role_ID = ro.Role_ID
  left join VanPhongPhams as v on v.productID = r.productID
  where r.Status = 3 or r.Status = 5
   group by ro.RoleName, v.productName, r.Unit, r.status, r.Pause, r.Note, Price
  go

  select Role_ID, productID,Unit, Status from Requests where Role_ID = 2 and productID = 1 and Unit = N'hộp' and Status = 2
  go

  select * from Requests where Unit = N'hộp'
  go