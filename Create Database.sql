CREATE DATABASE IF NOT EXISTS `cryptomania` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE cryptomania;

CREATE TABLE IF NOT EXISTS `cryptomania`.`user` (
  `userID` INT NOT NULL,
  `userName` VARCHAR(45) NOT NULL,
  `userPassword` VARCHAR(45) NOT NULL,
  `userEmailAddress` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`userID`));

CREATE TABLE IF NOT EXISTS `cryptomania`.`cryptocurrency` (
  `cryptoID` INT NOT NULL,
  `cryptoName` VARCHAR(45) NOT NULL,
  `cryptoCurrentValue` FLOAT NOT NULL,
  `cryptoCurrentDate` DATE NOT NULL,
  `dailyPercentChange` FLOAT NOT NULL,
  `weekPercentChange` FLOAT NOT NULL,
  `marketCap` INT NOT NULL,
  `volume` INT NOT NULL,
  PRIMARY KEY (`cryptoID`));
  
CREATE TABLE IF NOT EXISTS `cryptomania`.`forum topic` (
  `topicID` INT NOT NULL,
  `topicUserID` INT NOT NULL,
  `topicTitle` VARCHAR(45) NOT NULL,
  `topicCreationDate` DATE NOT NULL,
  `topicUpdatedDate` DATE NOT NULL,
  `postID` INT NOT NULL,
  PRIMARY KEY (`topicID`),
  CONSTRAINT `userID`
  FOREIGN KEY (`topicUserID`)
  REFERENCES `cryptomania`.`user` (`userID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `cryptomania`.`forum post` (  
  `postID` INT NOT NULL,
  `postUserID` INT NOT NULL,
  `postTitle` VARCHAR(45) NOT NULL,
  `postCreationDate` DATE NOT NULL,
  `postUpdatedDate` DATE NOT NULL,
  PRIMARY KEY (`postID`),
  CONSTRAINT `userID`
  FOREIGN KEY (`postUserID`)
  REFERENCES `cryptomania`.`user` (`userID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION);
  