-- ALTER TABLE users
-- ADD COLUMN email varchar(64);

/* ALTER TABLE users
ADD COLUMN isAdmin BOOLEAN DEFAULT FALSE; */

/* ALTER TABLE users
RENAME COLUMN name TO first_name; */

/* ALTER TABLE users
RENAME COLUMN isadmin TO is_admin; */

/* ALTER TABLE users
ADD COLUMN last_name VARCHAR(32) NOT NULL DEFAULT 'Silva'; */

/* UPDATE users
SET last_name = 'Moura'
WHERE id = 1; */

/* UPDATE users
SET last_name = 'Pascal'
WHERE id = 2; */

/* INSERT INTO users (age)
VALUES
    ('Usuario1', 25),
    ('Usuario2', 30);
 */

/* UPDATE users
SET age = 25
WHERE age < 20;
 */

/* INSERT INTO users (first_name, age)
VALUES
    ('Jéssica', 24),
    ('Eduardo', 19),
    ('Carol', 22),
    ('Rafaela', 18),
    ('Natalia', 18); */

/* DELETE FROM users
WHERE age > 20
RETURNING *; */

-- UPDATE users
-- SET is_admin = TRUE
-- WHERE id = 13;

SELECT * FROM users;

-- SELECT * FROM users
-- WHERE is_admin = false
-- ORDER BY age;

-- SELECT COUNT(*) AS users
-- FROM users;




