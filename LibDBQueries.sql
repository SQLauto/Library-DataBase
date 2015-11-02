/*1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name
is"Sharpstown"?*/

SELECT SUM(BC.No_Of_Copies)
FROM Book as B 
	INNER JOIN Book_Copies as BC
	ON B.BookID = BC.BookID 
	INNER JOIN Library_Branch as LB
	ON BC.BranchID = LB.BranchID 
WHERE B.Title = 'The Lost Tribe' AND LB.BranchName = 'Sharpstown'

/*2. How many copies of the book titled The Lost Tribe are owned by each library branch?*/

SELECT SUM(BC.No_Of_Copies)
FROM Book as B 
	INNER JOIN Book_Copies as BC
	ON B.BookID = BC.BookID 
	INNER JOIN Library_Branch as LB
	ON BC.BranchID = LB.BranchID 
WHERE B.Title = 'The Lost Tribe'

/*3. Retrieve the names of all borrowers who do not have any books checked out.*/

SELECT Br.Name
FROM Borrower AS Br
	LEFT JOIN Book_Loans AS BL
	ON BL.CardNo = Br.CardNo 
WHERE BL.BookID IS NULL

/*4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today,
retrieve the book title, the borrower's name, and the borrower's address.*/

SELECT B.Title , Br.Name , Br.[Address] 
FROM Book AS B
	INNER JOIN Book_Loans AS BL
	ON B.BookID = BL.BookID 
	INNER JOIN Library_Branch AS LB
	ON BL.BranchID = LB.BranchID 
	INNER JOIN Borrower as Br
	ON BL.CardNo = Br.CardNo 
WHERE LB.BranchName ='Sharpstown' AND BL.DueDate = '02/30/15'


/*5. For each library branch, retrieve the branch name and the total number of books loaned out from
that branch.*/

SELECT LB.BranchName, SUM(BC.No_Of_Copies)
FROM Book as B 
	INNER JOIN Book_Copies as BC
	ON B.BookID = BC.BookID 
	INNER JOIN Library_Branch as LB
	ON BC.BranchID = LB.BranchID 
WHERE LB.BranchName ='Sharpstown'
GROUP BY LB.BranchName


	
	

/*6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more
than five books checked out.*/

SELECT Br.Name, Br.[Address] , Count(*)
FROM Book_Loans AS BL
	INNER JOIN Borrower AS Br
	ON BL.CardNo = Br.CardNo
Group By Br.Name, BR.[Address] 
Having COUNT(*) >= 5



/*7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of
copies owned by the library branch whose name is "Central"*/SELECT B.Title, BC.No_Of_CopiesFROM Book AS B	INNER JOIN Book_Authors AS BA	ON BA.BookID = B.BookID	INNER JOIN Book_Copies AS BC	ON BC.BookID = B.BookID	INNER JOIN Library_Branch as LB	ON BC.BranchID = LB.BranchIDWHERE LB.BranchName = 'Central' and (BA.AuthorName = 'Stephen King' OR BA.AuthorName LIKE '%Stephen King%')--Procedure That gest the total number of books that a branch has.Create PROC getTotalBooksBranch @BranchName Varchar(75)
AS	
	SELECT LB.BranchName, SUM(BC.No_Of_Copies)
	FROM Book as B 
		INNER JOIN Book_Copies as BC
		ON B.BookID = BC.BookID 
		INNER JOIN Library_Branch as LB
		ON BC.BranchID = LB.BranchID 
	WHERE LB.BranchName =@BranchName
	GROUP BY LB.BranchName
	
	
EXEC getTotalBooksBranch 'West'