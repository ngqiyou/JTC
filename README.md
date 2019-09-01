# JTC

Talend jobs (Local_Project2 folder)
1. JTC_1loadData >> load into MongoDB records found in RawData folder
2. JTC_2exportPipe >> transform and export records from MongoDB into a pipe-delimited file (out.txt)
3. JTC_3loadDB >> load records from out.txt into a MySQL database

MySQL (SQL folder)
4. DDL-DML_MySQL.sql >> Queries to create dimension tables and insert records into MySQL database
5. JTC.sql >> Queries to return "Expected Result 1 and 2"
