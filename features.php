<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Features - Online Banking</title>
        <style>
            .content_customer ul{
                margin-left:150px;
                margin-top:50px;
            }
            .content_customer li{
                padding-top:15px;
            }
			.content_customer{
				background: #00818a;
			}
        </style>
        <link rel="stylesheet" href="newcss.css">
       
    </head>
        <?php include 'header.php' ?>
        <div class='content_customer'>
             <h3 style="text-align:center;color:#ffd800;"><u>Online Banking features</u></h3>
           <ul>
               <li style="color:#dff6f0">Registration for online banking by Admin. </li>
               <li style="color:#dff6f0">Adding Beneficiary account by customer.</li>
                <li style="color:#dff6f0"> Transferring amount to the beneficiary added by customer. </li>
               <li style="color:#dff6f0">Staff must approve for beneficiary activation before it can be used for transferring funds. </li>
               <li style="color:#dff6f0">Customer gets to know his last login date and time each time he logs in.</li>
               <li style="color:#dff6f0">Customer can check last 10 transactions made with their account.</li>
               <li style="color:#dff6f0">Customer can check their account statement within a date range.</li>
               
               <li style="color:#dff6f0">Customer can request for ATM and Cheque Book.</li>
               <li style="color:#dff6f0">Staff will approve requests for ATM card and cheque book. </li>
              <li style="color:#dff6f0"> Admin can add/edit/delete customer as well as staff. </li>
             <li style="color:#dff6f0"> All three of them(customer, staff & admin) can change their password. </li>
             <li style="color:#dff6f0">Staff and Admin Login pages are hidden from customer for security purpose.</li>
             <li style="color:#dff6f0">Passwords are stored as encrypted hashes with an additional random salt for added security.</li>
            
               </ul>
               </div>
            