-- Berikut adalah langkah-langkah yang sudah saya buat
-- 1). Saya buat dan insert terlebih dahulu data berdasarkan soal, di sini saya buat dengan nama table users

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    parent_id INTEGER
);

INSERT INTO users (name, parent_id) VALUES
    ('Zaki', 2),
    ('Ilham', NULL),
    ('Irwan', 2),
    ('Arka', 3);

-- 2). Lalu saya tambahkan kolom parent_name untuk nanti dipanggil 

ALTER TABLE users
ADD COLUMN parent_name VARCHAR(255);

-- 3). Selanjutnya saya menetapkan nilai kolom parent_name di tabel u1 (tabel yang sedang diperbarui) menjadi nilai dari kolom name di tabel u2.

UPDATE users AS u1
SET parent_name = u2.name
FROM users AS u2
WHERE u1.parent_id = u2.id;

-- 4). Dan selanjutnya adalah memanggil data-data sesuai output dari soal

SELECT id, name, parent_name
FROM users
ORDER BY id;
