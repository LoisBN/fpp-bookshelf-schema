-- Sample data for the bookshelf schema

-- Insert sample authors
INSERT INTO authors (name, bio) VALUES
  ('J.K. Rowling', 'British author of the Harry Potter series'),
  ('George R.R. Martin', 'American fantasy author'),
  ('J.R.R. Tolkien', 'British philologist and fantasy author');

-- Insert sample books
-- Note: These INSERT statements assume you've added the author_id foreign key
-- INSERT INTO books (title, author_id, genre, published_year, cover_url, rating) VALUES
--   ('Harry Potter and the Philosopher''s Stone', (SELECT id FROM authors WHERE name = 'J.K. Rowling'), 'Fantasy', 1997, 'https://example.com/hp1.jpg', 4.9),
--   ('A Game of Thrones', (SELECT id FROM authors WHERE name = 'George R.R. Martin'), 'Fantasy', 1996, 'https://example.com/got1.jpg', 4.8),
--   ('The Hobbit', (SELECT id FROM authors WHERE name = 'J.R.R. Tolkien'), 'Fantasy', 1937, 'https://example.com/hobbit.jpg', 4.7),
--   ('Harry Potter and the Chamber of Secrets', (SELECT id FROM authors WHERE name = 'J.K. Rowling'), 'Fantasy', 1998, 'https://example.com/hp2.jpg', 4.8),
--   ('The Lord of the Rings: The Fellowship of the Ring', (SELECT id FROM authors WHERE name = 'J.R.R. Tolkien'), 'Fantasy', 1954, 'https://example.com/lotr1.jpg', 4.9);
