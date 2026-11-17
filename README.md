# airline_db

Group activity: an airline passengers and bookings database in MySQL.

Run the files in order on a fresh database:

```bash
mysql -u root -p < 01_schema.sql
mysql -u root -p < 02_seed.sql
mysql -u root -p < 03_queries.sql
```

| File | What | Owner |
|---|---|---|
| `01_schema.sql` | Database and tables | Pacifique Mico |
| `02_seed.sql` | Sample passengers and bookings | Iris Ngabo |
| `03_queries.sql` | Read, Join, Update, Delete | Yanice Murangwa Shami, Vainqueur Ishimwe |
| `screenshots/` | Query outputs and proof | Vainqueur Ishimwe, Bellamy Biramahire |
| `REVIEW.md` | Constraints and review checklist | Jazzy Bruno |

Roles, design decisions and attendance: Bellamy Biramahire fills this in.
