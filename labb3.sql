DROP TABLE IF EXISTS kafedra CASCADE;
DROP TABLE IF EXISTS student_gr CASCADE;
DROP TABLE IF EXISTS student CASCADE;

CREATE TABLE kafedra (id SERIAL PRIMARY KEY, full_name varchar NOT NULL, decanat varchar);
CREATE TABLE student_gr (id SERIAL PRIMARY KEY, full_name varchar NOT NULL, kafedra INT REFERENCES kafedra(id));
CREATE TABLE student (id SERIAL PRIMARY KEY, full_name varchar NOT NULL, passport varchar(10) NOT NULL, groupp INT REFERENCES student_gr(id));

INSERT INTO kafedra (full_name, decanat) VALUES ('МКиИТ', 'ИТ');
INSERT INTO kafedra (full_name, decanat) VALUES ('Информатика', 'ИТ');
INSERT INTO student_gr (full_name, kafedra) VALUES ('БВТ2203', 1);
INSERT INTO student_gr (full_name, kafedra) VALUES ('БВТ2204', 2);
INSERT INTO student_gr (full_name, kafedra) VALUES ('БВТ2203', 2);
INSERT INTO student_gr (full_name, kafedra) VALUES ('БВТ2205', 1);
INSERT INTO student (full_name, passport, groupp) VALUES ('Пеппа Реппа', '123456', 1);
INSERT INTO student (full_name, passport, groupp) VALUES ('Леди Баг', '654321', 2);
INSERT INTO student (full_name, passport, groupp) VALUES ('Блум Винкс', '234567', 3);
INSERT INTO student (full_name, passport, groupp) VALUES ('Супер Кот', '345678', 4);
INSERT INTO student (full_name, passport, groupp) VALUES ('Лейла Тамажа', '623456', 1);
INSERT INTO student (full_name, passport, groupp) VALUES ('Харчо Зи', '654326', 2);

select * from kafedra



