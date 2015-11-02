USE master
GO

if exists(SELECT * from sysdatabases WHERE name = 'dbLibrary' )
DROP database dbLibrary
GO

CREATE DATABASE dbLibrary
GO

USE dbLibrary 
GO

Create Table Book
(
BookID int NOT NULL PRIMARY KEY,
Title Varchar(75) NOT NULL,
PublisherName varchar(50)
)
GO

INSERT INTO Book (BookID , Title , PublisherName)
VALUES (1,'The Lost Tribe','Crazy Publishing'),
	(2,'Harry Potter 1', 'New Sorcery Publishing'),
	(3,'Harry Potter 2', 'New Sorcery Publishing'),
	(4,'Harry Potter 3', 'New Sorcery Publishing'),
	(5,'Harry Potter 4', 'New Sorcery Publishing'),
	(6,'Harry Potter 5', 'New Sorcery Publishing'),
	(7,'The Shining','Doubleday'),
	(8,'Holy Bible','Old Book'),
	(9,'To Kill a Mockingbird','Old Book'),
	(10,'How to Book','Reading'),
	(11,'Hunger Games','Mmm'),
	(12,'iPhone Manual','Apple'),
	(13,'Android Manual','Google'),
	(14,'How to Rule the World','Google'),
	(15,'How to Rule the World Pt2','Apple'),
	(16,'I Already Rule the World','Microsoft'),
	(17,'Star Wars: Revenge of the Sith','George Lucas Studios'),
	(18,'Star Wars: Return of the Jedi','George Lucas Studios'),
	(19,'Star Wars: A New Hope','George Lucas Studios'),
	(20,'Star Wars: Vader','George Lucas Studios')



Create Table Book_Authors
(
BookID int NOT NULL PRIMARY KEY,
AuthorName Varchar(60)NOT NULL
)
GO

INSERT INTO Book_Authors (BookID, AuthorName)
VALUES (1,'Christy Looker'),
	(2,'J K Rowling'),
	(3,'J K Rowling'),
	(4,'J K Rowling'),
	(5,'J K Rowling'),
	(6,'J K Rowling'),
	(7,'Stephen King'),
	(8,'Various Authors'),
	(9,'Birdy'),
	(10,'Howie'),
	(11,'Hungry Hungarian'),
	(12,'Tim Cook'),
	(13,'Kit Kat'),
	(14,'Googlian'),
	(15,'Steve Jobs'),
	(16,'Bill Gates'),
	(17,'George Lucas'),
	(18,'George Lucas'),
	(19,'George Lucas'),
	(20,'George Lucas')



Create Table Publisher
(
Name Varchar(50)NOT NULL,
[Address] varchar(100),
Phone varchar(20)
)
GO

INSERT INTO Publisher (Name,[Address],Phone)
VALUES ('Crazy Publishing','1119 NE 2nd', '5031930239'),
	('New Sorcery Publishing','392 NW 4th','5413339999'),
	('Doubleday','320 S 122nd Ave','7023392201'),
	('Old Book','554 North 9th','2021111999'),
	('Reading','290 N Brown','4840029333'),
	('Mmm','555 Jake','5542920101'),
	('Apple','444 Infinity Loop','5402220111'),
	('Google','432 N 65th','4442220000'),
	('Microsoft','3021 West Mint','4392019311'),
	('George Lucas Studios','4433 Lighsaber Ln','4483992299')



Create Table Book_Copies
(
BookID int NOT NULL,
BranchID int NOT NULL,
No_Of_Copies int
)
GO 

INSERT INTO Book_Copies (BookID,BranchID,No_Of_Copies)
VALUES (1,1,3),
	(2,3,2),
	(3,2,11),
	(4,3,32),
	(5,4,4),
	(6,4,0),
	(7,2,3),
	(8,1,12),
	(9,3,33),
	(1,4,21),
	(10,2,34),
	(1,1,3),
	(11,4,13),
	(1,3,52),
	(1,2,32),
	(12,2,2),
	(13,4,9),
	(14,3,8),
	(15,4,4),
	(16,3,23),
	(17,2,34),
	(18,1,23),
	(19,3,21),
	(20,2,11)
	


