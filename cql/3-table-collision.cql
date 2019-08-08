CREATE TABLE user
(
  id int,
  name text,
  PRIMARY KEY (id)
);

INSERT INTO user (id, name)
VALUES ( 1, 'Ada Lovelace');

-- No Key violation? It will override row
INSERT INTO user (id, name)
VALUES ( 1, 'Charles Babbage');

SELECT * FROM user;

-- The row does not exist no error, it will create row
UPDATE user
SET name = 'Linus Torvalds'
WHERE id = 2;