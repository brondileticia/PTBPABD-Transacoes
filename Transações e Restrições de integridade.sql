-- ============================================================================
-- ATIVIDADE DE BANCO DE DADOS - SCHEMA E TABELAS
-- ============================================================================

-- ============================================================================
-- QUESTÃO 01: Criar SCHEMA
-- ============================================================================
CREATE SCHEMA avaliacaocontinua;

-- ============================================================================
-- QUESTÃO 02: Criar tabela company
-- ============================================================================
CREATE TABLE avaliacaocontinua.company (
    company_name CHAR(15) NOT NULL,
    city CHAR(30),
    PRIMARY KEY (company_name)
);

-- ============================================================================
-- QUESTÃO 03: Criar tabela employee
-- ============================================================================
CREATE TABLE avaliacaocontinua.employee (
    person_name CHAR(20) NOT NULL,
    street CHAR(30),
    city CHAR(30),
    PRIMARY KEY (person_name)
);

-- ============================================================================
-- QUESTÃO 04: Criar tabela manages
-- ============================================================================
CREATE TABLE avaliacaocontinua.manages (
    person_name CHAR(20) NOT NULL,
    manager_name CHAR(20),
    PRIMARY KEY (person_name)
);

-- ============================================================================
-- QUESTÃO 05: Criar tabela works
-- ============================================================================
CREATE TABLE avaliacaocontinua.works (
    person_name CHAR(20) NOT NULL,
    company_name CHAR(15) NOT NULL,
    salary INTEGER,
    PRIMARY KEY (person_name)
);

-- ============================================================================
-- QUESTÃO 06: FK entre works e employee
-- ============================================================================
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_person_name
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- ============================================================================
-- QUESTÃO 07: FK entre works e company
-- ============================================================================
ALTER TABLE avaliacaocontinua.works
ADD CONSTRAINT fk_company_name
FOREIGN KEY (company_name) REFERENCES avaliacaocontinua.company(company_name)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- ============================================================================
-- QUESTÃO 08: FK entre manages e employee
-- ============================================================================
ALTER TABLE avaliacaocontinua.manages
ADD CONSTRAINT fk_manages_person_name
FOREIGN KEY (person_name) REFERENCES avaliacaocontinua.employee(person_name)
ON DELETE CASCADE;