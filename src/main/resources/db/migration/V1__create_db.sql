CREATE TABLE IF NOT EXISTS client (
    id SERIAL PRIMARY KEY,
    name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS planet (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(500) NOT NULL
);

CREATE TABLE IF NOT EXISTS ticket (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    client_id INTEGER REFERENCES client(id),
    from_planet_id VARCHAR(10) REFERENCES planet(id),
    to_planet_id VARCHAR(10) REFERENCES planet(id)
);

ALTER TABLE ticket ADD CONSTRAINT fk_client FOREIGN KEY (client_id) REFERENCES client(id);
ALTER TABLE ticket ADD CONSTRAINT fk_from_planet FOREIGN KEY (from_planet_id) REFERENCES planet(id);
ALTER TABLE ticket ADD CONSTRAINT fk_to_planet FOREIGN KEY (to_planet_id) REFERENCES planet(id);