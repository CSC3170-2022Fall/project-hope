
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


DROP SCHEMA IF EXISTS `as2`;


CREATE SCHEMA IF NOT EXISTS `as2` DEFAULT CHARACTER SET utf8;
USE `as2`;

CREATE TABLE `consumer`
(
    `CONSUMER_ID` int(5),
    `CONSUMER_NAME` varchar(25),
    `PERSON_OR_COMPANY` boolean,
    `ADDRESS` varchar(10),
    primary key(`CONSuMER_ID`),

);

CREATE TABLE `package`
(
    `PACKAGE_ID` int(5) not null,
    `CONSUMER_ID` int(5),
    `TIME` DATE -- need to be defined
    `EXPENSE` int(8),
    primary key(`PACKAGE_ID`),
    foreign key(`CONSUMER_ID`),
);


CREATE TABLE `chip`
(
    `CHIP_ID` int(9),
    `PACKAGE_ID` int(5),
    `MACHINE_ID` int(5),
    `CHIP_TYPE_ID`int(5),
    primary key(`CHIP_ID`),
    foreign key(`PACKAGE_ID`),
    foreign key(`MACHINE_ID`),
    foreign key(`CHIP_TYPE_ID`),    
);

CREATE TABLE `chip_type`
(
    `CHIP_TYPE_ID`int(5),
    `OPERATION_NUMBER` int(5),
    `PRECEDENCY` varchar(10),
    `OPERATION_TYPES` varchar(5),
    primary key(`CHIP_TYPE_ID`),
);

CREATE TABLE `operation_type`
(
    `OPERATION_TYPE_ID` int(10),
    `FEASIBILITY` boolean,
    `TIME_COST` int(5),
    `COST` int(8),
    primary key(`OPERATION_TYPE_ID`),
);

CREATE TABLE `operation`
(
    `OPERATION_ID` int(20),
    `OPERATION_TYPE_ID` int(10),
    primary key(`OPERATION_ID`),
    foreign key(`OPERATION_TYPE_ID`),
);

CREATE TABLE `processing_record`
(
    `PROCESSING_RECORD_ID` int(10),
    `START_TIME` DATE,
    `END_TIME` DATE,
    `OPERATION_ID` int(20),
    `MACHINE_ID` int(5),    
    `PLANNED_OR_ACTUAL` boolean,
    primary key(`PROCESSING_RECORD_ID`),
    foreign key(`OPERATION_ID`),
    foreign key(`MACHINE_ID`),
);

CREATE TABLE `plant`
(
    `PLANT_ID` int(5),
    `MACHINE_TYPE_ID` int(10),
    `MACHINE_NUMBER` int(5),
    `ADDRESS` varchar(10),
    `NAME` varchar(25),
    primary key(`PLANT_ID`),
    foreign key(`MACHINE_TYPE_ID`),
);

CREATE TABLE `machine`
(
    `MACHINE_ID` int(6),
    `MACHINE_TYPE_ID` int(10),
    `PLANT_ID` int(5),
    `STATUS` boolean,
    primary key(`MACHINE_ID`),
    foreign key(`MACHINE_TYPE_ID`),
    foreign key(`PLANT_ID`),
);

CREATE TABLE `machine_type`
(
    `MACHINE_TYPE_ID` int(10),
    `OPERATION_TYPE_ID` int(10),
    primary key(`MACHINE_TYPE_ID`),
    foreign key(`OPERATION_TYPE_ID`),
);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
