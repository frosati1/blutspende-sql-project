# blutspende-sql-project
# Blood Donation Database – SQL Project

Group project developed as part of an SQL certification.  
**Authors:** Yasemin, Francesco, Egon

---

## 📌 Project Overview

This project implements a relational database for managing blood donations.  
It covers the full lifecycle of donated blood, from donor registration and laboratory testing to storage, expiration management, and distribution to hospitals.

The main goal of the project was to demonstrate solid database design principles and the practical use of advanced SQL features such as views, stored functions, procedures, and triggers.

---

## 🧱 Core Features

- Normalized relational schema
- Referential integrity using primary and foreign keys
- Stored functions for reusable logic
- Stored procedures for validation and control flows
- Triggers to:
  - Automatically calculate expiration dates
  - Ensure data consistency during inserts and updates
- Views for reporting and analysis (e.g. stock per blood group, donations per center)

---

## 🗂️ Repository Structure

```text
sql/
├── 001_db_create      # Tables & constraints
├── 002_views          # Analytical and reporting views
├── 003_functions      # Stored functions
├── 004_procedures     # Stored procedures
└── 005_triggers       # Data integrity triggers

backups/
└── Blutspende-EW-20260115.bak # Optional database backup

docs/
└── SQL_Projektarbeit_Blutspende.pdf
```


---

## ▶️ How to Set Up the Database

1. Create an empty database in your SQL environment
2. Execute the scripts in the following order:
```
001_db_create_scripts
002_views
003_functions
004_procedures
005_triggers
```

3. (Optional) Restore the database using the backup file in the `backups` folder

---

## 📄 Documentation

Detailed documentation, including explanations of the data model and SQL logic, is available in:
docs/SQL_Projektarbeit_Blutspende.pdf


---

## 🛠️ Technologies Used

- SQL
- Relational database design
- Views, functions, procedures, triggers and server agents.

---

## 🎓 Project Context

This project was developed as a **group assignment for SQL certification** and focuses on correctness, maintainability, and real-world database modeling rather than application-layer logic.



