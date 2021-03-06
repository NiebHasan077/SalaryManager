--alter session set "_ORACLE_SCRIPT"=true;

DROP TABLE CONTACT;

CREATE TABLE CONTACT(
    EMAIL VARCHAR(30)  PRIMARY KEY,
    PHONE_NO NUMBER(15) NOT NULL
);

DROP TABLE JOBS;

CREATE TABLE JOBS(
    JOB_ID NUMBER(10)  PRIMARY KEY,
    JOB_TITLE VARCHAR(30),
    BASE_SALARY NUMBER(10) NOT NULL
);

DROP TABLE LOCATIONS;

CREATE TABLE LOCATIONS(
    LOCATION_ID NUMBER(10)  PRIMARY KEY,
    POSTAL_CODE NUMBER(10),
    STREET_ADDRESS VARCHAR (30),
    CITY VARCHAR (20),
    COUNTRY VARCHAR(20)
);

DROP TABLE DEPARTMENTS;

CREATE TABLE DEPARTMENTS(
    DEPARTMENT_ID NUMBER(10) ,
    DEPARTMENT_NAME VARCHAR(25) NOT NULL,
    MANAGER_ID NUMBER(10) NOT NULL,
    LOCATION_ID NUMBER(10) ,
    PRIMARY KEY (DEPARTMENT_ID)
);
    
DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE(
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(30)  ,
    JOB_ID NUMBER(10) NOT NULL,
    SALARY NUMBER(10) NOT NULL,
    MARITAL_STATUS VARCHAR(15),
    GENDER VARCHAR(12) NOT NULL,
    DEPARTMENT_ID NUMBER(10)  ,
    MANAGER_ID NUMBER(10)  ,
    EMPLOYEE_ID NUMBER(10)  ,
    PRIMARY KEY (EMPLOYEE_ID)
       
);



DROP TABLE JOB_HISTORY;

CREATE TABLE JOB_HISTORY(
    EMPLOYEE_ID NUMBER(10) ,
    START_DATE DATE,
    END_DATE DATE,
    JOB_ID NUMBER(10) ,
    DEPARTMENT_ID NUMBER(10),
    PRIMARY KEY( EMPLOYEE_ID) 
);

DROP TABLE ACCOUNT;

CREATE TABLE ACCOUNT(
    EMPLOYEE_ID NUMBER(10) ,
    PASSWORD VARCHAR(20) NOT NULL UNIQUE,
    BALANCE NUMBER(10) DEFAULT 0,
    PRIMARY KEY (EMPLOYEE_ID)
    
);
    