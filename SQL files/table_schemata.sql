drop table department;
CREATE TABLE "department" (
    "id" INTEGER,
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_department" PRIMARY KEY (
        "id"
     )
);
select * from department;

drop table department_employees;
CREATE TABLE "department_employees" (
    "id" INTEGER   NOT NULL,
    "emp_no" integer   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_department_employees" PRIMARY KEY (
        "id"
     )
);

select * from department_employees; 

drop table department_managers;

CREATE TABLE "department_managers" (
    "id" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" integer   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_department_managers" PRIMARY KEY (
        "id"
     )
);
select * from department_managers; 

drop table employees;
CREATE TABLE "employees" (
    "id" INTEGER   NOT NULL,
    "emp_no" integer   NOT NULL,
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "id"
     )
);

select * from employees; 

drop table salaries;

CREATE TABLE "salaries" (
    "id" INTEGER   NOT NULL,
    "emp_no" integer   NOT NULL,
    "salary" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "id"
     )
);

select * from salaries; 

drop table titles;
CREATE TABLE "titles" (
    "id" INTEGER   NOT NULL,
    "emp_no" integer   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "id"
     )
);
select * from titles;