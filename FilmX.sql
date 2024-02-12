CREATE TABLE film (
	film_id SERIAL PRIMARY KEY,
	title VARCHAR(50) NOT NULL,
	imdb REAL NOT NULL,
	length INTEGER NOT NULL,
	description TEXT NOT NULL,
	year INTEGER NOT NULL,
	box_office INTEGER NOT NULL,
	category_type VARCHAR(50) NOT NULL
);

INSERT INTO film (title,imdb,length,description,year,box_office,category_type)
VALUES 
	('Fight Club', 8.8, 139, 'An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.', 1999,100853753, 'drama, thriller'),

	('Intime',6.7,109,'In a world where people stop aging at the age of 25 and time is more valuable than money. Will Salas, accused of murder, escapes with a hostage and forms an important alliance against the oppressive system.',2011, 173900000,'science fiction, action'),

	('PK', 8.1, 153 , 'The film follows the extraterrestrial being PK as he navigates humorous and thought-provoking events while attempting to understand human cultures, questioning aspects like religion, language, and society. ', 2014, 115000000,'science fiction, comedy'),

	('Inception', 8.8, 148 , 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.', 2010, 836800000 ,'science fiction'),

	('Scarface', 8.3, 170 , 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 1983,65100000, 'crime, drama'),

	('Joker', 8.4, 122 , 'The film depicts the transformation of Arthur Fleck, an outcast from society, into the crime genius known as Joker in the city of Gotham, showcasing his descent into madness.', 2019,1074000000,'psychological tension'),

	('Interstellar', 8.6, 169 , 'The film follows a group of astronauts on a space journey in search of a new habitat for humanity after a climate catastrophe on Earth.', 2014, 773500000 , 'science fiction'),

	('Forrest Gump', 8.8, 142 , 'The film depicts the life of Forrest Gump, a man with low IQ who witnesses extraordinary events and significantly influences American history by participating in various important events.', 1994, 677386686,'comedy, drama'),

	('Lucy', 6.4, 89 , 'The film follows the struggle of a young woman named Lucy, who develops extraordinary mental and physical abilities after an incident involving drug trafficking.', 2014,434057600,'science fiction'),

	('The Losers Club', 8.1, 130 , 'The film tells the story of Zafer, who leads a mundane life, and his establishment of "The Losers Club" as a means to cope with depression.', 2011,5000000, 'comedy, drama');

CREATE TABLE actor (
	actor_id SERIAL PRIMARY KEY,
	actor_name VARCHAR(50) NOT NULL,
	actor_salary INTEGER NOT NULL,
	film_id INTEGER REFERENCES film(film_id)
);

INSERT INTO actor (actor_name,actor_salary,film_id)
VALUES 
	('Brad Pitt', 20000000,1),
    ('Edward Norton', 15000000,1),
    ('Meat Loaf', 10000000,1),
    ('Justin Timberlake', 9000000,2),
    ('Amanda Seyfried', 5000000,2),
    ('Cillian Murphy', 5000000,2),
    ('Aamir Khan', 10000000,3),
    ('Anushka Sharma', 8000000,3),
    ('Sanjay Dutt', 4000000,3),
    ('Leonardo DiCaprio',20000000,4),
    ('Joseph Gordan-Levitt', 10000000,4),
    ('Elliot Page', 10000000,4),
    ('Al Pacino', 10000000,5),
    ('Michelle Pfeiffer', 5000000,5),
    ('Steven Bauer', 3000000,5),
    ('Joaquin Phoenix', 4500000,6),
    ('Robert De Niro', 3000000,6),
    ('Zazie Beetz', 1000000,6),
    ('Matthew McConaughey', 9000000 ,7),
    ('Anne Hathaway', 8000000,7),
    ('Jessica Chastain', 6000000,7),
    ('Tom Hanks', 40000000,8),
    ('Robin Wright', 5000000,8),
    ('Gary Sinise', 3000000,8),
    ('Scarlet Johansson', 8000000,9),
    ('Morgan Freeman', 7000000,9),
    ('Choi Min-sik', 2000000,9),
    ('Nejat İşler', 10000000,10),
    ('Yiğit Özşener', 10000000,10),
    ('Ahu Türkpençe', 6000000,10);

CREATE TABLE director (
	director_id SERIAL PRIMARY KEY,
	director_name VARCHAR(50) NOT NULL,
	director_gender VARCHAR(50) NOT NULL,
	director_salary INTEGER NOT NULL,
	film_id INTEGER REFERENCES film(film_id)
);

INSERT INTO director (director_name,director_gender,director_salary,film_id)
VALUES
    ('David Fincher', 'male', 8000000,1),
    ('Andrew Niccol', 'male', 4000000,2),
    ('Rajkumar Hirani', 'male', 5000000,3),
    ('Cristopher Nolan', 'male', 15000000,4),
    ('Brian De Palma', 'male', 9000000,5),
    ('Todd Phillips', 'male', 2000000,6),
    ('Cristopher Nolan', 'male', 4000000,7),
    ('Robert Zemeckis', 'male', 15000000,8),
    ('Luc Besson', 'male', 6000000,9),
    ('Tolga Örnek', 'male', 3000000,10);

CREATE TABLE country (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(50) NOT NULL,
    language VARCHAR(50) NOT NULL,
    film_id INTEGER REFERENCES film(film_id)
);

INSERT INTO country (country_name,language,film_id)
VALUES
    ('USA', 'English',1),
    ('USA', 'English',2),
    ('India', 'Hindi',3),
    ('USA', 'English',4),
    ('USA', 'English',5),
    ('USA', 'English',6),
    ('USA', 'English',7),
    ('USA', 'English',8),
    ('France', 'English',9),
    ('Turkey', 'Turkish',10);

CREATE TABLE users(
	user_id SERIAL PRIMARY KEY,
	user_name VARCHAR(50) NOT NULL,
    user_age INTEGER NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);

INSERT INTO users (user_name,user_age,email,password)
VALUES 
	('Feyza Şahan',22,'Feyzasahan@gmail.com','mugla1509'),
    ('Deniz Kaya',34,'denizKaya06@outlook.com','2343-deniz-2343'),
    ('Burak Aydın',56,'kralBurak1881@gmail.com','123kralkral123'),
    ('Emre Demir',19,'arabasevdasi@gmail.com','fordfocus'),
    ('Caner Karahan',17,'karahanli_polat@hotmail.com','12345678.CK'),
    ('Gizem Çelik',25,'gizemgizem@gmail.com','gizem123456'),
    ('Ayşe Aktaş',16,'aysesincan@gmail.com','yoldayuruyenkedi'),
    ('Melis Tekin',36,'34melis34@hotmail.com','tarantula61'),
    ('İrem Arslan',17,'izmirliirem@outlook.com','komaistas123'),
	('Ömer Polat',23,'vatozpolat@gmail.com','vatozbaligi');

CREATE TABLE payment(
	payment_id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users(user_id),
    amount INTEGER NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50) NOT NULL
);

