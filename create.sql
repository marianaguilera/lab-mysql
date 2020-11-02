use your_car;

CREATE TABLE customer(
  Customer_ID int NOT NULL,
  Name varchar(45) DEFAULT NULL,
  Email varchar(60) DEFAULT NULL,
  Phone_number varchar(45) DEFAULT NULL,
  Address text,
  City varchar(45) DEFAULT NULL,
  State_Province varchar(45) DEFAULT NULL,
  Country varchar(45) DEFAULT NULL,
  Zip_Code int DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`),
  UNIQUE KEY `Customer_ID_UNIQUE` (`Customer_ID`),
  KEY `Customer_ID` (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE inventory (
  Vehicle_ID int NOT NULL,
  Manufacturer varchar(45) DEFAULT NULL,
  Model varchar(45) DEFAULT NULL,
  Year int DEFAULT NULL,
  Color varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Vehicle_ID`),
  UNIQUE KEY `Vehicle_ID_UNIQUE` (`Vehicle_ID`),
  KEY `Vehicle_ID` (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE sales_person (
  Staff_ID int NOT NULL,
  Name varchar(50) DEFAULT NULL,
  Position varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`),
  UNIQUE KEY `Staff_ID_UNIQUE` (`Staff_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE store (
  Store_ID int NOT NULL,
  Name varchar(45) DEFAULT NULL,
  RFC varchar(45) DEFAULT NULL,
  Email varchar(45) DEFAULT NULL,
  Address text,
  City varchar(45) DEFAULT NULL,
  State varchar(45) DEFAULT NULL,
  Country varchar(45) DEFAULT NULL,
  Zip_Code int DEFAULT NULL,
  PRIMARY KEY (`Store_ID`),
  UNIQUE KEY `Store_ID_UNIQUE` (`Store_ID`),
  KEY `Store_ID` (`Store_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `invoices` (
  `Invoice_number` int NOT NULL,
  `Date` date DEFAULT NULL,
  `Vehicle_ID` int DEFAULT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Staff_ID` int DEFAULT NULL,
  `Store_ID` int DEFAULT NULL,
  PRIMARY KEY (`Invoice_number`),
  UNIQUE KEY `Invoice_number_UNIQUE` (`Invoice_number`),
  KEY `Store_ID` (`Store_ID`),
  KEY `Staff_ID` (`Staff_ID`) ,
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Vehicle_ID` (`Vehicle_ID`),
  CONSTRAINT `Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `Staff_ID` FOREIGN KEY (`Staff_ID`) REFERENCES `sales_person` (`Staff_ID`),
  CONSTRAINT `Store_ID` FOREIGN KEY (`Store_ID`) REFERENCES `store` (`Store_ID`),
  CONSTRAINT `Vehicle_ID` FOREIGN KEY (`Vehicle_ID`) REFERENCES `inventory` (`Vehicle_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;









