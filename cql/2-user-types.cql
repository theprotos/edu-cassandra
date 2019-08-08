CREATE TYPE article
(
  id int,
  name text,
  price decimal
);

ALTER TYPE article
RENAME id TO id1 AND ADD id2 int
;

ALTER TYPE article
ADD id2 int
;

describe types;
describe article;

CREATE TABLE invoice
(
  id int PRIMARY KEY,
  buyer text,
  items list<frozen<article>>
);

INSERT INTO invoice (id, buyer, items)
VALUES (1, 'Joe', [{id: 1, name: 'Book', price: 11.99}, {id: 2, name: 'Computer', price: 3333}]);

SELECT * FROM invoice;

UPDATE invoice
SET items = items + [{id: 3, name: 'Cable', price: 1.00}]
WHERE id = 1;
