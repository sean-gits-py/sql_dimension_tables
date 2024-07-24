# SQL dimension tables

List of SQL scripts to generate data used for commonly needed dimension tables.


## Dimension Tables

Dim Table | Script| Overview
:-- | :--: | :--:
Date| tbd_date_dim.py | A SQL date dimension table is used to store and manage date-related information in a structured manner, facilitating efficient querying and reporting in data warehousing and business intelligence systems. It provides a comprehensive set of date attributes (e.g., year, quarter, month, week, day) that can be used to join with fact tables, enabling detailed time-based analysis. By centralizing date attributes, it ensures consistency and reduces redundancy across different reports and analyses.


## Data Modeling Basics

Type | Overview | Resource
:-- | :--: | :--:
Conceptual | This is the high-level, abstract representation of the data and its relationships, focusing on the business perspective. It outlines the main entities and their relationships without getting into detailed attributes or data types, providing a big-picture view for stakeholders | tbd
Logical | Model translates the conceptual model into a more detailed structure, defining the specific attributes, data types, and relationships among entities. It serves as a blueprint for the database structure, focusing on the logical organization of the data without considering physical implementation details. | tbd
Physical | Describes how the data will be stored in the database, including tables, columns, data types, indexes, and constraints. It incorporates performance considerations and specific database management system (DBMS) features, detailing the actual implementation of the logical model in the chosen database platform. | tbd
