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
