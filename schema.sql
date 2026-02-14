-- Bookshelf Database Schema
-- Design a personal bookshelf database with proper relationships

-- Table: authors
-- Stores information about book authors
CREATE TABLE authors (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  bio TEXT,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Table: books
-- Stores information about books
-- TODO: Complete this table definition
-- Add: title, publication year, genre, cover image URL, rating
-- TODO: Add a foreign key relationship to authors
CREATE TABLE books (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  title TEXT NOT NULL,
  -- TODO: Add author_id as a foreign key to authors(id)
  -- TODO: Add genre TEXT
  -- TODO: Add published_year INTEGER
  -- TODO: Add cover_url TEXT
  -- TODO: Add rating NUMERIC
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Table: reading_list
-- Stores user reading lists with status tracking
-- TODO: Complete this table definition
-- Add: user_id and book_id foreign keys, status (reading/completed/want-to-read)
CREATE TABLE reading_list (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  -- TODO: Add user_id UUID (foreign key to auth.users)
  -- TODO: Add book_id UUID (foreign key to books)
  status TEXT CHECK (status IN ('want-to-read', 'reading', 'completed')) DEFAULT 'want-to-read',
  -- TODO: Add started_at TIMESTAMPTZ
  -- TODO: Add finished_at TIMESTAMPTZ
  created_at TIMESTAMPTZ DEFAULT now()
);

-- Table: reviews
-- Stores user reviews and ratings for books
-- TODO: Complete this table definition
CREATE TABLE reviews (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  -- TODO: Add user_id UUID (foreign key to auth.users)
  -- TODO: Add book_id UUID (foreign key to books)
  rating INTEGER CHECK (rating >= 1 AND rating <= 5),
  content TEXT,
  created_at TIMESTAMPTZ DEFAULT now()
);

-- TODO: Add indexes for better query performance
-- Consider indexes on: authors.name, books.title, reading_list.user_id, reviews.book_id
