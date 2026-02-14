-- Verification queries to check your schema implementation
-- Run these queries to verify your database design is correct

-- 1. Check if all tables exist
SELECT table_name FROM information_schema.tables
WHERE table_schema = 'public'
ORDER BY table_name;

-- 2. Check authors table structure
DESC authors;

-- 3. Check books table structure
DESC books;

-- 4. Check reading_list table structure
DESC reading_list;

-- 5. Check reviews table structure
DESC reviews;

-- 6. Test a join query (once your schema is complete)
-- This query should list books with their authors
-- SELECT b.title, a.name, b.genre, b.published_year
-- FROM books b
-- JOIN authors a ON b.author_id = a.id
-- ORDER BY b.published_year DESC;

-- 7. Test inserting a new author
-- INSERT INTO authors (name, bio) VALUES ('Test Author', 'A test author');
-- SELECT * FROM authors WHERE name = 'Test Author';

-- 8. Check for foreign key constraints
SELECT constraint_name, table_name, column_name
FROM information_schema.key_column_usage
WHERE table_schema = 'public'
ORDER BY table_name, column_name;
