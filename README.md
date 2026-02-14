# Bookshelf Schema — SQL & Database Design

Design a database schema for a bookshelf app using SQL in the Supabase dashboard.

## What You'll Learn

- SQL `CREATE TABLE` with proper data types
- `INSERT` statements to add data
- Foreign keys and table relationships
- `SELECT` queries with `JOIN`
- Using the Supabase SQL Editor and Table Editor

## Tech Stack

- **SQL** — database language
- **Supabase** — hosted PostgreSQL database with visual dashboard

## Getting Started

```bash
# 1. Clone this repo
git clone https://github.com/LoisBN/fpp-bookshelf-schema.git
cd fpp-bookshelf-schema

# 2. Open the SQL files in VS Code
# Then go to your Supabase dashboard → SQL Editor
```

No `npm install` needed — this exercise is done entirely in the Supabase Dashboard! The SQL files here are what you'll copy into the SQL Editor.

## Project Structure

```
fpp-bookshelf-schema/
├── README.md      ← You are here
├── schema.sql     ← Table definitions (CREATE TABLE statements)
├── seed.sql       ← Sample data (INSERT statements)
└── verify.sql     ← Test queries (SELECT statements to check your work)
```

## Your Exercise Tasks

See the exercise instructions on the course platform. The short version:

1. Read through schema.sql to understand the table design
2. Create the books table in Supabase SQL Editor
3. Insert sample books using seed.sql
4. Create a genres table and link it with a foreign key
5. Run verify.sql queries to check everything works

## Hints

- In Supabase: Dashboard → SQL Editor → New Query → paste SQL → Run
- After creating tables, check the Table Editor tab to see them visually
- Common data types: `text`, `integer`, `boolean`, `timestamp with time zone`
- Foreign key syntax: `genre_id integer references genres(id)`
- Use `SELECT * FROM books JOIN genres ON books.genre_id = genres.id` to test the relationship

---

Built for [AI Code Academy](https://aicode-academy.com) — From Prompt to Production course.
