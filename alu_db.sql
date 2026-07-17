-- Member 1: Lizza (Classroom Table)

CREATE TABLE Classroom (
	classroom_id INT PRIMARY KEY,
	room_number VARCHAR(15),
	building VARCHAR(20),
	capacity INT
);

INSERT INTO Classroom (classroom_id, room_number, building, capacity) VALUES
(1, '248', 'A Block', 40),
(2, '321', 'B Block', 15),
(3, '568', 'O Block', 36),
(4, '111', 'Main Block', 67),
(5, '490', 'B Block', 90),
(6, '367', 'O Block', 28),
(7, '246', 'Main Block', 69),
(8, '222', 'O Block', 20);

UPDATE Classroom
SET room_number = 428
WHERE classroom_id = 5;

SELECT * FROM Classroom
WHERE building = 'Main Block';

DELETE FROM Classroom
WHERE classroom_id = 7;

-- Member 2: Yannis (Faculty Table)
CREATE TABLE Faculty (
    faculty_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    department VARCHAR(50) NOT NULL
);

INSERT INTO Faculty (name, email, department) VALUES
('Aline Uwase', 'aline.uwase@alu.edu', 'Computer Science'),
('Kwame Boateng', 'kwame.boateng@alu.edu', 'Business'),
('Naledi Dlamini', 'naledi.dlamini@alu.edu', 'Engineering'),
('Samuel Otieno', 'samuel.otieno@alu.edu', 'Mathematics'),
('Grace Mwangi', 'grace.mwangi@alu.edu', 'Global Challenges'),
('Retired Faculty', 'retired@alu.edu', 'Unassigned');

UPDATE Faculty SET department = 'Computer Science & AI' WHERE faculty_id = 1;

DELETE FROM Faculty WHERE faculty_id = 6;

SELECT * FROM Faculty WHERE department = 'Business';
