SELECT 
  [DateKey], 
  [FullDateAlternateKey], 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS WeekNumber, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS MonthShort,
  [MonthNumberOfYear] AS MonthNumber,
  [CalendarQuarter] AS YearQuarter, 
  [CalendarYear]AS Year 
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE [dbo].[DimDate].CalendarYear >= 2022
