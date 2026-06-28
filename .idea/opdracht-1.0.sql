DROP TABLE IF EXISTS owners;

CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255)
);

INSERT INTO owners (name, address) VALUES ('Lisselot Bakker', 'Laan 1');
INSERT INTO owners (name, address) VALUES ('Bart Bakker', 'Laan 2');
INSERT INTO owners (name, address) VALUES ('Decha Slim', 'Laan 3');

SELECT * FROM owners;

UPDATE owners
SET address = 'Laan 5'
WHERE name = 'Decha Slim';

SELECT * FROM owners;

DELETE FROM owners
WHERE name = 'Lisselot Bakker';

SELECT * FROM owners;