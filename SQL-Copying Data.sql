

---Copying Data From existing table to new table


--case 1: The new table simply doesn't exist
--case 2:The New table structure/New Table exists

--CASE 1 :

select * from dbo.Sales


--This statement will result in the certain of New_Table_1 which be having structure & records both 
-- SAme as that of dbo.Sales table
DROP TABLE IF EXISTS new_table_2;
select * into  New_table_2 from dbo.Sales


------------------ Cretian Columns to be copied-------------------------

drop table New_table_2 

select productid,quantity into new_table_2 from dbo.Sales

select * from new_table_2


--CASE 2: New table structure/table already exits
DROP TABLE IF EXISTS new_table_2;
select top 0 * into new_table_2 from dbo.Sales  -------------------

select * from new_table_2

insert into new_table_2 select * from dbo.Sales

-------------Copying Certain Columns------------------------

select * into new_table_4 from dbo.Sales where 1=0  ---------------------

select * from new_table_4

insert into new_table_4 (productid,SaleDate) select productid,saledate from dbo.Sales


/*

1) Copy a whole table (structure + data)

2) Copy only structure (no data)

3) Copy specific columns

4) Insert data into an already existing table


🧠 Simple Summary in One Line:

1] SELECT * INTO → creates a new table and copies structure (+ data if any).

2] TOP 0 or WHERE 1=0 → copies only structure, no data.

3] INSERT INTO ... SELECT ... → adds data into an existing table.

4] DROP TABLE IF EXISTS → deletes a table if it already exists, to avoid errors.

*/