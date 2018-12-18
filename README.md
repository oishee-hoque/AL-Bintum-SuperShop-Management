# AL-Bintum-SuperShop-Management
<h3> Distributed Database Management System | PL/SQL </h3>

<h3>Overview of the system</h3>
Our project is system for managing a super shop, which dynamically handles all the data. This super shop management system meticulously handles all the aspects related to the shop, i.e. sales, staff information, branch details and product availability. As the database is distributed to multiple sites, the risk of losing data due is loss in site is reduced and the system is improved.

<img src = "https://github.com/Oishee30/AL-Bintum-SuperShop-Management/blob/master/Feature.PNG">


<h3>Global Relations:</h3>
<li>Employee(employeeId ,ename,sex ,age,phoneNo,catagory,branchId)</li>
<li>Branch(branchId,address,district)</li>
<li>Product(productid,productname,price,category,numberofproducts)</li>
<li>Stores(productid,branchId,numberofproducts)</li>
<li>Got(paymentno,productid,noOfProducts)</li>
<li>Payment(paymentno,branchid,total,paymentdate)</li>

<h3>Features:</h3>
<li>Search Product by Product Id</li>
<li>Update Employee Branch</li>
<li>Selling Information Of a Branch</li>
<li>Find out bill for selected products.</li>
<li>Creating bill with the option of updating, inserting, and searching.</li>
<li>Find out the category of employee.</li>
<li>Find out employee against branch.</li>
<li>Update employee (in terms of transfer) according to branchid.</li>
<li>Update quantity of products by Id and branch.</li>
<li>Update price on given range and given percentage.</li>
<li>Finding the availability of products.</li>
<li>Find out sell details with respect to branchid.</li>

<h3>Sequence:</h3>
<li>Sequence has been used for keeping track of payment number.
 <h3>Triggers:</h3>
Four After Input/Update Trigger for Tables: Stores, Payment, Employee, branch
<li> Update values in necessary sites when global database gets any new input.
<li>Example: When user gives input/update in Employee/Stores/Payment/Branch, Input trigger of Employee/Stores/Payment/Branch receives the data and also insert the data in its fragmented tables in desired sites.
<li>Example:
Data has been inserted into store table and with the trigger data has also been inserted into stores table at site2 as data with BranchId!=1 belongs to the store table of site2.
