
### Authors:

    Sam, Nathan & Alex


# Final Project Goals and Requirements
### Academy Requirements
- [ ] Set up monitoring / logging and alerting so that disruptions to supply are quickly resolved.
- [ ] Highly available, no lost data.
- [ ]  All infrastructure is Infrastructure as Code, allowing for easily replicating the infrastructure. The choice of IAC is up to the cohort.
- [ ]  The project is well documented, allowing for an easy handover to the client
### Goals
- [ ]  Use Snowflake or AWS data warehousing solutions.
- [ ]  Minimum delay between data being produced and being available for analysis.
- [ ]  Does not crash when encountering malformed data or data in different formats.
- [ ]  Data is visualised in graphs.
- [ ]  85% coverage
### Project Requirements
- Data on 
    - [ ]  Total sales per day
    - [ ]  Total sales per week
    - [ ]  Most profitable day of the week
    - [ ]  Best selling drink by location
    - [ ]  Best selling food item by location
    - [ ]  Calories 
    - [ ]  Busiest hour by location
    - [ ]  Perform your own analysis and provide any business insights that you find.
### Stretch goals
- [ ]  Use Auto Scaling Groups to avoid disruption to supply
- [ ]  Provide near live updates

# if-coffee-then-break POC
The POC of the 'if-coffee-then-break' project. An ETL Python programmed to clean raw cafe data and load to an RDS instance of a SQL DB.


### Requirements: 

    PyMySQL==0.9.3

### Input: 

>(633, datetime.datetime(2020, 5, 18, 15, 46, 1), 'Isle of Wight', 'Oscar Ohara', ' Frappes - Chocolate Cookie', Decimal('2.75'), 'CASH', None)

### Input SQL table format:
> INSERT INTO drinks_menu (column1, column2, column3, column4) VALUES (value1, value2, value3, value4);

> INSERT INTO locations (column1, column2) VALUES (value1, value2);

### Output: 

>(datetime.date(2020, 5, 18), datetime.time(15, 46, 1), 'Isle of Wight', 'Oscar', 'Ohara', 'Regular', 'Frappe', 'Chocolate Cookie', 2.75, 'Cash', None)

### Output SQL table generating queries:

>CREATE DATABASE poc_data;

>CREATE TABLE clean_transactions (id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, date DATE NOT NULL, transaction_time TIME NOT NULL, location VARCHAR(50) NOT NULL, firstname VARCHAR(50) NOT NULL, lastname VARCHAR(50) NOT NULL, drink_order VARCHAR(200) NOT NULL, total_price DECIMAL(10,2), method VARCHAR(4) NOT NULL, ccn VARCHAR(20));

>CREATE TABLE drink_menu (id INT AUTO_INCREMENT PRIMARY KEY NOT NULL, drink_name VARCHAR(100) NOT NULL , drink_size VARCHAR(50), drink_flavour VARCHAR(50), price DECIMAL NOT NULL);

>ALTER TABLE drink_menu ADD UNIQUE unique_index (drink_name,drink_size,drink_flavour);# ICTB
