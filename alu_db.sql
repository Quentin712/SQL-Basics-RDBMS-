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


--Member 5: Bob (Student_Courses junction table)

CREATE TABLE Student_Courses (
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Student_Courses (student_id, course_id, enrollment_date) VALUES
(1, 1, '2024-09-05'),
(1, 2, '2024-09-05'),
(2, 1, '2024-09-05'),
(3, 3, '2024-09-06'),
(4, 4, '2024-09-06'),
(5, 5, '2024-09-07'),
(6, 1, '2024-09-07'),
(2, 5, '2024-09-07');
