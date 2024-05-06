select machine_id, round(avg(endtime - starttime), 3) as processing_time from
(select a.machine_id, a.process_id, a.timestamp as starttime, b.timestamp as  endtime from Activity a join Activity b on
a.machine_id = b.machine_id and
a.process_id = b.process_id and
a.activity_type = 'start' and
b.activity_type = 'end'
) as processing_time group by machine_id
