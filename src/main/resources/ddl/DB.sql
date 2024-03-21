 CREATE SCHEMA EVIDYARTHI;

CREATE TABLE EVIDYARTHI.Student (
 StudentId INT AUTO_INCREMENT PRIMARY KEY,
 StudentName VARCHAR(255),
 ContactNumber VARCHAR(15),
 Email VARCHAR(255),
 Address VARCHAR(255),
 Gender VARCHAR(255),
 DOB VARCHAR(255),
 HighestQualification VARCHAR(255),
 Marks INT
);


CREATE TABLE EVIDYARTHI.Course (
 CourseId INT  AUTO_INCREMENT PRIMARY KEY,
 CourseName VARCHAR(255),
 Instructor VARCHAR(255),
 CSchedule VARCHAR(255),
 Capacity INT -- Assuming Capacity is an integer, change to the appropriate data type
);

CREATE TABLE EVIDYARTHI.Teacher (
 TeacherId INT AUTO_INCREMENT PRIMARY KEY,
 TeacherName VARCHAR(255),
 Subject VARCHAR(255),
 Email VARCHAR(255),
 Phone_Number VARCHAR(255),
 Address VARCHAR(255),
 Degree VARCHAR(255),
 Salary VARCHAR(255)
);

CREATE TABLE EVIDYARTHI.Enrollments (
 EnrollmentId INT AUTO_INCREMENT PRIMARY KEY,
 EnrollmentDate DATE,
 StudentId INT, -- Include StudentId column
 CourseId INT, -- Include CourseId column
 FOREIGN KEY (StudentId) REFERENCES EVIDYARTHI.Student(StudentId),
 FOREIGN KEY (CourseId) REFERENCES EVIDYARTHI.Course(CourseId)
);

CREATE TABLE EVIDYARTHI.Grades (
 GradeId INT AUTO_INCREMENT PRIMARY KEY,
 AssessmentType VARCHAR(255),
 Score INT,
 StudentId INT, -- Include StudentId column
 CourseId INT, -- Include CourseId column
 FOREIGN KEY (StudentId) REFERENCES EVIDYARTHI.Student(StudentId),
 FOREIGN KEY (CourseId) REFERENCES EVIDYARTHI.Course(CourseId)
);

CREATE TABLE EVIDYARTHI.Attendence (
 AttendenceId INT PRIMARY KEY,
 AttendenceDate DATE,
 StudentId INT, -- Include StudentId column
 CourseId INT, -- Include CourseId column
 
 FOREIGN KEY (StudentId) REFERENCES EVIDYARTHI.Student(StudentId),
 FOREIGN KEY (CourseId) REFERENCES EVIDYARTHI.Course(CourseId)
);
CREATE TABLE  EVIDYARTHI.login (
  username VARCHAR(45)  PRIMARY KEY,
  password VARCHAR(45) NULL
  );
  
  CREATE TABLE EVIDYARTHI.Department (
  DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
  DepartmentName VARCHAR(255),
  Head_of_Department  VARCHAR(255),
  Department_Start DATE,
  Students VARCHAR(255)
);
 