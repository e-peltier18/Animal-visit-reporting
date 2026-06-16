#SQL-function to compile visits from UHF dataframe 

create function buildandsavevisits(job_id bigint, readers text[], antennas text[], target character varying, minimal_duration integer, delay_between_visits integer, startdatetime timestamp without time zone, enddatetime timestamp without time zone, tz integer) returns void
    language sql
as
$$
insert into visits(job_id, tag_id, min_id, max_id, "start", "end", duration, no_records, rssi_min, rssi_max, rssi_average, rssi_median)
    select
        job_id,
        target,
		t2.visit_min_id,
		t2.visit_max_id,
		t2.visit_min_created_at + interval '1 hour' * tz,
		t2.visit_max_created_at + interval '1 hour' * tz,
		t2.visit_duration,
        t2.visit_no_records,
		t2.visit_rssi_min,
		t2.visit_rssi_max,
		t2.visit_rssi_average,
		t2.visit_rssi_median
	from (
         select min(id)                                 visit_min_id,
                max(id)                                 visit_max_id,
                min(utc_date_time)                         visit_min_created_at,
                max(utc_date_time)                         visit_max_created_at,
                count(*)                                visit_no_records,
                EXTRACT(EPOCH FROM (max(utc_date_time) - min(utc_date_time)))      visit_duration,
                min(rssi_min) 								visit_rssi_min,
                max(rssi_max)								visit_rssi_max,
                AVG(rssi)								visit_rssi_average,
                percentile_cont(0.5) within group(order by rssi) 		visit_rssi_median
         from (
                  select t.*,
                         sum(case when utc_date_time < lag_created_at + (delay_between_visits || ' second')::INTERVAL then 0 else 1 end)
                             over (order by utc_date_time) grp
                  from (
                           select t.*,
                                  lag(utc_date_time) over (order by utc_date_time) lag_created_at
                           from data_rows as t
                           where t.utc_date_time >= startDatetime and t.utc_date_time <= endDatetime
                           and t.tag_id = target
                       ) as t
              ) as t
         where tag_id = target and
         case when array_length(readers, 1) > 0
         then reader_id = ANY(readers)
         else true
         end
         and
         case when array_length(antennas, 1) > 0
         then antenna_id = ANY(antennas)
         else true
         end
         group by grp
     ) as t2
    where t2.visit_duration >= minimal_duration;
$$;

