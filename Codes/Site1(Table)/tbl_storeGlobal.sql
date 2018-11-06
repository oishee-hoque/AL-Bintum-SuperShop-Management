DROP TABLE stores CASCADE CONSTRAINTS;
CREATE TABLE stores (
                 branchid int,
	productId int, 
                  noOfproduct int,
	PRIMARY KEY(productId,branchid )
);


