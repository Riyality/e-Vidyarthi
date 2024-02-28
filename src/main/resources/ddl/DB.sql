CREATE SCHEMA EVIDYARTHI;

CREATE TABLE EVIDYARTHI.Student (
  StudentId INT AUTO_INCREMENT PRIMARY KEY,
  StudentName VARCHAR(255),
  ContactNumber VARCHAR(15),
  Email VARCHAR(255),
  EnrollmentDate DATE,
  Address VARCHAR(255),
  Gender VARCHAR(255),
  DOB VARCHAR(255),
  HighestQualification VARCHAR(255),
  Marks FLOAT
);

CREATE TABLE EVIDYARTHI.Course (
 CourseId INT PRIMARY KEY,
 CourseName VARCHAR(255),
 Instructor VARCHAR(255),
 CSchedule VARCHAR(255),
 Capacity INT -- Assuming Capacity is an integer, change to the appropriate data type
);

CREATE TABLE EVIDYARTHI.Enrollments (
 EnrollmentId INT PRIMARY KEY,
 EnrollmentDate DATE,
 StudentId INT, -- Include StudentId column
 CourseId INT, -- Include CourseId column
 FOREIGN KEY (StudentId) REFERENCES EVIDYARTHI.Student(StudentId),
 FOREIGN KEY (CourseId) REFERENCES EVIDYARTHI.Course(CourseId)
);

CREATE TABLE EVIDYARTHI.Grades (
 GradeId INT PRIMARY KEY,
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