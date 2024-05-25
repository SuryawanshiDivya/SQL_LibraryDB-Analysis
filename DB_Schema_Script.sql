CREATE DATABASE Library;
Use Library;

-- Run as per numbering--

-- 3.Creating Books table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    Genre VARCHAR(50),
    PublicationYear YEAR,
    ISBN VARCHAR(20),
    CopiesAvailable INT NOT NULL,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- 2. Creating Members table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Phone VARCHAR(20),
    Address VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50),
    ZipCode VARCHAR(20),
    MembershipDate DATE NOT NULL
);

-- 4. Creating Borrower table
CREATE TABLE Borrower (
    LoanID INT AUTO_INCREMENT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- 1.Creating Authors table--
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Nationality VARCHAR(50)
);

