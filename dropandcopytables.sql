-- this will remove and copy from validation_tmp to validation
DROP TABLE IF EXISTS Validation.ZIPCodes;
CREATE TABLE Validation.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation.ZIPCodes SELECT * FROM Validation_tmp.ZIPCodes;
