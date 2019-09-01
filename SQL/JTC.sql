CREATE TABLE temp AS
(
select factstore.ProductID, ProductCategoryName, OnHandQty from factstore, dimproducts
where factstore.ProductID = dimproducts.ProductID
);

#Expected Result #1: Query average number of stocks on hand by category.

select ProductCategoryName, floor(avg(OnHandQty))
from temp 
group by ProductCategoryName
order by ProductCategoryName;

CREATE TABLE temp2 AS
(
select factstore.StoreID, StoreType, OnHandQty from factstore, dimstores
where factstore.StoreID = dimstores.StoreID
);

#Expected Result #2: Query average number of stocks on hand by store.

select StoreType, floor(avg(OnHandQty))
from temp2
group by StoreType
order by StoreType;
