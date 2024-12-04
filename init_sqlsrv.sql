CREATE TABLE Admins (
    AdminID INT IDENTITY PRIMARY KEY,
    Nom NVARCHAR(255) NOT NULL,
    Prenom NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) UNIQUE NOT NULL,
    Num NVARCHAR(20) NOT NULL,
    CreatedAt DATETIME DEFAULT GETDATE()
);

INSERT INTO Admins (Nom, Prenom, Email, Num) 
VALUES 
('Doe', 'John', 'admin@example.com', '+33123456789');
