DROP TABLE IF EXISTS Validation.ZIPcodes;
CREATE TABLE Validation.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation.ZIPCodes SELECT * FROM Validation_tmp.ZIPCodes;
