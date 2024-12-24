
CREATE TABLE publishers
(
    UniqueID SERIAL PRIMARY KEY,
    name     VARCHAR(255) NOT NULL
);

CREATE TABLE languages
(
    UniqueID SERIAL PRIMARY KEY,
    language VARCHAR(50) NOT NULL
);

CREATE TYPE gender AS ENUM (
    'Male',
    'Female'
    );

CREATE TABLE authors
(
    UniqueID      SERIAL PRIMARY KEY,
    first_name    VARCHAR(100) NOT NULL,
    last_name     VARCHAR(100) NOT NULL,
    email         VARCHAR(255) UNIQUE,
    date_of_birth DATE,
    country       VARCHAR(100),
    gender        Gender
);


CREATE TYPE genre AS ENUM (
    'DETECTIVE',
    'DRAMA',
    'HISTORY',
    'ROMANCE',
    'BIOGRAPHY',
    'FANTASY'
    );

CREATE TABLE books
(
    UniqueID       SERIAL PRIMARY KEY,
    name           VARCHAR(255) NOT NULL,
    country        VARCHAR(100),
    published_year DATE,
    price          NUMERIC(10, 2),
    genre          VARCHAR(50),
    language_id    INT REFERENCES languages (UniqueID),
    publisher_id   INT REFERENCES publishers (UniqueID),
    author_id      INT REFERENCES authors (UniqueID)
);



insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/25/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/31/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/16/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/24/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/29/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/14/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/29/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/17/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/28/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/28/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/17/1962', 'United States', 'Female');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values ('Taina', 'Russia', '11/12/2021', '568', 'DETECTIVE', '5', '12', '6'),
       ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANS', '5', '13', '11'),
       ('Homo Faber', 'Germany', '4/10/2022', '772', 'FANTASY', '3', '5', '3'),
       ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780', 'DETECTIVE', '3', '3', '10'),
       ('Lord of the Flies', 'United States', '7/11/2015', '900', 'FANTASY', '1', '2', '4'),
       ('Un soir au club', 'France', '1/12/2018', '480', 'DRAMA', '2', '1', '1'),
       ('Voina', 'Russia', '12/6/2004', '880', 'HISTORY', '5', '4', '13'),
       ('Sun Tzu', 'China', '9/5/2022', '349', 'HISTORY', '4', '4', '2'),


       ('Emil und die Detektive', 'Germany', '6/11/2010', '228', 'DETECTIVE', '3', '5', '10'),
       ('Coule la Seine', 'France', '3/1/2015', '732', 'FANTASY', '2', '6', '1'),
       ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANS', '5', '14', '13'),
       ('Fantastic Mr Fox', 'United States', '3/10/2018', '309', 'FANTASY', '1', '9', '8'),
       ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANS', '2', '6', '9'),
       ('“The Death of Ivan Ilyich', 'Russia', '9/24/2000', '814', 'DRAMA', '5', '6', '6'),
       ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANS', '2', '8', '5'),
       ('Die Verwandlung', 'Germany', '6/19/2008', '305', 'DETECTIVE', '3', '7', '12'),
       ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566', 'DETECTIVE', '3', '3', '3'),
       ('LÉtranger', 'France', '11/14/2017', '422', 'ROMANS', '2', '8', '5'),
       ('Lao Tse', 'China', '7/16/2005', '900', 'FANTASY', '4', '4', '2'),
       ('Semya', 'Russia', '4/12/2004', '194', 'DRAMA', '5', '13', '11'),
       ('Empty World', 'United States', '1/4/2008', '324', 'FANTASY', '1', '11', '15'),
       ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANS', '3', '5', '10'),
       ('The Fault in Our Stars', 'United States', '2/13/2008', '396', 'ROMANS', '1', '9', '4'),
       ('Die R uber', 'Germany', '6/25/2020', '300', 'ROMANS', '3', '7', '12'),
       ('Jung Chang', 'China', '5/14/2021', '600', 'HISTORY', '4', '10', '7'),
       ('Les Aventures de Tintin', 'France', '4/10/2015', '582', 'DRAMA', '2', '1', '5'),
       ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269', 'DETECTIVE', '3', '5', '10'),
       ('Amy Tan', 'China', '1/9/2023', '486', 'DRAMA', '4', '4', '7'),
       ('Krasnaya luna', 'Russia', '2/7/2020', '550', 'FANTASY', '5', '12', '11'),
       ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY', '1', '2', '15');

-- 1. Китептердин атын, чыккан жылын, жанрын чыгарыңыз.
SELECT name, published_year, genre
FROM books;

-- 2. Авторлордун мамлекеттери уникалдуу чыксын.
SELECT DISTINCT country
FROM authors;

