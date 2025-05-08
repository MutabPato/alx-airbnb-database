## Normalization

This document provides an explanation of steps taken to ensure the database is in the third normal form (3NF) which was achieved by confirming that:

**(1NF - First Normal Form)**

1. All fields contain atomic values
2. Every record has a primary key and is unique

**(2NF - Second Normal Form)**

building on 1NF and confirming:

3. All non-key attributes are fully dependent on the entire primary key

**(3NF - Third Normal Form)**

ensuring:

4. No transitive dependencies: non-key do not depend on other non-key attributes