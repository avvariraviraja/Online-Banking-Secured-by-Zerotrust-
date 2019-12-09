<?php 
session_start();
        
if(!isset($_SESSION['customer_login'])) 
    header('location:index.php');   
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Add Beneficiary</title>
        
        <link rel="stylesheet" href="newcss.css">
        <style>
            .content_customer table,th,td {
    padding:6px;
    border: 1px solid black;
   border-collapse: collapse;
   text-align: center;
}
.content_customer td{
    
    
}

        </style>
    </head>
        <?php include 'header.php' ?>
<div class='content_customer'>
            
           <?php include 'customer_navbar.php'?>
    <div class="customer_top_nav">
             <div class="text" style="color:#ffd800;">Welcome <?php echo $_SESSION['name']?></div>
            </div>
    <br><br>
    <form action='add_beneficiary_process.php' method='post'>
        <br><br>
        <h3 style="text-align:center;color:#ffd800;"><u>Add Beneficiary</u></h3>
        <table align="center">
            
            <tr><td><span class="heading" style="color:#dff6f0">Payee Name: </span></td><td><input type='text' name='name' required></td></tr>
            <tr><td><span class="heading" style="color:#dff6f0">Account No: </span></td><td><input type='text' name='account_no' required></td></tr>
            <tr><td><span class="heading" style="color:#dff6f0">Select Branch: </span></td><td><select name='branch_select' required>
                        
                        <option value='KOLKATA'>HYDERABAD</option>
                        <option value='DELHI'>BANGALORE</option>
                        <option value='BANGALORE'>CHENNAI</option>
                        </select></td></tr>
            <tr><td><span class="heading" style="color:#dff6f0">IFSC Code: </span></td><td><input type='text' name='ifsc_code' required></td></tr> </table>
           <table align="center"> <tr><td><input type='submit' name='submitBtn' value='Add Beneficiary' class="addstaff_button">
        </table>
        
        </form>
    
    <?php include 'footer.php'?>
           