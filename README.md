# AWS-Infrastructure-Setup
Provisioning of an AWS Infrastructure Stack with RDS MySQL Database, EC2 Compute Instance, and Secured Data Access via IAM Roles 
# Architecture Of Project 

![Architecture-Of-Project](https://github.com/AdityaAgasti07/AWS-Infrastructure-Setup/assets/159541012/698afe46-70bd-4a3b-a2f6-18d2e6621803)


## RDS- Relational Database Service
RDS stands for Relational Database Service. It is a managed database service offered by Amazon Web Services (AWS) that provides easy setup, scaling, and management of relational databases such as MySQL, PostgreSQL, SQL Server, and Oracle.
## Key benefits of using RDS include:
1] (Ease of Administration): RDS automates administrative tasks such as hardware provisioning, database setup, patching, and backups.

2] (Scalability): It allows you to easily scale your database instance vertically or horizontally based on your application's needs.

3] (High Availability): RDS offers features like automated backups, multi-AZ deployments, and read replicas to ensure high availability and fault tolerance.

4] (Security): RDS provides security features such as encryption at rest and in transit, network isolation, and IAM integration for access control.

5] (Cost-Effectiveness): It offers a pay-as-you-go pricing model, allowing you to pay only for the resources you use without any upfront costs.

# Step-1


1] Created The RDS database called MySQL


![1](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/c062377e-be26-40aa-a7a5-274b3a24f365)


2] Give them username and password


![2](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/513d291c-c6f8-46c0-855b-c0046cc6aea1)


3] Authenticated the password 


![3](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/f1fd35f6-85a5-4947-92e5-4eb56f87cd9f)


4] create the database 


![4](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/e77fcfd8-dd2f-4d85-aae5-00217f03820b)


# Step-2 

1] Created The EC2 instance 


![5](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/1f5a024c-3ec4-4370-a0d6-b8430c7265f6)


2] Connected The Compute resource(Ec2) to The Relational database servuice (RDS)


![6](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/971284a7-c340-460e-a057-921e8efe4915)


3] setup the Ec2 connection 


![7](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/70304bdc-0dd4-4fb9-b1b4-c7d2d6e4a024)


![8](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/84b71f03-6096-4fda-95a9-adbbc4b50f6d)


4] Connection Details 


![9](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/7c7f0da2-2478-40ca-ba65-417775fda8ea)


5] Setup And install mysql-client


![10](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/a82b88e3-3bab-4e3f-b589-c3cc116731b7)

```bash
$ sudo apt install mysql-client
```
Installed the mysql-client on Ec2 instance 
```bash
$ mysql -u admin -h <endpoint of RDS> -P <port-no> -p
```
6] Setup the connection between mysql databse and ec2 instace using above command

## MySQL-client

The MySQL client is a command-line tool that allows users to interact with MySQL database servers. It enables you to execute SQL queries, manage databases, tables, users, and perform various administrative tasks. The MySQL client provides a simple yet powerful interface for working with MySQL databases directly from the command line.

# Step-3 

## IAM 
IAM stands for Identity and Access Management. It's a crucial component of many cloud computing platforms, including Amazon Web Services (AWS), Google Cloud Platform (GCP), and Microsoft Azure. IAM allows you to manage access to various resources within your cloud environment securely.

## IAM Roles
IAM roles are a fundamental concept within IAM frameworks, particularly in AWS. IAM roles define a set of permissions that determine what actions can be performed on which resources. Roles can then be assumed by entities within the cloud environment, such as users, applications, or services. By assuming a role, an entity temporarily receives the permissions associated with that role.

1] Created the IAM roles For EC2 instance to Give full Access of RDS and CLoudwatch


![11](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/113f0ff7-2f29-4979-9d9a-e5fe018d2795)


![12](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/b9c2a262-da93-4bfd-ad96-0f1ef075cd75)

2] Modified the IAM roles In Ec2 instace 


![13](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/a9637f70-af6b-4848-8edd-9c393954e4bf)


![14](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/45d15287-8fb7-4be1-a4fb-3bb9c07b0f03)

# Step-3

1] Performed The Operations On database 


![15](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/10ff3246-c5d3-4089-92f7-3b3cf96a63d4)
```bash
$ create database aws;
```
created the datbase 
```bash
$ use aws;
```
selected the database 
```bash
$ CREATE TABLE learners ( learner-id INT,  learner-name VARCHAR(50));
```
create the table 
```bash
$ select * from learners
```
select the table 
```bash
$ insert into learners ( learner_id, learner_name) values ( 1, "aditya" );
```
inserted data into table 
```bash
$ select * from learners;
```
check the table if data is added or not 

# Step -4 
## Cloudwatch

Amazon CloudWatch is a monitoring and observability service provided by Amazon Web Services (AWS). It allows you to collect and track metrics, collect and monitor log files, set alarms, and automatically react to changes in your AWS resources. CloudWatch provides insights into your applications, infrastructure, and services running on AWS.

![16](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/8f967b4c-cf08-4f49-b6eb-75ddf6f27767)









