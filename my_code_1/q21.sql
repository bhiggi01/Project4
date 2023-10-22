#
#------------------------------------------
# USE
#------------------------------------------
#
CREATE DATABASE hoteldb;
USE hoteldb;
#
#------------------------------------------
# QUERY
#------------------------------------------
#
# Write your query here. One query for the creation of each table - Lab 6 - Query (a)
#
# Query 21 - Uploaded
# Create hotel Table
CREATE TABLE hotel(
hotelNo int NOT NULL,
hotelName varchar(20) NOT NULL,
city varchar(20) DEFAULT "Dublin",
PRIMARY KEY(hotelNo)
);

# Create Room
CREATE TABLE room(
roomNo int NOT NULL,
hotelNo int NOT NULL,
type ENUM ("Single", "Double", "Twin", "Family") DEFAULT "Double",
price int DEFAULT 75,
PRIMARY KEY (roomNo, hotelNo));

# Create guest table
CREATE TABLE guest(
guestNo INT NOT NULL,
fName VARCHAR(20) NOT NULL,
lName VARCHAR(20) NOT NULL,
address VARCHAR(20),
city VARCHAR(20),
PRIMARY KEY(guestNo));

#Create Booking table.
CREATE TABLE booking(
guestNo INT NOT NULL,
hotelNo INT NOT NULL,
dateFrom DATE NOT NULL,
dateTo DATE NOT NULL,
roomNo INT NOT NULL,
PRIMARY KEY(guestno, hotelNo, datefrom));

#
# The queries below are used to check your query above.
#
DESC hotel;
#
DESC room;
#
DESC guest;
#
DESC booking;
#