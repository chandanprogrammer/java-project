CREATE DATABASE TollReceiptDB;

USE TollReceiptDB;
/* 
Microsoft SQL
Server name ---> CHANDAN\SQLEXPRESS 
Login ----> sa
Password ----> 8002

Settings...........
Sql Server Configuration Manger 
SQL Server Browser Running Automatic

// -------------- Useful resource link -------------
// jdbc jar download, upload on external libraries
// https://learn.microsoft.com/en-us/sql/connect/jdbc/download-microsoft-jdbc-driver-for-sql-server?view=sql-server-ver16#download
// setup sql server
// setup connect jdbc and java --->  https://www.youtube.com/watch?v=5n37c3VbOWg&t=753s

*/
create table CONFIG (TOKENKEY varchar(50));
insert into CONFIG (TOKENKEY) values ('T822@b58856vZ47m0745q6709k48H3481X76');

CREATE TABLE VEHICLE_NAME_RATE (VEHICLEID INT, VEHICLENAME VARCHAR(40), TOLLRATE INT, ISVISIBLE BIT);

INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (1, 'CAR-SINGLE', 125, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (2, 'LCV-SINGLE', 122, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (3, 'TRUCK/BUS-SINGLE', 425, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (4, '3-AXLE-SINGLE', 465, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (5, 'MVC-SINGLE', 670, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (6, 'OSV-SINGLE', 815, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (7, 'CAR-FASTag 2x', 250, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (8, 'LCV-FASTag 2x', 410, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (9, 'TRUCK/BUS-FASTag 2x', 850, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (10, '3-AXLE-FASTag 2x', 930, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (11, 'MAV-FASTag 2x', 1340, 1);
INSERT INTO VEHICLE_NAME_RATE (VEHICLEID, VEHICLENAME, TOLLRATE, ISVISIBLE) VALUES (12, 'OSV-FASTag 2x', 1630, 1);



SELECT * FROM VEHICLE_NAME_RATE;

CREATE TABLE RECEPT_DATA (
    SNO INT IDENTITY(1,1) PRIMARY KEY,
    USERCODE VARCHAR(20) NOT NULL,
    TRANSID VARCHAR(30) NOT NULL,
    LANEPATH VARCHAR(30) NOT NULL,
    VEHICLETYPE VARCHAR(40) NOT NULL,
    PAYMODE VARCHAR(30) NOT NULL,
    TOLLFARE INT NOT NULL,
    PENALITY INT NOT NULL,
    TOTALFARE INT NOT NULL,
    VEHREGNO VARCHAR(15) NOT NULL,
    DATETIMES VARCHAR(25) NOT NULL
);

INSERT INTO RECEPT_DATA (USERCODE, TRANSID, LANEPATH, VEHICLETYPE, PAYMODE, TOLLFARE, PENALITY, TOTALFARE, VEHREGNO, DATETIMES) 
VALUES ('USR123', 'TRANS456', 'Lane1', 'Car', 'Cash', 50, 10, 60, 'CG05AB1234', '2025-01-21 15:30:00');

DELETE FROM RECEPT_DATA;
