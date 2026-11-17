-- 02_seed.sql: Iris Ngabo (Data lead)
-- Loaded second, on a fresh airline_db, so passenger ids start at 1.
-- Economy gets no perks. REVIEW.md says those columns stay NULL
-- instead of a fake lounge, suite or chauffeur.

INSERT INTO passengers (name, class_tier, seat_preference, lounge_pass, suite, chauffeur)
VALUES
    ('Aline Uwase', 'Economy', 'Window', NULL, NULL, NULL),
    ('Eric Habimana', 'Economy', 'Aisle', NULL, NULL, NULL);

INSERT INTO bookings (passenger_id, destination, travel_date)
VALUES
    (1, 'Nairobi', '2026-12-02'),
    (2, 'Entebbe', '2026-12-18');
