-- standardization of column names
		-- Had spaces and incorrect spelling in column name
Alter table flaring_filtered2
Rename  Column ï»¿Country to country;
Alter table flaring_filtered2
Rename  Column Latitude to latitude;
Alter table flaring_filtered2
Rename Column Longitude to longitude;
Alter table flaring_filtered2
Rename Column Mmscfd to mmscfd;
Alter table flaring_filtered2
Rename Column Year to year;
Alter table flaring_filtered2
Rename Column `Field  Type` to field_type;
Alter table flaring_filtered2
Rename Column field_name to field_name;
Alter table flaring_filtered2
Rename Column `Field  Operator` to field_operator;
Alter table flaring_filtered2
Rename Column Location to location;
Alter table flaring_filtered2
Rename Column `Flare Level` to flare_level;
Alter table flaring_filtered2
Rename Column `Flaring Vol (million m3)` to  flaring_vol_million_m3;


    --  missing lat and long
Select latitude, Longitude
From flaring_filtered2
Where latitude = 'NA' 
AND longitude = 'NA';


     -- unreported field type
Select  field_type, count(*) 
From flaring_filtered2
Where field_type = 'NA'
group by field_type;


-- unreported field names
Select field_name
From flaring_filtered2
Where field_name = 'NA';

-- missing operators
Select count(field_operator) as missing_operator
from flaring_filtered2
where field_operator = 'NA' or field_operator = '';

select *
from flaring_filtered2
where 