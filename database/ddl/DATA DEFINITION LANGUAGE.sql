
-- ======================================================== --
-- DATA DEFINITION COMMANDS 
-- ======================================================== --

-- Create Database
CREATE DATABASE StudentManagementSystem;
GO

USE StudentManagementSystem;
GO

-- =============================================
-- Table 1: Departments
-- =============================================
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY IDENTITY(1,1),
    DepartmentName NVARCHAR(100) NOT NULL UNIQUE,
);

-- =============================================
-- Table 2: Students
-- =============================================
CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Gender VARCHAR(10), 
    DOB DATE NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) 
    REFERENCES Departments(DepartmentID) 
);

-- =============================================
-- Table 3: Instructors
-- =============================================
CREATE TABLE Instructors (
    InstructorID INT PRIMARY KEY IDENTITY(1,1),
    FullName VARCHAR(50) NOT NULL,
    Gender VARCHAR(5),
    DepartmentID INT NOT NULL,
    Email VARCHAR(50) UNIQUE,
    PhoneNumber VARCHAR(15),
    Qualification VARCHAR(25),
    Specialization VARCHAR (50),
    HireDate DATE NOT NULL,
    Salary DECIMAL(10,2),
    FOREIGN KEY (DepartmentID) 
    REFERENCES Departments(DepartmentID)
);

-- =============================================
-- Table 4: Courses
-- =============================================
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName NVARCHAR(100) NOT NULL,
    CourseCode NVARCHAR(20) UNIQUE NOT NULL,
    DepartmentID INT NOT NULL,
    FOREIGN KEY (DepartmentID) 
    REFERENCES Departments(DepartmentID) 
);

-- =============================================
-- Table 5: Enrolments
-- =============================================
CREATE TABLE Enrolments (
    EnrolmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    EnrolmentDate DATE NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) 
);

-- =============================================
-- Table 6: CourseInstructors
-- =============================================

CREATE TABLE CourseInstructors (
    AssignmentID INT PRIMARY KEY IDENTITY(100, 1),
    InstructorID INT NOT NULL,
    CourseID INT NOT NULL,
    CourseName VARCHAR(100) NOT NULL,
    AssignmentDate DATE DEFAULT GETDATE(),
    FOREIGN KEY (InstructorID) REFERENCES Instructors(InstructorID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
);
