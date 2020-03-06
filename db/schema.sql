DROP DATABASE IF EXISTS employeeTracker_DB;
CREATE DATABASE employeeTracker_DB;

USE employeeTracker_DB;

CREATE TABLE department (
    id INT(10) NOT NULL AUTO_INCREMENT,    
    name VARCHAR(50),
    PRIMARY KEY(id)
);

CREATE TABLE roles (
    id INT(10) AUTO_INCREMENT,
    title VARCHAR(50),
    salary DECIMAL(9,2),
    department_id INTEGER, 
    PRIMARY KEY(id)
    FOREIGN KEY(department_id)
    REFERENCES department(id)
);

CREATE TABLE employee (
    id INT(10) AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    role_id INT  NOT NULL, 
    manager_id INT,
    PRIMARY KEY(id),

    FOREIGN KEY(role_id),
    REFERENCES role(id),

    FOREIGN KEY(manager_id)
    REFERENCES employee(id)

);
