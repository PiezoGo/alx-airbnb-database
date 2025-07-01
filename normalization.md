# NORMALIZATION OF THE DATABASE ENTITIES
**Introduction**
This document outlines the normalization process and confirms that the database schema for the Airbnb Clone project adheres to the principles of Third Normal Form (3NF). The goal of normalization is to reduce data redundancy, prevent data anomalies (insertion, update, and deletion anomalies), and ensure data integrity.

Our database design was structured from the outset to be compliant with these principles.
## FIRST NORMAL FORM    
It involves ensuring that each table in the database has a primary key and that each column in the table contains atomic values. In other words, each row in the table should have a unique identifier, and each value in the table should be indivisible.
There seems to be no attribute that need to be broken down into smaller parts.
Each entity(Table) in our database has a Primary key hence we can move to 2NF!!

## SECOND NORMAL FORM
- It builds on the foundation of 1NF and involves ensuring that each non-key column in a table is dependent on the primary key. In other words, there should be no partial dependencies in the table.
- The primary key for every table  is a single column .
- Since there are no composite primary keys, there cannot be any partial dependencies. Therefore, the schema inherently meets the 2NF requirement.Introduction

## THIRD NORMAL FORM
- Third normal form (3NF) builds on the foundation of 2NF and involves ensuring that each non-key column in a table is not transitively dependent on the primary key. In other words, there should be no transitive dependencies in the table.
The airbnb clone database satisfies the 3NF
