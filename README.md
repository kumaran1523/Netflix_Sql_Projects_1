# 📺 Netflix SQL Data Analysis

<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/0/08/Netflix_2015_logo.svg" width="350" alt="Netflix Logo">
</p>

<h1 align="center">📺 Netflix Data Analysis using PostgreSQL</h1>

<p align="center">
A complete SQL data analysis project to explore Netflix Movies and TV Shows using PostgreSQL and solve real-world business problems through SQL queries.
</p>

---

# 📌 Project Overview

This project focuses on analyzing the **Netflix Movies and TV Shows** dataset using **PostgreSQL**. The goal is to extract meaningful business insights by writing SQL queries ranging from beginner to advanced level.

The project demonstrates practical SQL skills required for **Data Analyst**, **SQL Developer**, and **Business Intelligence** roles by solving real-world business questions.

---

# 🎯 Project Objectives

* Analyze Netflix Movies and TV Shows data.
* Explore content distribution across countries.
* Perform genre-wise analysis.
* Analyze ratings and release trends.
* Solve business-related SQL problems.
* Practice advanced PostgreSQL queries.
* Improve analytical and problem-solving skills.
* Build a portfolio-ready SQL project.

---

# 🛠 Technologies Used

* PostgreSQL
* SQL
* pgAdmin 4
* CSV Dataset
* Git
* GitHub

---

# 📂 Dataset Information

The dataset contains detailed information about Netflix content.

### Dataset Columns

* Show ID
* Content Type
* Title
* Director
* Cast
* Country
* Date Added
* Release Year
* Rating
* Duration
* Listed In (Genre)
* Description

---

# 🗄 Database Schema

```text
Netflix
│
├── show_id
├── type
├── title
├── director
├── cast
├── country
├── date_added
├── release_year
├── rating
├── duration
├── listed_in
└── description
```

---

# 📚 SQL Concepts Covered

## Basic SQL

* SELECT
* DISTINCT
* WHERE
* ORDER BY
* LIMIT
* ALIAS

## Aggregate Functions

* COUNT()
* SUM()
* AVG()
* MAX()
* MIN()

## Grouping

* GROUP BY
* HAVING

## Conditional Statements

* CASE WHEN

## Advanced SQL

* Common Table Expressions (CTEs)
* Subqueries
* Window Functions
* RANK()
* DENSE_RANK()

## String Functions

* STRING_TO_ARRAY()
* UNNEST()
* SPLIT_PART()
* TRIM()

## Date Functions

* EXTRACT()
* AGE()
* CURRENT_DATE

---

# 📊 Business Problems Solved

### Basic Level

* Count Movies and TV Shows.
* Find the most common rating.
* List movies released in a specific year.
* Find the longest movie.
* Count content by rating.

### Intermediate Level

* Find top countries producing Netflix content.
* Analyze content added over time.
* Count Movies vs TV Shows.
* Find directors with multiple titles.
* Analyze TV Shows with multiple seasons.

### Advanced Level

* Genre-wise analysis.
* Country-wise content distribution.
* Release year trend analysis.
* Rating distribution analysis.
* Window function queries.
* String manipulation queries.
* Content ranking queries.

---

# 📈 Key Business Insights

* Movies dominate the Netflix catalog.
* TV Shows have grown significantly over recent years.
* Certain countries contribute the majority of Netflix content.
* Drama and International Movies are among the most popular genres.
* Content addition increased rapidly after 2015.
* Netflix hosts content across multiple ratings and age groups.
* Genre distribution highlights audience preferences worldwide.

---

# 🚀 SQL Skills Demonstrated

* Data Retrieval
* Data Filtering
* Data Aggregation
* Data Cleaning
* Data Transformation
* Data Exploration
* Business Analysis
* String Manipulation
* Window Functions
* Query Optimization

---

# 📁 Project Structure

```text
Netflix-SQL-Project
│
├── Dataset
│   └── netflix_titles.csv
│
├── SQL
│   └── Netflix_Solutions.sql
│
├── README.md
│
└── Screenshots
```

---

# 💡 Sample SQL Query

```sql
SELECT
    type,
    COUNT(*) AS total_titles
FROM netflix
GROUP BY type
ORDER BY total_titles DESC;
```

---

# 📊 Project Highlights

* Real-world SQL Project
* PostgreSQL Database
* Data Cleaning
* Data Exploration
* Business Intelligence
* SQL Query Optimization
* Aggregate Functions
* Window Functions
* CTEs
* Analytical SQL Queries

---

# 📖 Learning Outcomes

This project helped me strengthen my knowledge of:

* PostgreSQL
* SQL Query Writing
* Data Analysis
* Business Intelligence
* Window Functions
* Aggregate Functions
* String Functions
* CTEs
* Analytical Thinking
* Problem Solving

---

# 🎓 Skills Gained

* SQL
* PostgreSQL
* Data Analytics
* Business Analytics
* Data Cleaning
* Data Exploration
* Reporting
* Query Optimization
* Relational Databases
* Decision-Making using Data

---

# ⭐ Future Improvements

* Build a Power BI Dashboard using the Netflix dataset.
* Develop Tableau visualizations.
* Connect PostgreSQL with Python.
* Create an interactive Streamlit dashboard.
* Perform recommendation system analysis.
* Conduct sentiment analysis on content descriptions.

---

# 🙋 Author

**Kumaran S**

**Data Analyst | SQL | PostgreSQL | Python | Power BI**

---

# ⭐ Support

If you found this project useful, please consider giving it a ⭐ on GitHub. It helps others discover the project and motivates me to build more data analytics projects.

Thank you for visiting this repository!
