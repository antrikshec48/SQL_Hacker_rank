create database market_star_schema;

use market_star_schema;

--- DDL Statements
--- 1. Create Table
create table shipping_mode_dimen2(
ship_mode varchar(25),
vehicle_company varchar (25),
toll_required boolean
);

---  2. Alter table
alter table shipping_mode_dimen2
add constraint primary key (ship_mode);

---- DML Statements
--- 1. Insert Into table
insert into shipping_mode_dimen2
values
("DELIVERY TRUCK", "AMC", False),
("REGULAR AIR", "Air India", False),
("CAMERA", "SONY", False);

--- 2. Update table
update shipping_mode_dimen
set toll_required = True
where Ship_mode = "DELIVERY TRUCK";

--- 3. Delete table
delete 
from shipping_mode_dimen
where Vehicle_Company = "Air India";


----- Modifying Columns ---------
--- 1. Adding & deleting rows
alter table shipping_mode_dimen2
add Vehicle_number varchar(25);

--- 2. Update Value of Vehicle number
update shipping_mode_dimen2
set Vehicle_number = "MH-12-R-6262";

--- 3. Delete Column
alter table shipping_mode_dimen2
drop column Vehicle_number;

--- 4. Change the Column Name
alter table shipping_mode_dimen2
change Toll_required Toll_amount int;


## Practice Questions
--- 1. CREATE, ALTER, DROP, RENAME and TRUNCATE are DDL statements. SELECT, INSERT, UPDATE and DELETE are DML statements.

--- 2. Difference Between Drop & truncate - 'DROP' removes a table completely from the database, and you cannot retrieve this table. All the integrity constraints are removed. 
--- On the other hand, 'TRUNCATE' only drops the table rows; it does not delete the schema of the table from the database.

--- 3. Suppose you want to create a table named 'mobile_phone', which contains the following columns: 
---- Mobile_phone_ID, which is of integer type
---- Camera, which is of string type
---- RAM, which is of integer type
---- Memory, which is of string type
---- The primary key of this table is 'Mobile_phone_ID'.

--- Sol:  create table mobile_phone ( Mobile_phone_ID int(11) NOT NULL, Camera varchar(12), RAM int(11), Memory varchar(12) );

---- 4. Suppose you want to add a new column, 'price', with ‘float’ as the data type, in the table 'mobile_phone'.
---- Sol: ALTER TABLE ‘mobile_phone’ ADD COLUMN ‘price’ float(24) ;

---- 5. Suppose you want to update the value of ‘Camera’ to 15MP, where RAM = 8. 
---- Sol: update mobile_phone set Camera= ‘15MP’ where RAM= 8;



