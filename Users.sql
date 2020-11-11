CREATE TABLE Usuario (
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	loginID INT UNSIGNED NOT NULL,
	rolID INT UNSIGNED NOT NULL,
	permisoID INT UNSIGNED NOT NULL,
	userName TEXT(125),
	userPhone int,
	userEmail TEXT(125),
	userAddres TEXT(300),
	CONSTRAINT `loginID`
		FOREIGN KEY (loginID) REFERENCES login(ID)
        	ON DELETE CASCADE
        	ON UPDATE RESTRICT,
	CONSTRAINT `rolID`
		FOREIGN KEY (rolID) REFERENCES roles(ID)
        	ON DELETE CASCADE
        	ON UPDATE RESTRICT,
	CONSTRAINT `permisoID`
		FOREIGN KEY (permisoID) REFERENCES permisos(ID)
        	ON DELETE CASCADE
        	ON UPDATE RESTRICT,
    
) ENGINE = InnoDB;

CREATE TABLE login(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    	loginUser TEXT(125),
    	loginPassword TEXT(125),
) ENGINE = InnoDB;

CREATE TABLE roles(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    	roleName TEXT(125),
    	rolDesc TEXT(125),
) ENGINE = InnoDB;

CREATE TABLE permisos(
	ID INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    	permisoName TEXT(125),
    	permisoDesc TEXT(125),
) ENGINE = InnoDB;
