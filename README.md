## 🏫 Group [Team Name] — ALU School Database

A group assignment for ALU  a shared MySQL database for a school system, built by a team of six, with each member responsible for one table connected together into a single relational schema.

---

### 👥 Team & Roles

- **Lizza** — Built the `Classroom` table, the foundation every other table connects back to. Defined room number, building, and capacity, then inserted sample rooms across three buildings and ran her own update, delete, and select.

<br>

- **Yannis** — Built the `Faculty` table, holding every teacher's name, email, and department. Inserted sample faculty across five departments and ran his own update, delete, and select.

<br>

- **Fatima** — Built the `Students` table, linking each student to a classroom via foreign key. Inserted 7 sample students, updated an email, deleted a placeholder row, and selected students by classroom.

<br>

- **Quentin** — Built the `Courses` table, connecting each course to both a faculty member and a classroom through two foreign keys. Inserted sample courses across departments and ran his own update, delete, and select.

<br>

- **Philbert** — Built two tables: `Extra_Curricular_Activities`, linking each activity to a faculty advisor, and `Student_Activities`, the junction table connecting students to the activities they've joined.

<br>

- **Bob** — Built the `Student_Courses` junction table, the many-to-many link between students and the courses they're enrolled in, using a composite primary key to prevent duplicate enrollments.

---

### 🌳 Tables Inside `alu_db.sql`

```
alu_db.sql
├── Classroom
├── Faculty
├── Students
├── Courses
├── Extra_Curricular_Activities
├── Student_Courses
└── Student_Activities
```

---

### 🚀 How to Run (Step-by-Step)

**1. Clone the repo**
```bash
git clone https://github.com/Quentin712/SQL-Basics-RDBMS-.git
```

**2. Go into the project folder**
```bash
cd SQL-Basics-RDBMS-
```

**3. Connect to the shared database**
```bash
mysql -h [host] -P [port] -u [username] -p [database] --ssl-mode=REQUIRED
```

**4. Run the full SQL file**
```bash
source alu_db.sql;
```

**5. Verify all tables loaded**
```sql
SHOW TABLES;
```
