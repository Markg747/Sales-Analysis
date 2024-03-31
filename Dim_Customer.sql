SELECT 
  [CustomerKey], 
  [FirstName], 
  [LastName], 
  CONCAT([FirstName],+ ' ' + [LastName]) AS FullName, 
  CASE WHEN [dbo].[DimCustomer].Gender = 'M' THEN 'Male' WHEN [dbo].[DimCustomer].Gender = 'F' THEN 'Female' END AS Gender, 
  [DateFirstPurchase], 
  [dbo].[DimGeography].City AS CustomerCity 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] 
  LEFT JOIN [dbo].[DimGeography] ON [dbo].[DimGeography].GeographyKey = [dbo].[DimCustomer].GeographyKey 
ORDER BY 
  CustomerKey ASC

