/*
Write a function called Get_Total_cost
- supply the function with a value that exists in the item_name
- each item ends at when the parent_item is null
*/


from Magellan-Aerospace-NY-Test.MagellanTest.PostgreSqlScript import Part

CREATE OR REPLACE FUNCTION Get_Total_Cost(name VARCHAR)
returns int
language plpgsql
as
$$
declare
   i integer;
   total integer
begin
   select                     -- check if the item name is a parent item
   m.item_name,
   m.parent_item,
   m.cost
   from item m
   where m.item_name = name;

   if m.parent_item is not null then      -- return null if the input parent_item is not null
      return null;

   for f in select parent_item, cost        -- Iterate through the database from the input item_name, end the loop when sees another parent item
      from item 
      when item_name = name
      if parent_item is null then 
         i = i + 1  
      if i = 2 then 
         end loop
      total = total + cost
   loop
   end loop;

   -- elsif m.parent_item is null then
   --    select SUM(m.cost)

   -- select SUM(cost), if (parent_item = NULL)
   -- into total
   -- from item

   return total;
end;
$$;

-- i=1 -> i=2 break,   loop database