-- 3. 2020-2023 жылдардын арасындагы китептер чыксын.
SELECT name, published_year
FROM books
WHERE EXTRACT(YEAR FROM published_year) BETWEEN 2020 AND 2023;

-- 4. Детектив китептер жана алардын аттары чыксын.
SELECT name
FROM books
WHERE genre = 'DETECTIVE';

-- 5. Автордун аты-жөнү author деген бир колонкага чыксын.
SELECT CONCAT(first_name, ' ', last_name) AS author
FROM authors;

-- 6. Германия жана Франциядан болгон авторлорду толук аты-жөнү менен сорттоп чыгарыңыз.
SELECT CONCAT(first_name, ' ', last_name) AS author
FROM authors
WHERE country IN ('Germany', 'France')
ORDER BY author;

-- 7. Романдан башка жана баасы 500дөн кичине болгон китептердин аты, өлкөсү, чыккан жылы, баасы, жанры чыксын.
SELECT name, country, published_year, price, genre
FROM books
WHERE genre != 'ROMANCE'
  AND price < 500;

-- 8. Бардык кыз авторлордун биринчи 3нү чыгарыңыз.
SELECT first_name, last_name
FROM authors
WHERE gender = 'Female'
    LIMIT 3;

-- 9. Почтасы .com менен бүткөн, аты 4 тамгадан турган, кыз авторлорду чыгарыңыз.
SELECT first_name, last_name, email
FROM authors
WHERE email LIKE '%.com'
  AND LENGTH(first_name) = 4
  AND gender = 'Female';

-- 10. Бардык өлкөлөрдү жана ар бир өлкөдө канчадан автор бар экенин чыгаргыла.
SELECT country, COUNT(*) AS author_count
FROM authors
GROUP BY country;

-- 11. Үч автор бар болгон өлкөлөрдү аты менен сорттоп чыгарыңыз.
SELECT country
FROM authors
GROUP BY country
HAVING COUNT(*) = 3
ORDER BY country;

-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыңыз.
SELECT genre, SUM(price) AS total_price
FROM books
GROUP BY genre;

-- 13. Роман жана Детектив китептеринин эң арзан бааларын чыгарыңыз.
SELECT genre, MIN(price) AS min_price
FROM books
WHERE genre IN ('ROMANCE', 'DETECTIVE')
GROUP BY genre;

-- 14. История жана Биографиялык китептердин сандарын чыгарыңыз.
SELECT genre, COUNT(*) AS book_count
FROM books
WHERE genre IN ('HISTORY', 'BIOGRAPHY')
GROUP BY genre;


-- 15. Китептердин, издательстволордун аттары жана тили чыксын.
SELECT b.name AS book_name, p.name AS publisher_name, l.language
FROM books b
         JOIN publishers p ON b.publisher_id = p.UniqueID
         JOIN languages l ON b.language_id = l.UniqueID;

-- 16. Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын.
SELECT a.*, p.name AS publisher_name
FROM authors a
         LEFT JOIN books b ON a.UniqueID = b.author_id
         LEFT JOIN publishers p ON b.publisher_id = p.UniqueID;

-- 17. Авторлордун толук аты-жөнү жана китептери чыксын, китеби жок болсо null чыксын.
SELECT CONCAT(a.first_name, ' ', a.last_name) AS author, b.name AS book_name
FROM authors a
         LEFT JOIN books b ON a.UniqueID = b.author_id;

-- 18. Кайсы тилде канча китеп бар экендиги ылдыйдан жогоруга сорттолуп чыксын.
SELECT l.language, COUNT(*) AS book_count
FROM books b
         JOIN languages l ON b.language_id = l.UniqueID
GROUP BY l.language
ORDER BY book_count DESC;

-- 19. Издательствонун аттары жана алардын тапкан акчасынын орточо суммасы тегеректелип чыгарылсын.
SELECT p.name AS publisher_name, ROUND(AVG(b.price), 2) AS average_income
FROM books b
         JOIN publishers p ON b.publisher_id = p.UniqueID
GROUP BY p.name;

-- 20. 2010-2015 жылдардын арасындагы китептер жана автордун аты-жөнү чыксын.
SELECT b.name AS book_name, CONCAT(a.first_name, ' ', a.last_name) AS author
FROM books b
         JOIN authors a ON b.author_id = a.UniqueID
WHERE EXTRACT(YEAR FROM b.published_year) BETWEEN 2010 AND 2015;

-- 21. 2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жөнү жана алардын тапкан акчаларынын жалпы суммасы чыксын.
SELECT CONCAT(a.first_name, ' ', a.last_name) AS author, SUM(b.price) AS total_income
FROM books b
         JOIN authors a ON b.author_id = a.UniqueID
WHERE EXTRACT(YEAR FROM b.published_year) BETWEEN 2010 AND 2015
GROUP BY author;