DROP TABLE IF EXISTS dogs;

CREATE TABLE dogs (
    dog_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    breed VARCHAR(255),
    owner_id INTEGER,
    FOREIGN KEY (owner_id) REFERENCES owners(id)
);


INSERT INTO dogs (name, breed, owner_id) VALUES ('Gucci', 'Maltezer', 3);
INSERT INTO dogs (name, breed, owner_id) VALUES ('Bassie', 'Dwergpoedel', 2);
INSERT INTO dogs (name, breed, owner_id) VALUES ('Chumchum', 'Teckel', 3);
INSERT INTO dogs (name, breed, owner_id) VALUES ('Tit', 'Pomeriaan', 2);

SELECT * FROM dogs;

SELECT dogs.name AS name_of_dog , owners.name AS name_of_owner
FROM dogs
JOIN owners ON dogs.owner_id = owners.id;