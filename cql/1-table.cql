-------------------------------------------------------------
-- $ cqlsh
-------------------------------------------------------------

desc cluster;
desc keyspaces;

CREATE KEYSPACE demo
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};
USE demo;

describe keyspaces;

CREATE TABLE contacts
(
  id int,
  name text,
  phones map<text, text>,
  PRIMARY KEY (id)
);

describe tables;
describe table contacts;

INSERT INTO contacts
  (id, name, phones)
VALUES
  (1, 'Cassandra Smiths', {'Home':'+36 1 1234567','Mobile':'+36 30 7894561'});

SELECT * FROM contacts;

UPDATE contacts
SET phones = phones + {'Other':'+1 205 7897897'}
WHERE id = 1;

SELECT * FROM contacts;
