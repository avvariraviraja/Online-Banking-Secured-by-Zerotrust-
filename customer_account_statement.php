<?php 
session_start();
        
if(!isset($_SESSION['customer_login'])) 
    header('location:index.php');   
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Account Statement</title>
        
        <link rel="stylesheet" href="newcss.css">
        <style>
            .content_customer table,th,td {
    padding:6px;
    border: 1px solid black;
   border-collapse: collapse;
   text-align: center;
}
.content_customer{
	backgroud:#00818a;
}
        </style>
    </head>
        <?php include 'header.php' ?>
<div class='content_customer'>

           <?php include 'customer_navbar.php'?>
    
    
<div class="customer_top_nav">
             <div class="text">Welcome <?php echo $_SESSION['name']?></div>
            </div>

    <br><br><br><br>
    <h3 style="text-align:center;color:#ffd800;"><u>Account Summary By Date</u></h3>
    <form action="customer_account_statement_date.php" method="POST">
    <table align="center">
        <tr><td style="color:#dff6f0">Start Date [mm/dd/yyyy] </td><td>
        <input type="date" name="date1" required></td></tr>
        
        <tr><td style="color:#dff6f0">End Date [mm/dd/yyyy] </td><td>
        <input type="date" name="date2" required></td></tr>
     </table>
    
        <table align="center"><tr><td colspan="2" align='center' ><input type="submit" name="summary_date" value="Go" class="addstaff_button"/></td>
        </tr>
        </table>
          </form>  
    
    </div>
        <?php include 'footer.php'?>