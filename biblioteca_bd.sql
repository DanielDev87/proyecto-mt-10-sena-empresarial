-- Crear base de datos con MySQL
CREATE DATABASE Biblioteca;

USE Biblioteca;

-- Crear tabla Autor
CREATE TABLE Author (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    author_birthdate DATE
);

-- Crear tabla Editor
CREATE TABLE Publisher (
    publisher_id INT AUTO_INCREMENT PRIMARY KEY,
    publisher_name VARCHAR(255) NOT NULL,
    publisher_address VARCHAR(255)
);

-- Crear tabla Miembro
CREATE TABLE Member (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    member_name VARCHAR(255) NOT NULL,
    member_address VARCHAR(255),
    member_phone VARCHAR(20),
    member_email VARCHAR(255)
);

-- Crear tabla Libro
CREATE TABLE Book (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    book_author_id INT,
    book_publisher_id INT,
    book_year_published YEAR,
    book_genre VARCHAR(100),
    FOREIGN KEY (book_author_id) REFERENCES Author(author_id),
    FOREIGN KEY (book_publisher_id) REFERENCES Publisher(publisher_id)
);

-- Crear tabla Préstamo
CREATE TABLE Loan (
    loan_id INT AUTO_INCREMENT PRIMARY KEY,
    loan_book_id INT,
    loan_member_id INT,
    loan_date DATE NOT NULL,
    loan_return_date DATE,
    FOREIGN KEY (loan_book_id) REFERENCES Book(book_id),
    FOREIGN KEY (loan_member_id) REFERENCES Member(member_id)
);
