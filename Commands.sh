# Commands to run On Ec2 instance 
 sudo apt-get update
# command to install database client for communication
 sudo apt install mysql-client

# command to setup connection between EC2 and RDS
 mysql -u <username-of-database> -h <endpoint-of-RDS> -P <port-no-database> -p

# commands to create database and insert data into database 
 create database <database-name>;
 show databases;
 use <database-name>;
 CREATE TABLE learners ( learner_id INT, learner_name VARCHAR(50) );
 select * from learners;
 insert into learners ( learner_id,  learner_name ) values ( 1, "aditya" );
 select * from learners;
