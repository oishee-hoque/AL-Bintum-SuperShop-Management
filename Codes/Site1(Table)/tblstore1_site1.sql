DROP TABLE store1CASCADE CONSTRAINTS;
CREATE TABLE store1 (
                  branchid int,
	productId int, 
                  numberOfproducts int,
	PRIMARY KEY(productId,branchid )
);