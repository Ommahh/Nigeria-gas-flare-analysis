Select * 
From flaring_filtered2;

	-- Top 10 operators by flaring
Select field_operator, sum(flaring_vol_million_m3) as total_flare
From flaring_filtered2
Group by field_operator
Order by total_flare desc
Limit 10;

	-- Average flare
    Select field_operator, avg(flaring_vol_million_m3)
    From flaring_filtered2
    group by field_operator
    order by avg(flaring_vol_million_m3) desc;
    
    	-- year with most flaring
Select year, sum(flaring_vol_million_m3) as flaring_vol
From flaring_filtered2
Group by year
Order by flaring_vol desc;

	-- location with most flare
    Select location, sum(flaring_vol_million_m3)
    From flaring_filtered2
    group by location ;
    
		-- field name with highest flare and their operator
	Select field_name, field_operator, sum(flaring_vol_million_m3)
    From flaring_filtered2
    Group by field_name, field_operator
    order by sum(flaring_vol_million_m3) desc;
    
		-- highest flaring location
Select  field_name, latitude, longitude,
SUM(flaring_vol_million_m3) as total_flared
From flaring_filtered2
Group by field_name, latitude, longitude
Order by total_flared desc
Limit 20;