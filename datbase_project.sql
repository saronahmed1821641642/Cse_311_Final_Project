Create table Administrator
(
Admin_ID varchar(5) primary key,
Admin_name varchar(25) NOT NULL
)
Create table Registration
(
user_ID Varchar(5),
user_NAME Varchar(30) NOT NULL,
user_Dob varchar(30),
phone int NOT NULL,
email Varchar(15),
password varchar(30) not null,
Constraint pk_1 PRIMARY KEY(user_ID)
); 

Create table Users(
user_ID varchar(5) primary key,
user_NAME Varchar(30) NOT NULL,
user_Dob varchar(30),
email Varchar(15) NOT NULL
Constraint fk_1 FOREIGN KEY(user_ID)
references Registration(user_ID)
)

Create table Login
(
user_ID varchar(5) primary key, 
password varchar(8)
Constraint fk_3 FOREIGN KEY (user_ID)
references Registration(user_ID)
)
Create table forget_password
(
user_ID varchar(5) primary key,
previous_password varchar(8),
new_password varchar(8)
Constraint fk_4 FOREIGN KEY (user_ID)
references Registration(user_ID)
)

create table Payment(
user_ID varchar(5) NOT NULL,
card_pin int not null,
card_info varchar(30),
Constraint pk_2 PRIMARY KEY(user_ID,card_pin,card_info)
);
 

 create table kid(
 user_ID Varchar(5),
 user_Dob varchar(30),
 Constraint fk_2 foreign key(user_id,user_Dob)
 );

create table adult(
 user_ID Varchar(5),
 user_Dob varchar(30),

Constraint fk_2 foreign key(user_id,user_Dob)
 );

 Create table Media
 ( 
 movie_name varchar(100),
 movie_data varchar(300),
 movie_size decimal(12,2),
 movie_duration decimal(6,2),
 movie_cast varchar(300),
 movie_rating decimal(4,2),
 user_ID Varchar(5),
 Admin_ID varchar(5)
 Constraint fk_5 foreign key(user_id,Admin_ID)
 );

