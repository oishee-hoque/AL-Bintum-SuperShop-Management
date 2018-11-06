DROP TABLE store2CASCADE CONSTRAINTS;
CREATE TABLE store2 (
                  branchid int,
	productId int, 
                  numberOfproducts int,
	PRIMARY KEY(productId,branchid)
);