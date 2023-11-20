INSERT INTO client (name) VALUES ('Client1'), ('Client2'), ('Client3'), ('Client4'), ('Client5'),
                                    ('Client6'), ('Client7'), ('Client8'), ('Client9'), ('Client10');

INSERT INTO planet (id, name) VALUES ('MARS', 'Mars'), ('VEN', 'Venus'), ('EAR', 'Earth'), ('JUP', 'Jupiter'), ('SAT', 'Saturn');

INSERT INTO ticket (created_at, client_id, from_planet_id, to_planet_id) VALUES
    ('2023-01-01 12:00:00', 1, 'MARS', 'VEN'),
    ('2023-02-02 14:30:00', 2, 'VEN', 'MARS'),
    ('2023-03-03 16:45:00', 3, 'MARS', 'EAR'),
    ('2023-04-04 18:15:00', 4, 'VEN', 'JUP'),
    ('2023-05-05 20:00:00', 5, 'EAR', 'SAT'),
    ('2023-06-06 22:30:00', 6, 'JUP', 'MARS'),
    ('2023-07-07 10:45:00', 7, 'SAT', 'VEN'),
    ('2023-08-08 08:15:00', 8, 'MARS', 'JUP'),
    ('2023-09-09 06:00:00', 9, 'VEN', 'SAT'),
    ('2023-10-10 04:30:00', 10, 'SAT', 'MARS');
