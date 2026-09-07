# 💼 Job Portal Management System

The **Job Portal Management System** is a Java Full Stack web application developed to connect **Job Seekers and Recruiters** on a single platform. The system allows recruiters to manage job postings and applications, while job seekers can search and apply for suitable job opportunities.

The project was developed during my **Java Full Stack Internship** using Java, J2EE, JDBC, Hibernate, Oracle SQL, HTML, CSS, and JavaScript.

## 🚀 Features

* Job seeker registration and login
* Recruiter registration and login
* Recruiters can create and manage job postings
* Job seekers can view available jobs
* Search and apply for job opportunities
* Manage job applications
* Store and retrieve user and job information
* Database integration using Oracle SQL
* Role-based functionality for different users

## 🛠️ Technologies Used

* **Java**
* **J2EE**
* **JDBC**
* **Hibernate**
* **Oracle SQL**
* **HTML5**
* **CSS3**
* **JavaScript**
* **Eclipse**
* **Maven**
* **Git & GitHub**

## 🔄 Project Flow

```text
                 Job Portal
                     │
          ┌──────────┴──────────┐
          ↓                     ↓
      Job Seeker            Recruiter
          │                     │
          ↓                     ↓
   Register / Login      Register / Login
          │                     │
          ↓                     ↓
   View/Search Jobs       Post Job
          │                     │
          ↓                     ↓
     Apply for Job       Manage Jobs
          │                     │
          └──────────┬──────────┘
                     ↓
              Manage Applications
                     ↓
                Database
```

## 🏗️ Application Architecture

```text
┌─────────────────────────┐
│      User Interface     │
│    HTML / CSS / JS      │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│      J2EE / Java        │
│   Application Logic     │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│    Hibernate / JDBC     │
│    Database Access      │
└────────────┬────────────┘
             ↓
┌─────────────────────────┐
│      Oracle SQL         │
│        Database         │
└─────────────────────────┘
```

## 👥 Main Modules

### 👤 Job Seeker

* Register and login
* View available jobs
* Search for jobs
* View job details
* Apply for jobs
* Track applications

### 🏢 Recruiter

* Register and login
* Create job postings
* Update job details
* Delete job postings
* View applications
* Manage recruitment information

### 🔐 Admin

* Manage users
* Manage recruiters
* Manage job postings
* Monitor application information

## 🗄️ Database

**Oracle SQL** is used for storing application data such as:

* User details
* Recruiter details
* Job details
* Job applications
* Other portal-related information

**Hibernate and JDBC** are used for database connectivity and data management.

## 🔁 Example: Applying for a Job

```text
Job Seeker
    ↓
Login
    ↓
View Available Jobs
    ↓
Select Job
    ↓
View Job Details
    ↓
Apply
    ↓
Application Stored in Database
    ↓
Recruiter Can View Application
```

## 🧪 Testing

The application was tested by performing different user and job-related operations, including:

* Registration and login
* Job creation
* Job searching
* Job application
* Updating job information
* Deleting job postings
* Managing applications
* Database operations

## 🎯 What I Learned

Through this project, I gained practical experience in:

* Java Full Stack development
* Object-Oriented Programming
* J2EE web application development
* JDBC and Hibernate
* Oracle database integration
* Frontend development using HTML, CSS and JavaScript
* CRUD operations
* User and role-based functionality
* Git and GitHub
* Developing a real-world web application

## 👩‍💻 Author

**Sakshi Naik**

B.E. – Electronics and Communication Engineering
Aspiring **Java Backend / Full Stack Developer**
