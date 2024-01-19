-- Write query to get number of assignments for each state
select state, count(*) as state_count from assignments group by state ; 
