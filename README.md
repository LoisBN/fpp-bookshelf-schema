# Bookshelf Schema — Database Design

Design a database for a personal bookshelf app using SQL and Supabase.

## Getting Started

```bash
git clone https://github.com/LoisBN/fpp-bookshelf-schema.git
cd fpp-bookshelf-schema
```

Open the SQL files and run them in your Supabase SQL Editor.

## Your Tasks

1. Complete the table definitions in `schema.sql`
2. Add foreign key relationships between tables
3. Create proper indexes for query performance
4. Run the seed data to populate sample books and authors
5. Verify relationships in Supabase Table Editor
6. Test your schema with the verification queries

## Project Structure

```
.
├── schema.sql        # Main table definitions (TODO: complete)
├── seed.sql          # Sample data for testing
├── verify.sql        # Query verification scripts
└── README.md         # This file
```

## Tables to Create

- **authors**: Store author information (name, bio)
- **books**: Store book details with author references
- **reading_list**: Track user reading progress and status
- **reviews**: Store user reviews and ratings

## Hints

- Use UUID for primary keys with `gen_random_uuid()` as default
- Foreign keys should reference the id columns of related tables
- Add CHECK constraints for status fields and ratings
- Create indexes on frequently queried columns like names and IDs

Built for [AI Code Academy](https://aicode-academy.com)