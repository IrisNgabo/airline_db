# Constraints and review notes

Owner: Jazzy Bruno (Navigator). Every file is checked against this list before it is merged.

## Constraints the schema must have

```sql
CREATE TABLE passengers (
    passenger_id    INT AUTO_INCREMENT PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    class_tier      ENUM('Economy', 'Business', 'First') NOT NULL,
    seat_preference VARCHAR(20),
    lounge_pass     VARCHAR(50) NULL,
    suite           VARCHAR(50) NULL,
    chauffeur       VARCHAR(50) NULL
);

CREATE TABLE bookings (
    booking_id   INT AUTO_INCREMENT PRIMARY KEY,
    passenger_id INT NOT NULL,
    destination  VARCHAR(100) NOT NULL,
    travel_date  DATE NOT NULL,
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);
```

- **Primary keys:** `passenger_id` and `booking_id` identify each row.
- **Foreign key:** `bookings.passenger_id` must match a real passenger, so a booking can't exist for nobody.
  It also means a passenger with bookings can't be deleted first: delete the booking (the child row).
- **`class_tier`:** `ENUM` allows only `Economy`, `Business` or `First`; anything else is rejected.
- **Perk columns are nullable:** perks depend on the tier. Economy has none, Business has a lounge pass,
  First has all three. `NULL` means "this passenger doesn't get this perk", instead of a fake value.

## Review checklist

- [ ] `01_schema.sql` creates `airline_db` and both tables with the constraints above
- [ ] `travel_date` is `DATE`, not text
- [ ] `02_seed.sql` has 4-5 passengers covering all three tiers
- [ ] Economy perks are `NULL`; Business has a lounge pass; First has lounge pass, suite and chauffeur
- [ ] Read query returns only Business and First passengers (more than one row)
- [ ] INNER JOIN shows Name, Destination, Tier and Perks, with a `CASE` so Economy reads cleanly
- [ ] Update changes `seat_preference` or `destination` by passenger ID
- [ ] Delete removes a row from `bookings`, not `passengers`
- [ ] All three files run end to end on a fresh database
