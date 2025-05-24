-- Active: 1747802603055@@127.0.0.1@5432@postgres

CREATE Table "user"(
  id SERIAL PRIMARY KEY ,
  username VARCHAR(50) NOT NULL
)

CREATE Table post(
  id SERIAL PRIMARY KEY ,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
)


DROP Table post

DROP Table "user"

INSERT INTO "user" (username) 
VALUES 
('kiron'),
('ripon'),
('ajmir')


INSERT INTO "user" (username)
VALUES
('Alice'),
('Bob'),
('Charlie'),
('Diana')


SELECT * FROM "user"



INSERT INTO post (title, user_id) VALUES
('Post by Alice 1', 1),
('Post by Alice 2', 1),
('Post by Bob 1', 2),
('Post by Charlie 1', 3),
('Post by Charlie 2', 3),
('Post by Charlie 3', 3),
('Post by Diana 1', 4);


INSERT INTO post (title, user_id) VALUES
('Post by normal 1', 4)








INSERT INTO "user" (username) 
 VALUES 
 ('newUser1')








SELECT * FROM post

SELECT * FROM "user"


SELECT title , username, post.id as post_id FROM post
JOIN "user" ON post.user_id  = "user".id


SELECT * FROM post 
JOIN "user" ON post.user_id = "user".id

SELECT * FROM post 
LEFT JOIN "user" ON post.user_id = "user".id


SELECT * 
FROM post 
RIGHT JOIN "user" ON post.user_id = "user".id 




