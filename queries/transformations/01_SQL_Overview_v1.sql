SELECT * 
FROM flaring_filtered;

     -- create staging table
CREATE TABLE flaring_filtered2
Like flaring_filtered;

SELECT *
FROM flaring_filtered2;

INSERT flaring_filtered2
SELECT *
FROM flaring_filtered;

           
      -- Total record 
SELECT 
count(*)
FROM flaring_filtered2;


      -- years covered, min year, max year
Select distinct year as years_covered
From flaring_filtered2;

Select min(year) as earliest_year,
max(year) as latest_year
From flaring_filtered2;

  -- count for each field type 
Select distinct field_type, count(field_type) as total_type
From flaring_filtered2
group by field_type;


      -- count of field name
Select  distinct field_name , count(field_name) as counts
From flaring_filtered2
group by field_name 
order by counts desc;


       -- distinct operator 
Select count(distinct field_operator)
from flaring_filtered2;


      -- categorical exploration 
Select distinct location, count(location) as location_count
From flaring_filtered2
Group by location;

       -- flare level count
Select distinct flare_level, count(flare_level)
from flaring_filtered2
Group by flare_level;

	-- operator who appeared most 
Select field_operator , count(field_operator) as operator_count
From flaring_filtered2
group by field_operator
order by operator_count desc;

	-- year with most flaring
Select year, sum(flaring_vol_million_m3) as flaring_vol
From flaring_filtered2
Group by year
Order by flaring_vol desc;


SELECT *
FROM flaring_filtered2;