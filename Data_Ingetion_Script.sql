-- Inserting sample data into Authors table
INSERT INTO Authors (FirstName, LastName, DateOfBirth, Nationality) VALUES
('Arundhati', 'Roy', '1961-11-24', 'Indian'),
('Chetan', 'Bhagat', '1974-04-22', 'Indian'),
('Amish', 'Tripathi', '1974-10-18', 'Indian'),
('Jhumpa', 'Lahiri', '1967-07-11', 'Indian'),
('Vikram', 'Seth', '1952-06-20', 'Indian'),
('Anita', 'Desai', '1937-06-24', 'Indian'),
('Ruskin', 'Bond', '1934-05-19', 'Indian'),
('Aravind', 'Adiga', '1974-10-23', 'Indian'),
('Salman', 'Rushdie', '1947-06-19', 'Indian'),
('R.K.', 'Narayan', '1906-10-10', 'Indian');

-- Inserting sample data into Books table
INSERT INTO Books (Title, AuthorID, Genre, PublicationYear, ISBN, CopiesAvailable) VALUES
('The Ministry of Utmost Happiness', 1, 'Fiction', 2017, '9780670089635', 5),
('One Indian Girl', 2, 'Fiction', 2016, '9788129142146', 5),
('Raavan: Enemy of Aryavarta', 3, 'Mythology', 2019, '9789388754088', 5),
('The Lowland', 4, 'Fiction', 2013, '9780670088898', 5),
('A Suitable Boy', 5, 'Fiction', 1993, '9780140230229', 5),
('Fire on the Mountain', 6, 'Fiction', 1977, '9780144000682', 5),
('A Book of Simple Living', 7, 'Non-fiction', 2015, '9789385755583', 5),
('The White Tiger', 8, 'Fiction', 2008, '9788172237450', 5),
('Midnight’s Children', 9, 'Fiction', 1981, '9780099578512', 5),
('Malgudi Days', 10, 'Fiction', 1943, '9780143330062', 5),
('The God of Small Things', 1, 'Fiction', 1997, '9780143028574', 5),
('2 States', 2, 'Fiction', 2009, '9788129115300', 5),
('Sita: Warrior of Mithila', 3, 'Mythology', 2017, '9789386224583', 5),
('Unaccustomed Earth', 4, 'Fiction', 2008, '9780307278258', 5),
('An Equal Music', 5, 'Fiction', 1999, '9780141005967', 5),
('Clear Light of Day', 6, 'Fiction', 1980, '9780099289630', 5),
('The Room on the Roof', 7, 'Fiction', 1956, '9780143333384', 5),
('Last Man in Tower', 8, 'Fiction', 2011, '9789350295199', 5),
('The Golden House', 9, 'Fiction', 2017, '9781784707099', 5),
('Swami and Friends', 10, 'Fiction', 1935, '9788185986075', 5);

-- Inserting sample data into Members table
INSERT INTO Members (FirstName, LastName, Email, Phone, Address, City, State, ZipCode, MembershipDate) VALUES
('Rahul', 'Sharma', 'rahul.sharma@example.com', '9876543210', '123 MG Road', 'Mumbai', 'Maharashtra', '400001', '2023-01-15'),
('Priya', 'Kumar', 'priya.kumar@example.com', '9876543211', '456 Park Street', 'Delhi', 'Delhi', '110001', '2023-02-20'),
('Vikas', 'Gupta', 'vikas.gupta@example.com', '9876543212', '789 Gandhi Road', 'Bangalore', 'Karnataka', '560001', '2023-03-10'),
('Sneha', 'Patel', 'sneha.patel@example.com', '9876543213', '101 MG Road', 'Ahmedabad', 'Gujarat', '380001', '2023-04-25'),
('Anil', 'Mehta', 'anil.mehta@example.com', '9876543214', '202 Nehru Street', 'Chennai', 'Tamil Nadu', '600001', '2023-05-30'),
('Aisha', 'Khan', 'aisha.khan@example.com', '9876543215', '303 Azad Lane', 'Hyderabad', 'Telangana', '500001', '2023-06-15'),
('Ravi', 'Reddy', 'ravi.reddy@example.com', '9876543216', '404 Tagore Avenue', 'Pune', 'Maharashtra', '411001', '2023-07-20'),
('Neha', 'Singh', 'neha.singh@example.com', '9876543217', '505 Gandhi Nagar', 'Kolkata', 'West Bengal', '700001', '2023-08-10'),
('Amit', 'Verma', 'amit.verma@example.com', '9876543218', '606 Subhash Road', 'Lucknow', 'Uttar Pradesh', '226001', '2023-09-05'),
('Shweta', 'Joshi', 'shweta.joshi@example.com', '9876543219', '707 Tilak Marg', 'Jaipur', 'Rajasthan', '302001', '2023-10-20');

-- Inserting sample data into Loans table
INSERT INTO borrower (BookID, MemberID, LoanDate, DueDate, ReturnDate) VALUES
(1, 1, '2024-01-05', '2024-01-19', NULL),
(2, 2, '2024-02-10', '2024-02-24', NULL),
(3, 3, '2024-03-15', '2024-03-29', NULL),
(4, 4, '2024-04-20', '2024-05-04', NULL),
(5, 5, '2024-05-25', '2024-06-08', NULL),
(6, 6, '2024-06-30', '2024-07-14', NULL),
(7, 7, '2024-07-05', '2024-07-19', NULL),
(8, 8, '2024-08-10', '2024-08-24', NULL),
(9, 9, '2024-09-15', '2024-09-29', NULL),
(10, 10, '2024-10-20', '2024-11-03', NULL),
(11, 1, '2024-11-25', '2024-12-09', NULL),
(12, 2, '2024-12-30', '2025-01-13', NULL);
