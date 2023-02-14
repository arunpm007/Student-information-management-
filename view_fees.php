<?php
include "config.php";

$sql = "SELECT * FROM fees";

$result = $conn->query($sql);

$profpic = "index_bg.jpeg"

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>

<body>
    <div>
        <!-- <h1>STUDENT</h1> -->
        <table class="table">

            <head>
            <h2 align="center" style= "color:rgb(255, 255, 255); font-size:30px; font-family:Gill Sans MT;line-height:0.7;">STUDENT FEES DETAILS </h2>
                <tr>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">TRANSACTION ID</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">STUDENT ID</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">BRANCH ID</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">AMOUNT</th>
                </tr>

                </thead>
                </tbody>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {


                ?>
                        <tr>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['tra_num']; ?></td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['s_id']; ?> </td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['b_id']; ?></td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['amount']; ?></td>
                            <td><a class="btn btn-info" href="update_fees.php"> UPDATE</a>&nbsp;
                             <a class="btn btn-danger" href="delete_fees.php"> DELETE</a></td>
                            <td>
                        </tr>
                <?php }
                }
                ?>
                <style>
                    body
                    {
                        background-image: url('<?php echo $profpic;?>');
                        background-size: cover;
                    }
                </style>
                </body>
                <br>
                
                <br>
        </table>
    </div>
</body>

</html>