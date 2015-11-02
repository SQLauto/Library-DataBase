Create Table Book
(
BookID int,
Title Varchar(75),
PublisherName varchar(50)
)

Create Table Book_Authors
(
BookID int,
AuthorName Varchar(60)
)

Create Table Publisher
(
Name Varchar(50),
[Address] varchar(100),
Phone int
)

Create Table Book_Copies
(
BookID int,
BranchID int,
No_Of_Copies int
)

Create Table Book_Loans
(
BookID int,
BranchID int,
CardNo int,
DateOut int,
DueDate int
)

Create Table Library_Branch
(
BranchID int,
BranchName varchar(75),
[Address] varchar(100)
)

Create Table Borrower
(
CardNo int,
Name Varchar(50),
[Address] Varchar(100),
Phone int
)