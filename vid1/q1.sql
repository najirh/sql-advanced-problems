-- Amazon Business Analyst Interview Question

-- Q.1

CREATE TABLE t1
(x int, 
y int
);

CREATE TABLE t2
(z int,
z2 int
);

-- insert into t1 and t2
INSERT INTO t1
VALUES
(0, 6),
(1, 7),
(3, 0),
(1, 5)
;

INSERT INTO t2
VALUES
(3, 6),
(2, 8),
(1, 9),
(0, 4)
;

SELECT * FROM t1;
SELECT * FROM t2;

-- Sol1

WITH cte1
AS
(
SELECT *,
	ROW_NUMBER() OVER() as rn
FROM t1
),
cte2
AS
(
SELECT *,
	ROW_NUMBER() OVER() as rn
FROM t2
)
SELECT 
	cte1.x,
	cte1.y,
	cte2.z
FROM cte1
JOIN
cte2
ON cte1.rn = cte2.rn
;






