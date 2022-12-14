-- this will remove and copy from validation_tmp to validation
DROP TABLE IF EXISTS Validation_tmp_1.ZIPCodes;
CREATE TABLE Validation_tmp_1.ZIPCodes LIKE Validation_tmp.ZIPCodes;
INSERT Validation_tmp_1.ZIPCodes SELECT * FROM TValidation_tmp.ZIPCodes;
