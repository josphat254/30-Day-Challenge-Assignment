use school;
#creating a table
CREATE TABLE Students(
	student_id INT PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL,
    lastname VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 18),
    email VARCHAR(255) NOT NULL UNIQUE
)

SELECT * FROM Students;

#inserting data
INSERT INTO Students 
VALUES (1, 'John', 'Doe', 20, 'john.doe@example.com'),
	   (2, 'Jane', 'Smith', 22, 'jane.smith@example.com'),
       (3, 'Micheal', 'Brown', 19, 'micheal.brown@example.com');

#adding a column 
ALTER TABLE Students
ADD COLUMN enrollment_date DATE;

#modifying the datatype
ALTER TABLE Students 
MODIFY COLUMN email VARCHAR (300);

#droping a column
ALTER TABLE Students
DROP COLUMN lastname