
--  50 SQL commands for the above library database

SELECT * FROM Books;

-- Select all members --

SELECT * FROM Members; 
 
-- Select all authors

SELECT * FROM Authors;

-- Select all borrowers

SELECT * FROM Borrower;

-- Find all books by a specific author


SELECT * FROM Books WHERE AuthorID = 1;

-- Find books in a specific genre

 SELECT * FROM Books WHERE Genre = 'Fiction';
 
-- Find books published after a certain year


SELECT * FROM Books WHERE PublicationYear > 2000;

-- Count the number of books available

SELECT COUNT(*) FROM Books;

-- Count the number of members

SELECT COUNT(*) FROM Members;

-- Find the most recent book loaned out

SELECT * FROM Borrower ORDER BY LoanDate DESC LIMIT 1;

-- Find all overdue books

SELECT * FROM Borrower WHERE DueDate < CURDATE() AND ReturnDate IS NULL;

-- Find the total number of books loaned out

SELECT COUNT(*) FROM Borrower;

-- Find all books currently loaned out

SELECT * FROM Borrower WHERE ReturnDate IS NULL;

-- Find all members who have borrowed books

SELECT DISTINCT MemberID FROM Borrower;

-- Find the number of copies available for each book

SELECT Title, CopiesAvailable FROM Books;

-- Find members who joined in 2023

SELECT * FROM Members WHERE MembershipDate BETWEEN '2023-01-01' AND '2023-12-31';

-- Find all books by 'Chetan Bhagat'

SELECT * FROM Books WHERE AuthorID = (SELECT AuthorID FROM Authors WHERE FirstName = 'Chetan' AND LastName = 'Bhagat');

-- Find the number of books each member has borrowed

SELECT MemberID, COUNT(*) AS BorrowedBooks FROM Borrower GROUP BY MemberID;

-- Find the total number of books written by each author

SELECT AuthorID, COUNT(*) AS TotalBooks FROM Books GROUP BY AuthorID;

-- Find all books with more than 3 copies available

SELECT * FROM Books WHERE CopiesAvailable > 3;

-- Find the top 5 most borrowed books

SELECT BookID, COUNT(*) AS BorrowCount FROM Borrower GROUP BY BookID ORDER BY BorrowCount DESC LIMIT 5;

-- Find the author with the most books in the library

SELECT a.FirstName, a.LastName, COUNT(b.BookID) AS TotalBooks
FROM Authors a
JOIN Books b ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorID
ORDER BY TotalBooks DESC
LIMIT 1;

-- Find all books borrowed by a specific member

SELECT b.Title 
FROM Books b
JOIN Borrower br ON b.BookID = br.BookID
WHERE br.MemberID = 1;

-- Find the total number of books borrowed in 2024

SELECT COUNT(*) FROM Borrower WHERE YEAR(LoanDate) = 2024;

-- Find all authors who have written more than 1 book

SELECT a.FirstName, a.LastName, COUNT(b.BookID) AS BookCount
FROM Authors a
JOIN Books b ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorID
HAVING BookCount > 1;

-- Find the member who has borrowed the most books

SELECT MemberID, COUNT(*) AS BorrowCount 
FROM Borrower 
GROUP BY MemberID 
ORDER BY BorrowCount DESC 
LIMIT 1;

-- Find the latest 5 members who joined

SELECT * FROM Members ORDER BY MembershipDate DESC LIMIT 5;

-- Find the total number of books available in each genre

SELECT Genre, COUNT(*) AS TotalBooks FROM Books GROUP BY Genre;

-- Find all members from 'Mumbai'

SELECT * FROM Members WHERE City = 'Mumbai';
-- Find the average number of books borrowed per member

SELECT AVG(BorrowCount) FROM (SELECT COUNT(*) AS BorrowCount FROM Borrower GROUP BY MemberID) AS SubQuery;
-- Find the total number of different genres available

SELECT COUNT(DISTINCT Genre) FROM Books;
-- Find all members who have never borrowed a book

SELECT * FROM Members WHERE MemberID NOT IN (SELECT DISTINCT MemberID FROM Borrower);
-- Find the oldest book in the library

SELECT * FROM Books ORDER BY PublicationYear ASC LIMIT 1;
-- Find all books published between 2010 and 2020


SELECT * FROM Books WHERE PublicationYear BETWEEN 2010 AND 2020;
-- Find the total number of books by 'Arundhati Roy'

SELECT COUNT(*) FROM Books WHERE AuthorID = (SELECT AuthorID FROM Authors WHERE FirstName = 'Arundhati' AND LastName = 'Roy');
-- Find all books that have never been borrowed

SELECT * FROM Books WHERE BookID NOT IN (SELECT DISTINCT BookID FROM Borrower);
-- Find all books borrowed in the last 30 days

SELECT * FROM Borrower WHERE LoanDate >= CURDATE() - INTERVAL 30 DAY;

-- Find the book with the highest number of copies available

SELECT * FROM Books ORDER BY CopiesAvailable DESC LIMIT 1;
-- Find the most common genre of books borrowed

SELECT Genre, COUNT(*) AS BorrowCount
FROM Books b
JOIN Borrower br ON b.BookID = br.BookID
GROUP BY Genre
ORDER BY BorrowCount DESC
LIMIT 1;

-- Find all books written by authors born after 1970

SELECT b.* 
FROM Books b
JOIN Authors a ON b.AuthorID = a.AuthorID
WHERE a.DateOfBirth > '1970-01-01';

-- Find the book with the longest title

SELECT * FROM Books ORDER BY CHAR_LENGTH(Title) DESC LIMIT 1;
-- Find all books that have been borrowed more than 5 times

SELECT BookID, COUNT(*) AS BorrowCount 
FROM Borrower 
GROUP BY BookID 
HAVING BorrowCount > 5;

-- Find the top 3 authors whose books are borrowed the most

SELECT a.FirstName, a.LastName, COUNT(br.BookID) AS BorrowCount
FROM Authors a
JOIN Books b ON a.AuthorID = b.AuthorID
JOIN Borrower br ON b.BookID = br.BookID
GROUP BY a.AuthorID
ORDER BY BorrowCount DESC
LIMIT 3;

SELECT * FROM Books WHERE Title LIKE '%Love%';

-- Find the average number of copies available per book

SELECT AVG(CopiesAvailable) FROM Books;

-- Find the author who has written books in the most genres

SELECT a.FirstName, a.LastName, COUNT(DISTINCT b.Genre) AS GenreCount
FROM Authors a
JOIN Books b ON a.AuthorID = b.AuthorID
GROUP BY a.AuthorID
ORDER BY GenreCount DESC
LIMIT 1;

-- Find the total number of books borrowed by members from 'Delhi'

SELECT COUNT(*) 
FROM Borrower br
JOIN Members m ON br.MemberID = m.MemberID
WHERE m.City = 'Delhi';

-- Find the latest book added to the library
SELECT * FROM Books ORDER BY BookID DESC LIMIT 1;

-- Find all books borrowed and not yet returned by a specific member

SELECT b.* 
FROM Books b
JOIN Borrower br ON b.BookID = br.BookID
WHERE br.MemberID = 1 AND br.ReturnDate IS NULL;

-- Find the total number of members who have borrowed books in 2024

SELECT COUNT(DISTINCT MemberID) FROM Borrower WHERE YEAR(LoanDate) = 2024;