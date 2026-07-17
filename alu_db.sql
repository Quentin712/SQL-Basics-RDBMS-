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
--- Member Fatima (Student Table)
CREATE TABLE Students (
	student_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) NOT NULL UNIQUE,
	classroom_id INT,
	enrollment_date DATE NOT NULL,
        FOREIGN KEY (classroom_id) REFERENCES Classroom(classroom_id)
);
INSERT INTO Students (name, email, classroom_id, enrollment_date) VALUES
('Quentin Habimana','quentin.h@alu.edu', 1, '2024-09-01'),
('Bob Niyonzima', 'bob.n@alu.edu', 2, '2024-09-01'),
('Philbert Nkurunziza', 'philbert.n@alu.edu', 3, '2024-09-02'),
('Lizza Umutoni', 'lizza.u@alu.edu', 1, '2024-09-02'),
('Fatima Abdi', 'fatima.a@alu.edu', 4, '2024-09-03'),
('Yannick Ishimwe', 'yannick.i@alu.edu', 5, '2024-09-03'),
('Test Student', 'delete.me@alu.edu', 2, '2024-09-03');



UPDATE Students SET email = 'bob.niyonzima2@alu.edu' Where student_id = 2;
DELETE FROM Students WHERE student_id = 7;
SELECT * FROM Students WHERE classroom_id = 1;

-- Member Quentin Courses Table
CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL,
    faculty_id INT,
    classroom_id INT,
    FOREIGN KEY (faculty_id) REFERENCES Faculty(faculty_id),
    FOREIGN KEY (classroom_id) REFERENCES Classroom(classroom_id)
);

INSERT INTO Courses (course_name, credits, faculty_id, classroom_id) VALUES
('Database Systems', 4, 1, 1),
('Intro to Business', 3, 2, 2),
('Structural Engineering', 4, 3, 3),
('Calculus II', 3, 4, 4),
('Global Challenges Seminar', 2, 5, 5),
('Placeholder Course', 1, 1, 1);

UPDATE Courses SET credits = 5 WHERE course_id = 3;

DELETE FROM Courses WHERE course_id = 6;

SELECT * FROM Courses WHERE faculty_id = 1;

-- Member 5 Philbert: Extra_Curricular_Activities Table


CREATE TABLE Extra_Curricular_Activities (
    activity_id INT AUTO_INCREMENT PRIMARY KEY,
    activity_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    faculty_advisor_id INT,
    FOREIGN KEY (faculty_advisor_id) REFERENCES Faculty(faculty_id)
);

INSERT INTO Extra_Curricular_Activities (activity_name, category, faculty_advisor_id) VALUES
('Coding Club', 'Technology', 1),
('Entrepreneurship Society', 'Business', 2),
('Robotics Team', 'Technology', 3),
('Debate Club', 'Academic', 5),
('Football Club', 'Sports', 4),
('Placeholder Club', 'Unassigned', 1);

UPDATE Extra_Curricular_Activities
SET category = 'STEM'
WHERE activity_id = 3;

DELETE FROM Extra_Curricular_Activities
WHERE activity_id = 6;

SELECT *
FROM Extra_Curricular_Activities
WHERE category = 'Technology';
CREATE TABLE Student_Courses (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Member 5 Boromeon: Student_Courses Junction Table

INSERT INTO Student_Courses (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-09-05'),
(1, 2, '2024-09-05'),
(2, 1, '2024-09-05'),
(3, 3, '2024-09-06'),
(4, 4, '2024-09-06'),
(5, 5, '2024-09-07'),
(6, 1, '2024-09-07'),
(2, 5, '2024-09-07');
