DECLARE @myvar AS DECIMAL(7,2)
--12345.67 is valid for above
--123456.7 isnt valid
SET @myvar = 12345.67

SELECT @myvar AS myVariable

DECLARE @myvar1 AS NUMERIC(7)
--12345.67 is valid for above
--123456.7 isnt valid
SET @myvar1 = 12345.67

SELECT @myvar1 AS myVariable