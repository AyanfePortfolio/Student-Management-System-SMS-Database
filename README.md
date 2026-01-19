# Student-Management-System-SMS-Database
A Relational SQL Project implemented in Microsoft SQL Server

## Project Overview
The Student Management System (SMS) is a relational database designed to efficiently manage academic and administrative data within a university environment. It centralizes information related to students, departments, courses, instructors, and enrollments to support structured data storage, integrity, and advanced reporting.

This project was implemented using Microsoft SQL Server Management Studio (SSMS) and demonstrates strong foundations in database design, normalization, and SQL-based analysis.

## Project Objectives
- Design and implement a relational database system using SQL

- Store and manage academic records efficiently

- Support administrative operations such as:

    a. Student and instructor registration

    b. Course creation and allocation

    c. Enrollment management

- Generate meaningful academic and operational reports using SQL queries  
  

## Database Structure

The database consists of six interrelated tables:

1. Students – Stores personal and academic information

2. Departments – Stores academic department data

3. Courses – Stores courses offered by departments

4. Instructors – Stores instructor records and affiliations

5. Enrollments – Manages student course registrations

6. CourseInstructors – Handles many-to-many relationships between courses and instructors

All tables are connected using primary and foreign keys to ensure referential integrity.


## Entity Relationship Diagram (ERD)

The ERD visually illustrates how entities relate within the system.  

Relationship Summary:  

One department → many students, courses, and instructors  

One student → many enrollments  

One course → many enrollments  

Courses ↔ Instructors → many-to-many (via CourseInstructors)  
