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

---

## Exercise: Step-by-Step Instructions

> **Read each step carefully.** We tell you exactly _where_ to do each thing — your VSCode terminal, your browser, the Supabase dashboard, or Claude.

> **Important:** This exercise does NOT require `npm install` or running a dev server. Everything happens in the Supabase dashboard and your code editor!

---

### Step 1: Clone the repository

> 📍 **Where:** Your VSCode terminal (`` Ctrl + ` `` to open it)

Navigate to where you want the project (e.g. your Desktop), then clone and open it:

```bash
cd ~/Desktop
git clone https://github.com/LoisBN/fpp-bookshelf-schema.git
cd fpp-bookshelf-schema
code .
```

> 💡 **What just happened?** You downloaded the SQL files from GitHub onto your computer. You'll copy these into the Supabase dashboard in the next steps.

---

### Step 2: Open the Supabase Dashboard

> 📍 **Where:** Your browser — go to [supabase.com/dashboard](https://supabase.com/dashboard)

1. Log in to your Supabase account
2. Open your project (or create a new one if you don't have one yet)
3. In the left sidebar, click **"SQL Editor"** (it has a `>_` icon)

You should see a blank SQL editor where you can type and run SQL commands.

> 💡 **What is the SQL Editor?** It's like a terminal, but for your database. You type SQL commands and click "Run" to execute them.

---

### Step 3: Read through the schema file

> 📍 **Where:** VSCode — open the file `schema.sql`

Before running anything, take a minute to **read** the `schema.sql` file. It contains `CREATE TABLE` statements that define the structure of your database tables.

Look for:
- The table names (e.g. `books`, `genres`)
- The column names and their types (e.g. `title text`, `pages integer`)
- The `references` keyword — that's how tables are linked together

> 💡 **Don't worry if you don't understand everything yet.** The goal is to get familiar with the shape of SQL before you run it.

---

### Step 4: Create the tables in Supabase

> 📍 **Where:** Your browser — Supabase Dashboard → SQL Editor

1. Go back to the **SQL Editor** in your Supabase dashboard
2. Click **"New Query"** (top left)
3. Go to VSCode, open `schema.sql`, and **copy the entire file contents** (`Ctrl+A` to select all, then `Ctrl+C` to copy)
4. Go back to the Supabase SQL Editor and **paste** it (`Ctrl+V`)
5. Click the **"Run"** button (or press `Ctrl+Enter`)

You should see a green "Success" message at the bottom.

> 💡 **How to check it worked:** In the left sidebar of Supabase, click **"Table Editor"**. You should see your new tables listed there! Click on one to see its columns.

---

### Step 5: Insert sample data

> 📍 **Where:** Your browser — Supabase Dashboard → SQL Editor

1. Click **"New Query"** again (so you start fresh)
2. Go to VSCode, open `seed.sql`, and **copy the entire file contents**
3. Paste it into the SQL Editor
4. Click **"Run"**

> 📍 **Where:** Supabase Dashboard → Table Editor (left sidebar)

Go to **Table Editor** and click on the `books` table. You should see rows of data — those are the sample books you just inserted!

> 💡 **What just happened?** `INSERT INTO` adds rows of data to your tables. The `seed.sql` file had pre-written INSERT statements so you don't have to type them all by hand.

---

### Step 6: Run verification queries

> 📍 **Where:** Your browser — Supabase Dashboard → SQL Editor

1. Click **"New Query"**
2. Go to VSCode, open `verify.sql`, and **copy the entire file contents**
3. Paste it into the SQL Editor
4. Click **"Run"**

You'll see query results at the bottom of the screen. These `SELECT` statements test that your tables are set up correctly and that the relationships between tables work.

> 💡 **What is a JOIN?** When you see `SELECT * FROM books JOIN genres ON books.genre_id = genres.id`, that's combining data from two tables. It says "get me the books AND their genre names, linked by the genre_id column."

---

### Step 7: Experiment on your own!

> 📍 **Where:** Supabase Dashboard → SQL Editor

Now try writing your own SQL! Here are some things to try:

**Add a new book:**
```sql
INSERT INTO books (title, author, pages)
VALUES ('The Great Gatsby', 'F. Scott Fitzgerald', 180);
```

**Find all books with more than 300 pages:**
```sql
SELECT * FROM books WHERE pages > 300;
```

**Count how many books are in each genre:**
```sql
SELECT genres.name, COUNT(books.id)
FROM books
JOIN genres ON books.genre_id = genres.id
GROUP BY genres.name;
```

> 💡 **Stuck?** Ask Claude! For example: *"I want to add a 'rating' column to my books table. What SQL do I need?"*

---

## Bonus: Ask Claude for Help

If you get stuck or want to explore more, try asking Claude:

- **"What does `references` mean in a CREATE TABLE statement?"** — Claude will explain foreign keys
- **"How do I add a new column to an existing table?"** — Claude will show you `ALTER TABLE`
- **"Write a SQL query that finds the longest book in each genre"** — Claude can write queries for you
- **"I got this error in Supabase: [paste error]"** — Claude can help debug SQL errors

---

## Project Structure

```
fpp-bookshelf-schema/
├── README.md      ← You are here
├── schema.sql     ← Table definitions (CREATE TABLE statements) — read this first!
├── seed.sql       ← Sample data (INSERT statements) — run this second
└── verify.sql     ← Test queries (SELECT statements) — run this last to check your work
```

---

## Troubleshooting

**"relation already exists" error:**
- This means the table was already created. You can either drop it first with `DROP TABLE IF EXISTS tablename;` or skip that step.

**"column X does not exist" error:**
- Double-check the column names in your SQL match exactly what's in `schema.sql`. SQL is case-sensitive for column names in quotes.

**Can't find the SQL Editor:**
- In the Supabase dashboard, look at the left sidebar. Click the icon that looks like `>_` or says "SQL Editor".

**Tables don't show up in Table Editor:**
- Make sure you clicked "Run" and saw a success message. Then refresh the Table Editor page.

---

Built for [AI Code Academy](https://aicode-academy.com) — From Prompt to Production course.