Create Table Book_Loans
(
BookID int NOT NULL,
BranchID int NOT NULL,
CardNo int NOT NULL,
DateOut varchar(15),
DueDate varchar(15)
)
GO

INSERT INTO Book_Loans (BookID,BranchID,CardNo,DateOut,DueDate) 
VALUES (4,2,101,'01/10/14','01/24/14'),
	(2,2,101,'01/10/14','01/24/14'),
	(10,2,101,'01/10/14','01/24/14'),
	(19,2,101,'01/10/14','01/24/14'),
	(6,2,101,'01/10/14','01/24/14'),
	(8,1,102,'02/18/15','02/30/15'),
	(11,3,103,'02/18/15','03/30/15'),
	(8,4,104,'03/18/15','03/20/15'),
	(1,2,105,'02/18/15','02/30/15'),
	(4,1,106,'02/18/15','02/30/15'),
	(18,1,106,'02/18/15','02/30/15'),
	(13,1,106,'02/18/15','02/30/15'),
	(5,1,106,'02/18/15','02/30/15'),
	(9,1,106,'02/8/15','02/30/15'),
	(14,2,107,'02/8/15','02/30/15'),
	(10,3,108,'02/8/15','02/30/15'),
	(5,1,106,'02/18/15','02/30/15'),
	(9,1,106,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(1,3,108,'02/18/15','02/30/15'),
	(5,1,106,'02/18/15','02/30/15'),
	(9,1,106,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(10,3,108,'02/18/15','02/30/15'),
	(5,1,106,'02/18/15','02/30/15'),
	(9,1,106,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(10,3,108,'02/18/15','02/30/15'),
	(5,1,106,'02/18/15','02/30/15'),
	(9,1,106,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(10,3,101,'02/18/15','02/30/15'),
	(15,1,104,'03/18/15','04/30/15'),
	(11,1,106,'02/18/15','02/30/15'),
	(4,2,107,'02/18/15','02/30/15'),
	(1,3,108,'02/18/15','02/30/15'),
	(5,1,101,'02/18/15','02/30/15'),
	(9,1,102,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(10,3,108,'02/18/15','02/30/15'),
	(5,1,103,'02/18/15','02/30/15'),
	(9,1,106,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(10,3,108,'02/18/15','02/30/15'),
	(3,1,102,'02/18/15','02/30/15'),
	(9,1,101,'02/18/15','02/30/15'),
	(14,2,107,'02/18/15','02/30/15'),
	(10,3,108,'02/18/15','02/30/15'),
	(2,1,106,'02/18/15','02/30/15'),
	(1,1,104,'02/18/15','02/30/15'),
	(4,2,105,'02/18/15','02/30/15'),
	(20,3,108,'02/18/15','02/30/15')

Create Table Library_Branch
(
BranchID int NOT NULL,
BranchName varchar(75) NOT NULL,
[Address] varchar(100)
)
GO

INSERT INTO Library_Branch (BranchID,BranchName,[Address])
VALUES (1,'Sharpstown','209 E Place'),
	(2,'West','203 W Loop'),
	(3,'Central','49th Ct West'),
	(4,'North','402 NW 48th St')
	
 
Create Table Borrower
(
CardNo int NOT NULL,
Name Varchar(50) NOT NULL,
[Address] Varchar(100),
Phone Varchar(20)
)
GO

INSERT INTO Borrower (CardNo,Name,[Address],Phone)
VALUES (101, 'Bobby Joe','302 NW 8th','5030228819'),
	(102,'Mike Tompson','482 Apt 5th St','5034892000'),
	(103,'Karen Tompson','482 Apt 5th St','5034892000'),
	(104,'Sally Jean','60th Ave','5034482291'),
	(105,'Alice Cooper','5021 NE 2nd','5034838570'),
	(106,'Joe Finder','9202 Ct','5034892000'),
	(107,'Johnny Appleseed','84829 East St','5034938400'),
	(108,'Novack Jo','493 70th Ave','5032292000'),
	(123,'News Guy','43 12th Ave','5032239000'),
	(118,'Nate Man','93 732th Ave','5032292300'),
	(111,'Julian Girl','39 1st Ave','5032292440')
