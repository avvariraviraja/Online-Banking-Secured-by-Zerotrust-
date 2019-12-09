<!DOCTYPE html>
<?php
include '_inc/dbconn.php';
$sql="SELECT * FROM `admin` WHERE id=1";
$result=  mysql_query($sql) or die(mysql_error());
$rws=  mysql_fetch_array($result);
?>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <title>Profile Editing</title>
    </head>
    <body>
        <div class="wrapper">
            <div class="header">           
                
            </div>
            <div class="contentsection">
                
                <form action="alter.php" method="POST" enctype="multipart/form-data">
            <table align="center" border="21" class="table">
                <tr>
                    <td>NAME</td>
                    <td><input type="text" name="name" value="<?php echo $rws[1];?>" required=""/></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        Male<input type="radio" name="gender" value="M" <?php if($rws[2]=="M") echo "checked";?>/>
                        Female<input type="radio" name="gender" value="F" <?php if($rws[2]=="F") echo "checked";?>/>
						Other<input type="radio" name="gender" value="O" <?php if($rws[2]=="O") echo "checked";?>/>
                    </td>
                </tr>
                <tr>
                    <td>
                        DOB
                    </td>
                    <td>
                        <input type="date" name="dob" value="<?php echo $rws[3];?>"/>
                    </td>
                </tr>
                <tr>
                    <td>Nominee</td>
                    <td><input type="text" name="nominee" value="<?php echo $rws[4];?>" required=""/></td>
                </tr>
                <tr>
                    <td>Relationship</td>
                    <td>
                        <select name="status">
                            <option <?php if($rws[5]=="married") echo "selected";?>>Married</option>
                            <option <?php if($rws[5]=="Unmarried") echo "selected";?>>Unmarried</option>
                            <option <?php if($rws[5]=="Divorced") echo "selected";?>>Divorced</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Designation</td>
                    <td>
                        <input type="text" name="designation" value="<?php echo $rws[6];?>"/>
                    </td>
                </tr>
                <tr>
                    <td>Department</td>
                    <td>
                        <select name="dept">
                            <option <?php if($rws[7]=="revenue") echo "selected";?>>Accounts</option>
                            <option <?php if($rws[7]=="developer") echo "selected";?>>Developer</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        DOJ
                    </td>
                    <td>
                        <input type="date" name="doj" value="<?php echo $rws[8];?>"/>
                    </td>
                </tr>
                <tr>
                    <td>Upload Your Photo: </td>
                    <td>
                        <input type="file" name="profile"/><br/>
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="address"><?php echo $rws[10];?></textarea></td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td><input type="text" name="phone" value="<?php echo $rws[11];?>" required=""/></td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><input type="text" name="mobile" value="<?php echo $rws[12];?>" required=""/></td>
                </tr>

                <tr>
                    <td>Email Id</td>
                    <td><input type="email" name="email" value="<?php echo $rws[13];?>" required=""/></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="pwd" value="<?php echo $rws[14];?>" required=""/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" name="alter" value="UPDATE DATA"/></td>
                </tr>
            </table>
        </form>
                
                
                
            </div>
            <div class="footer">
                
                
                
                
                
            </div>
        </div>
    </body>
</html>
