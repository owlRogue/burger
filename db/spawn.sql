USE burgers_db;
ALTER TABLE burgers
ADD COLUMN gorgonzola BOOLEAN AFTER ordered, 
ADD COLUMN topping2 BOOLEAN AFTER ordered,
ADD COLUMN topping3 BOOLEAN AFTER ordered,
ADD COLUMN topping4 BOOLEAN AFTER ordered,
ADD COLUMN topping5 BOOLEAN AFTER ordered,
ADD COLUMN topping6 BOOLEAN AFTER ordered