INSERT INTO payment(user_id,amount,payment_date,payment_method)
VALUES 
	(1,30,'01.01.2024','Visa - 1234 5678 9012 3456'),
    (2,30,'10.12.2023','Visa - 7234 4124 0574 9401'),
    (3,30,'02.01.2024','MasterCard  - 9463 9832 1283 6372'),
    (4,30,'26.12.2023','Visa - 4210 9876 5432 1098'),
    (5,20,'13.12.2023','MasterCard  - 011 1122 3344 5566'),
    (6,30,'10.01.2024','Visa - 4912 3456 7890 1234'),
    (7,20,'26.12.2023','Visa - 6333 1122 3344 5566'),
    (8,30,'06.01.2024','MasterCard  - 1800 8765 4321 9876'),
    (9,20,'10.01.2024','MasterCard  - 3802 3456 7890 5678'),
    (10,30,'12.12.2023','Visa - 4716 1234 5678 9012');

CREATE TABLE watched (
	watched_id SERIAL PRIMARY KEY,
	film_id INTEGER REFERENCES film(film_id),
	user_id INTEGER REFERENCES users(user_id),
	comment TEXT NOT NULL,
	last_update DATE NOT NULL
);

INSERT INTO watched (film_id,user_id,comment,last_update)

VALUES 
	(1,1,'It was a cleverly woven psychological thriller. It seems like it takes the audience on an emotional journey with deep characters and striking scenes.','2017-08-15'),
	(2,2,'An impressive dystopian film about a struggle against time. A striking production that questions the effects of time on social dynamics.','2018-06-23'),
	(3,3,'An entertaining and thought-provoking production of Bollywood. It deals with conflicts of love, faith and culture in a humorous way. Amir Khan performance and the humorous narrative in the film impress the audience.','2016-04-05'),
	(4,4,'A confusing and gripping science fiction masterpiece. A complex story where the worlds of reality and dreams are intertwined. A visual feast that makes the viewer think deeply.','2020-11-12'),
	(5,5,'A gritty and striking crime drama. Al Pacino unforgettable performance and the intense atmosphere in the film draw the audience deeper into the criminal world. The rise and fall of Tony Montana ensures that you experience a movie full of unforgettable moments.','2019-09-02'),
	(6,6,'An intense and compelling character study. . The film draws the audience on a tense journey with a striking atmosphere and deep narrative, offering an unforgettable portrait in the dark world of Gotham City.','2015-12-30'),
	(7,7,'A visual feast and a magnificent example of science fiction. This film, which deals with the theme of time travel, skillfully combines the theme of science and humanity.','2022-02-18'),
	(8,8,'A heart touching film that tells the unique story of an unforgettable character. Tom Hanks extraordinary performance and the cleverly touching narrative in the film make the audience both laugh and emotional.','2016-10-08'),
	(9,9,'A science fiction movie that attracts attention with Scarlett Johansson  remarkable performance and striking visual effects. The film is a must-watch with a gripping story based on exploring human potential.','2017-07-21'),
	(10,10,'Focusing on the lives of losers, the film attracts attention with its character depth and extraordinary atmosphere. This production, which deals with the complexities of life in a humorous way, makes its audience think.','2021-03-14');
 
CREATE TABLE favourite(
	favourite_id SERIAL PRIMARY KEY,
    favourite_category VARCHAR(50) NOT NULL,
	user_id INTEGER REFERENCES users(user_id),
    film_id INTEGER REFERENCES film(film_id),
    director_id INTEGER REFERENCES director(director_id),
    actor_id INTEGER REFERENCES actor(actor_id)
    
);

INSERT INTO favourite(favourite_category,user_id,film_id,director_id,actor_id)
VALUES
    ('comedy',1,3,7,14),
    ('science fiction',2,4,7,2),
    ('comedy',3,7,7,11),
    ('psychological tension',4,1,6,8),
    ('action',5,10,2,21),
    ('drama',6,3,4,12),
    ('comedy',7,2,4,5),
    ('science fiction',8,9,9,17),
    ('drama',9,3,1,19),
    ('psychological tension',10,6,5,1);
