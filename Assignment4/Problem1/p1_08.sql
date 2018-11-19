
-- Problem 1.8 Write an SQL query that would find if the line with phone number (613) 712-0024 is currently available to take a call (that it is IDLE).

select case when exists (select * from lines where areacode = '613' and officecode = '712' and stationcode = '0024' and state = 'IDLE') then cast('TRUE' as varchar) else cast('FALSE' as varchar) end;

/* Test Output
FALSE
*/
