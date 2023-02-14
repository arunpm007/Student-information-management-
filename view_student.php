<?php
include "config.php";

$sql = "SELECT * FROM student";

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
            <h2 align="center" style= "color:rgb(255, 255, 255); font-size:30px; font-family:Gill Sans MT;line-height:0.7;">STUDENT DETAILS </h2>
                <tr>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">STUDENT_ID</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">NAME</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">GENDER</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">E-MAIL</th>
                    <th style= "color:rgb(0,0,0);font-weight:bold;">PHONE NO</th>
                </tr>

                </thead>
                </tbody>
                <?php
                if ($result->num_rows > 0) {
                    while ($row = $result->fetch_assoc()) {


                ?>
                        <tr>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['s_id']; ?></td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['s_name']; ?> </td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['gender']; ?></td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['email']; ?></td>
                            <td style= "color:rgb(255, 255, 255);font-weight:bold;"><?php echo $row['ph_no']; ?></td>
                            <td><a class="btn btn-info" href="update_student.php"> UPDATE</a>&nbsp;
                             <a class="btn btn-danger" href="delete_student.php"> DELETE</a></td>
                           
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

<!-- <a class="btn btn-info" href="update.php?if=<?php echo $row['s_id']; ?>">
            UPDATE</a>&nbsp;
                  <a class="btn btn-danger" href="delete.php?id=<?php echo $row['s_id']; ?>">
            Delete</a></td>   -->