EXPLAIN ANALYZE SELECT * FROM booking WHERE start_date >= '2025-06-01' AND start_date < '2025-07-01';
                                            QUERY PLAN                                            
--------------------------------------------------------------------------------------------------
 Seq Scan on booking  (cost=0.00..1.06 rows=1 width=48) (actual time=0.027..0.034 rows=3 loops=1)
   Filter: ((start_date >= '2025-06-01'::date) AND (start_date < '2025-07-01'::date))
   Rows Removed by Filter: 1
 Planning Time: 0.161 ms
 Execution Time: 0.068 ms

EXPLAIN ANALYZE SELECT * FROM bookings_june_2025;

QUERY PLAN                                                   
----------------------------------------------------------------------------------------------------------------
 Seq Scan on bookings_may_2025  (cost=0.00..20.70 rows=1070 width=48) (actual time=0.027..0.031 rows=3 loops=1)
 Planning Time: 0.149 ms
 Execution Time: 0.085 ms