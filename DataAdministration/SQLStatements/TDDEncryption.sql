USE MASTER 
GO
CREATE MASTER KEY ENCRYPTION 
BY PASSWORD= ' password@123'
GO

USE MASTER 
GO
CREATE CERTIFICATE tdeCert WITH SUBJECT= 'TDE Certificate'

use master 
go 
select name, pvt_key_encryption_type_desc from sys.certificates
where name = 'tdeCert'

BACKUP CERTIFICATE tdeCert TO FILE =' C:\DEVEncryptionCert.certbak'
WITH PRIVATE KEY
FILE= ' C:\DEVEncryptionCert.certbak'
ENCRYPTION BY PASSWORD = 'password@123'

USE [OurFirstDatabase]
GO
CREATE DATABASE ENCRYPTION KEY
WITH ALGORITHM = AES 128
ENCRYPTION BY SERVER CERTIFICATE tdeCert

ALTER DATABASE ourfirstDatabase SET ENCRYPTION ON 

USE MASTER
GO
SELECT name, is_encrypted from sys.databases