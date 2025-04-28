-- Q.2


CREATE TABLE tab1
(col1 int);
CREATE TABLE tab2
(col2 int);

-- insert into tab1 tab2
INSERT INTO tab1
VALUES
(1),
(0),
(1),
(2),
(6);

INSERT INTO tab2
VALUES
(1),
(2),
(5),
(7),
(0)
;

SELECT * FROM tab1;
SELECT * FROM tab2;


SELECT * FROM tab1
RIGHT JOIN
tab2
ON tab1.col1=tab2.col2;


