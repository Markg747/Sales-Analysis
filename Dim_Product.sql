SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey], 
  p.[EnglishProductName], 
  pc.[EnglishProductCategoryName] AS ProductCategory, --Join Product Category
  psc.[EnglishProductSubcategoryName] AS SubCategory, --Join Sub Category
  p.[Color], 
  p.[Size], 
  p.[ProductLine], 
  p.[ModelName], 
  p.[EnglishDescription],
  --    ,CASE
  --WHEN p.[Status] IS NULL THEN 'Outdated' WHEN p.[Status] = 'Current' THEN 'Current'
  --END AS Status
  ISNULL(p.[Status], 'Outdated') as Status 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
  LEFT JOIN [dbo].[DimProductSubcategory] AS psc ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey 
  LEFT JOIN [dbo].[DimProductCategory] AS pc ON pc.ProductCategoryKey = psc.ProductCategoryKey
ORDER BY
  p.ProductKey
