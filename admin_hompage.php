<?php 
session_start();
        
if(!isset($_SESSION['admin_login'])) 
    header('location:adminlogin.php');   
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Admin Homepage</title>
        
        <link rel="stylesheet" href="newcss.css">
    </head>
        <?php include 'header.php' ?>
        <div class='content'>
            
           <?php include 'admin_navbar.php'?>
            <div class='admin_staff'>
               
                <ul>
                    <li><b><u>Staff</u></b></li>
       <li> <a href="addstaff.php">Add Staff Member Details</a></li>
        <li><a href="display_staff.php">Edit Staff Member Details</a></li>
        <li> <a href="delete_staff.php">Delete Staff Member Details</a></li>
        </ul>
        </div>
            <div class='admin_customer'>
                <ul>
                   <li><b><u> Customer</u></b></li>
        <li><a href="addcustomer.php">Add Customer Details</a></li>
       <li> <a href="display_customer.php">Edit Customer Details</a></li>
       <li> <a href="delete_customer.php">Delete Customer Details</a></li>
        </div>
        </div>
        <?php include 'footer.php';?>
    </body>
</html>