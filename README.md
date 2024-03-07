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

![1](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/296da71d-93b3-4920-812b-0a924a8000c4)


2] Give them username and password


![2](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/501dfcab-6ac7-4d4c-84a3-9f3b9fd67184)



3] create the database 


![3](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/2125c7e6-1384-44f1-afb3-643d3a8b45cb)


# Step-2 

1] Created The EC2 instance 

![4](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/c7add2e4-a983-4f93-8874-67c40f88f46b)


2] Connected The Compute resource(Ec2) to The Relational database servuice (RDS)


![6](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/971284a7-c340-460e-a057-921e8efe4915)


3] setup the Ec2 connection 

![5](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/b5ed607f-ec6f-4643-95c2-309498e82cf6)


![6](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/664407b9-509d-49f6-b396-a42649e3f73d)


4] Connection Details 


![9](https://github.com/AdityaAgasti007/AWS-Infrastructure-Setup/assets/159541012/7c7f0da2-2478-40ca-ba65-417775fda8ea)


5] Setup And install mysql-client


![10](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/a32685c8-f7b3-42ac-8699-7a1527f42c89)

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


![7](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/c1d6bd4e-ed6a-4ca2-a4bc-600fe724efe6)


![8](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/8b7486dd-fc6d-44e2-ba0f-b2e4376e15ef)

2] Modified the IAM roles In Ec2 instace 


![9](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/25056b66-b20c-4e65-8669-c7174abe1905)



# Step-3

1] Performed The Operations On database 



![11](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/c8829f19-947c-442f-9c4e-2be6d0314191)

```bash
$ create database pranavdb;
```
created the datbase 
```bash
$ use pranavdb;
```
selected the database 
```bash
$ CREATE TABLE Class ( Student-id INT,  Student-name VARCHAR(30));
```
create the table 
```bash
$ select * from learners
```
select the table 
```bash
$ insert into Class ( Student_id, Student_name) values ( 1, "pranav" );
```
inserted data into table 
```bash
$ select * from Class;
```
check the table if data is added or not 

# Step -4 
## Cloudwatch

Amazon CloudWatch is a monitoring and observability service provided by Amazon Web Services (AWS). It allows you to collect and track metrics, collect and monitor log files, set alarms, and automatically react to changes in your AWS resources. CloudWatch provides insights into your applications, infrastructure, and services running on AWS.


![307601960-8f967b4c-cf08-4f49-b6eb-75ddf6f27767](https://github.com/pranavsk313/Infra-setup-AWS/assets/122976840/95e03428-17f7-45a1-a267-670203386694)








