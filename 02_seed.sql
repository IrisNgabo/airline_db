-- 02_seed.sql: Iris Ngabo (Data lead)
-- Loaded second, on a fresh airline_db, so passenger ids start at 1.
-- Economy gets no perks. REVIEW.md says those columns stay NULL
-- instead of a fake lounge, suite or chauffeur.
-- Business gets a lounge pass only. Suite and chauffeur stay NULL.

INSERT INTO passengers (name, class_tier, seat_preference, lounge_pass, suite, chauffeur)
VALUES
    ('Aline Uwase', 'Economy', 'Window', NULL, NULL, NULL),
    ('Eric Habimana', 'Economy', 'Aisle', NULL, NULL, NULL),
    ('Diane Mukamana', 'Business', 'Aisle', 'Kigali Lounge', NULL, NULL),
    ('Patrick Ndayisaba', 'Business', 'Window', 'Priority Lounge', NULL, NULL);

INSERT INTO bookings (passenger_id, destination, travel_date)
VALUES
    (1, 'Nairobi', '2026-12-02'),
    (2, 'Entebbe', '2026-12-18'),
    (3, 'Johannesburg', '2026-11-28'),
    (3, 'Dubai', '2027-01-14'),
    (4, 'London', '2026-12-09');
