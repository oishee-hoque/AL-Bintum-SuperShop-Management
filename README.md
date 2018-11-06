# AL-Bintum-SuperShop-Management
This is an Database Project .Programming Language : PL/SQL  IDE : Oracle 10g

Overview of the system:
Our project is system for managing a super shop, which dynamically handles all the data. This super shop management system meticulously handles all the aspects related to the shop, i.e. sales, staff information, branch details and product availability. As the database is distributed to multiple sites, the risk of losing data due is loss in site is reduced and the system is improved.

Global Relations:
Employee(employeeId ,ename,sex ,age,phoneNo,catagory,branchId)
Branch(branchId,address,district)
Product(productid,productname,price,category,numberofproducts)
Stores(productid,branchId,numberofproducts)
Got(paymentno,productid,noOfProducts)
Payment(paymentno,branchid,total,paymentdate)
