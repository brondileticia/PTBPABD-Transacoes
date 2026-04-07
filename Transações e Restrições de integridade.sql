-- ========================================
-- EXERCÍCIO 01
-- ========================================
CREATE SCHEMA avaliacaocontinua;

-- ========================================
-- EXERCÍCIO 02
-- ========================================
CREATE TABLE avaliacaocontinua.company (
    company_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    CONSTRAINT pk_company PRIMARY KEY (company_name)
);

-- ========================================
-- EXERCÍCIO 03
-- ========================================
CREATE TABLE avaliacaocontinua.employee (
    person_name VARCHAR(50) NOT NULL,
    street VARCHAR(50),
    city VARCHAR(50),
    CONSTRAINT pk_employee PRIMARY KEY (person_name)
);

-- ========================================
-- EXERCÍCIO 04
-- ========================================
CREATE TABLE avaliacaocontinua.manages (
    person_name VARCHAR(50) NOT NULL,
    manager_name VARCHAR(50),
    CONSTRAINT pk_manages PRIMARY KEY (person_name)
);


-- ========================================
-- EXERCÍCIO 05
-- ========================================
CREATE TABLE avaliacaocontinua.works (
    person_name VARCHAR(50) NOT NULL,
    company_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2),
    CONSTRAINT pk_works PRIMARY KEY (person_name)
);

-- ========================================
-- EXERCÍCIO 06
-- ========================================
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_works_employee
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON UPDATE CASCADE
ON DELETE CASCADE;

-- ========================================
-- EXERCÍCIO 07
-- ========================================
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_works_company
FOREIGN KEY (company_name) REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;


-- ========================================
-- EXERCÍCIO 08
-- ========================================
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_works_company
FOREIGN KEY (company_name) REFERENCES avaliacaocontinua.company(company_name)
ON UPDATE CASCADE
ON DELETE CASCADE;
