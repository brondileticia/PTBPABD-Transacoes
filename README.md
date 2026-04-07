# Atividade de Banco de Dados - Schema e Tabelas

## 📚 Contexto

Esta atividade foi desenvolvida para a disciplina de **Programação e Administração de Banco de Dados**. O objetivo é criar um schema e tabelas para gerenciar informações de empresas, funcionários, relações de trabalho e gerência, aplicando conceitos de:

- Criação de SCHEMA
- Criação de tabelas com PRIMARY KEY
- Integridade referencial com FOREIGN KEY
- Ações em cascata (ON DELETE CASCADE, ON UPDATE CASCADE)

## 📁 Estrutura do Banco de Dados

### Schema: `avaliacaocontinua`

### Tabelas criadas:

| Tabela | Descrição | Campos |
|--------|-----------|--------|
| `company` | Empresas | company_name (PK), city |
| `employee` | Funcionários | person_name (PK), street, city |
| `manages` | Relação de gerência | person_name (PK), manager_name |
| `works` | Relação de trabalho | person_name (PK), company_name, salary |

## 🔧 Constraints criadas

| Questão | Tipo | Nome | Comportamento |
|---------|------|------|---------------|
| 02 | PRIMARY KEY | (implícito) | company_name único e NOT NULL |
| 03 | PRIMARY KEY | (implícito) | person_name único e NOT NULL |
| 04 | PRIMARY KEY | (implícito) | person_name único e NOT NULL |
| 05 | PRIMARY KEY | (implícito) | person_name único e NOT NULL |
| 06 | FOREIGN KEY | fk_person_name | ON DELETE CASCADE, ON UPDATE CASCADE |
| 07 | FOREIGN KEY | fk_company_name | ON DELETE CASCADE, ON UPDATE CASCADE |
| 08 | FOREIGN KEY | fk_manages_person_name | ON DELETE CASCADE |

## 📝 Especificações técnicas

| Item | Especificação |
|------|---------------|
| Tipo de dados - company_name | CHAR(15) |
| Tipo de dados - person_name | CHAR(20) |
| Tipo de dados - city/street | CHAR(30) |
| Tipo de dados - salary | INTEGER |
| Schema | avaliacaocontinua |
