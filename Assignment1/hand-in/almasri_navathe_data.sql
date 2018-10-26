-- create db tables

DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
    fname text NOT NULL,            -- first name
    minit text,                     -- middle initial
    lname text  NOT NULL,           -- last name
    ssn text NOT NULL UNIQUE,    -- social security number
    bdate text NOT NULL,            -- birth date
    address text NOT NULL,          -- address of employee
    sex text,                       -- sex of employee
    salary integer,                 -- salary of employee
    superssn text,               -- supervisors ssn
    dno integer,                    -- department number
    primary key (ssn)
);

DROP TABLE IF EXISTS department;
CREATE TABLE department(
    dname text NOT NULL UNIQUE,     -- department name
    dnumber integer NOT NULL UNIQUE,   -- department number
    mgrssn text NOT NULL,           -- managers ssn
    mgrstartdate text NOT NULL,     -- managers start date
    primary key (dnumber)
);

DROP TABLE IF EXISTS dept_locations;
CREATE TABLE dept_locations(
    dnumber integer NOT NULL,       -- department number
    dlocation text NOT NULL,        -- department location
    primary key (dnumber, dlocation)
);

DROP TABLE IF EXISTS project;
CREATE TABLE project(
    pname text NOT NULL,            -- project name
    pnumber integer NOT NULL UNIQUE,-- project number
    plocation text NOT NULL,        -- project location
    dnum integer NOT NULL,          -- department number
    primary key (pnumber)
);

DROP TABLE IF EXISTS works_on;
CREATE TABLE works_on(
    essn text NOT NULL,          -- employee ssn
    pno integer NOT NULL,           -- project number
    hours real,            -- hours worked on project
    primary key (essn, pno)
);

DROP TABLE IF EXISTS dependent;
CREATE TABLE dependent(
    essn text NOT NULL,
    dpendent_name text NOT NULL,
    sex text NOT NULL,
    bdate text NOT NULL,
    relationship text NOT NULL,
    primary key (essn, dpendent_name)
);

-- employee insert scripts

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'John',
    'B',
    'Smith',
    '123456789',
    '9-Jan-55',
    '713 Fondern',
    'M',
    30000,
    '333445555',
    5
);

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'Franklin',
    'T',
    'Wong',
    '333445555',
    '8-Dec-45',
    '638 Voss',
    'M',
    40000,
    '888665555',
    5
);

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'Alicia',
    'J',
    'Zelaya',
    '999887777',
    '19-Jul-58',
    '3321 Castle',
    'F',
    25000,
    '987987987',
    4
);

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'Jennifer',
    'S',
    'Wallace',
    '987654321',
    '20-Jun-31',
    '291 Berry',
    'F',
    43000,
    '888665555',
    4
);

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'Ramesh',
    'K',
    'Narayan',
    '66688444',
    '15-Sep-52',
    '975 Fire Oak',
    'M',
    38000,
    '333445555',
    5
);

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'Joyce',
    'A',
    'English',
    '453453453',
    '31-Jul-62',
    '5631 Rice',
    'F',
    25000,
    '333445555',
    5
);

insert or replace into employee(
    fname,
    minit,
    lname,
    ssn,
    bdate,
    address,
    sex,
    salary,
    superssn,
    dno
) values (
    'James',
    'E',
    'Borg',
    '88866555',
    '10-Nov-27',
    '450 Stone',
    'M',
    55000,
    NULL,
    1
);

-- department insert scripts

insert or replace into department(
    dname,
    dnumber,
    mgrssn,
    mgrstartdate
) values (
    'Research',
    5,
    333445555,
    '22-May-78'
);

insert or replace into department(
    dname,
    dnumber,
    mgrssn,
    mgrstartdate
) values (
    'Administration',
    4,
    '987654321',
    '1-Jan-85'
);

insert or replace into department(
    dname,
    dnumber,
    mgrssn,
    mgrstartdate
) values (
    'Headquarters',
    1,
    '888665555',
    '19-Jun-71'
);

-- dept_locations instert script

insert or replace into dept_locations(
    dnumber,
    dlocation
) values (
    1,
    'Houston'
);

insert or replace into dept_locations(
    dnumber,
    dlocation
) values (
    4,
    'Stafford'
);

insert or replace into dept_locations(
    dnumber,
    dlocation
) values (
    5,
    'Bellaire'
);

insert or replace into dept_locations(
    dnumber,
    dlocation
) values (
    5,
    'Sugarland'
);

insert or replace into dept_locations(
    dnumber,
    dlocation
) values (
    5,
    'Houston'
);

-- works_on instert script

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '123456789',
    1,
    32.5
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '123456789',
    2,
    7.5
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '666884444',
    3,
    40
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '453453453',
    1,
    20
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '453453453',
    2,
    20
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '333445555',
    2,
    10
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '333445555',
    3,
    10
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '333445555',
    10,
    10
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '999887777',
    30,
    30
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '999887777',
    10,
    10
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '987987987',
    10,
    35
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '987987987',
    30,
    5
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '987654321',
    30,
    20
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '987654321',
    20,
    15
);

insert or replace into works_on(
    essn,
    pno,
    hours
) values (
    '888665555',
    20,
    NULL
);

-- project insert script

insert or replace into project(
    pname,
    pnumber,
    plocation,
    dnum
) values (
    'ProductX',
    1,
    'Bellaire',
    5
);

insert or replace into project(
    pname,
    pnumber,
    plocation,
    dnum
) values (
    'ProductY',
    2,
    'Sugarland',
    5
);

insert or replace into project(
    pname,
    pnumber,
    plocation,
    dnum
) values (
    'ProductZ',
    3,
    'Houston',
    5
);

insert or replace into project(
    pname,
    pnumber,
    plocation,
    dnum
) values (
    'Computerization',
    10,
    'Stafford',
    4
);

insert or replace into project(
    pname,
    pnumber,
    plocation,
    dnum
) values (
    'Reorganization',
    20,
    'Houston',
    1
);

insert or replace into project(
    pname,
    pnumber,
    plocation,
    dnum
) values (
    'NewBenefits',
    30,
    'Stafford',
    4
);

-- dependent insert script

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '333445555',
    'Alice',
    'F',
    '5-Apr-76',
    'DAUGHTER'
);

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '333445555',
    'Theodore',
    'M',
    '25-Oct-73',
    'SON'
);

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '333445555',
    'Joy',
    'F',
    '3-May-48',
    'SPOUSE'
);

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '987654321',
    'Abner',
    'M',
    '29-Feb-32',
    'SPOUSE'
);

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '123456789',
    'mICHAEL',
    'M',
    '1-Jan-78',
    'SON'
);

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '123456789',
    'Alice',
    'F',
    '31-Jan-78',
    'DAUGHTER'
);

insert or replace into dependent(
    essn,
    dpendent_name,
    sex,
    bdate,
    relationship
) values (
    '123456789',
    'Elizabeth',
    'F',
    '5-May-57',
    'SPOUSEs'
);



















--
