result NUMBER;
BEGIN
    /* My PL/SQL query statement below */
    select distinct(a.Salary) into result from
    (select
        Salary,
        dense_rank() over (order by Salary desc) as rank
    from Employee)a
    where a.rank = N;
    return result;
END;
