# SQL Learning & Practice Tracker 🚀

Welcome to my SQL practice repository! This project serves as a daily tracker of my progress as I build data analysis skills, moving from core theory to real-world advanced interview problems.

## My Journey
* **Theory Foundation:** Completed the CampusX SQL for Data Analysis track.
* **Platform Practice:** Actively solving challenges on **StrataScratch** and **LeetCode (Top SQL 50)**.
* **Goal:** Consistent daily commits to master complex querying and maintain my GitHub contribution streak.

---

##  Repository Contents

### 1. Interview Platforms (StrataScratch / LeetCode)
* **`finding_updated_records.sql`**
  * **Platform:** StrataScratch (Easy - Microsoft)
  * **Concepts:** Avoiding `GROUP BY` structural errors, handling historical row variations without timestamps, utilizing Subqueries / Window Functions (`ROW_NUMBER()`).

### 2. Core Concepts & Theory (CampusX)
* **`filtering_aggregations_DML.sql`**
  * **Concepts:** `WHERE` vs `HAVING`, `GROUP BY` logic, aggregations (`SUM`, `COUNT`, `AVG`), and DML basics.
  * **Dataset:** `insurance_data`
* **`joins_learning.sql`**
  * **Concepts:** `INNER JOIN` across 2 and 3 tables, multi-table aggregations.
  * **Dataset:** `daraz` (`orders`, `users`, `order_details`)

---

##  Tech Stack & Dialects
* **Languages:** SQL (MySQL, PostgreSQL)
* **Tools Used:** GitHub Fine-Grained Tokens for secure workspace tracking.

##  Key Takeaways & Lessons Learned
* Always ensure columns in the `SELECT` clause are either aggregated or present in the `GROUP BY` clause to prevent database engine failures.
* Prefer window functions like `ROW_NUMBER() OVER (PARTITION BY ...)` when pulling full records matching max/min criteria across historical data.
