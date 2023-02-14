
<?php 
    include "config.php";
    //{//not present

     if(isset($_POST['update'])){
        $t_id=$_POST['t_id'];
        $t_name=$_POST['t_name'];
        $gender=$_POST['gender'];
        $designation=$_POST['designation'];

        $sql ="UPDATE teachers SET t_id='$t_id',t_name='$t_name',gender='$gender',designation='$designation' where t_id='$t_id'";

        //$sql= "UPDATE `teachers` SET `t_id`='$t_id',`t_name`='$t_name','gender'='$gender','designation'='$designation' where `t_id`='$t_id'";
       
       $result=$conn->query($sql);{
         if($result==TRUE){
    //   if (mysqli_query($conn, $sql)==TRUE) {
             //echo "records are updated successfully";
             echo"RECORD UPDATED SUCCESSFULLY.";
        }
        else{
            echo "Error:".$sql ."<br>".$conn->error;
            echo"NOT SUCCESSFULL.";
        }
    }

        header("Refresh:2; url=view_teacher.php");

{
     if(isset($_GET['t_id'])){
        $t_id=$_GET['t_id'];

        $sql="SELECT * FROM  `teachers` WHERE 't_id'='$t_id'";

        $result=$conn->query($sql);
       
        if($result->num_rows > 0){
            while($row=$result->fetch_assoc()){
                $t_id =$row['t_id'];
                $t_name   =$row['t_name'];
                $gender=$row['gender'];
                $designation=$row['designation'];

            }

        }
        else{
            //if t_id value is not valid redirect the user to view php page
            // header(' Location: view.php ');
            header("Refresh:4; url=view_teacher.php");
             
        }
    }
     }
    }
            
  ?>
<!DOCTYPE html>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.5.1/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha385-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD55VohhpuuCOmLASjC" crossorigin="anonymous">
  <scripx src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.0/jquery.min.js"></scripx>
  <scripx src="https://maxcdn.bootstrapcdn.com/bootstrap/3.5.1/js/bootstrap.min.js"></scripx>

  <body style="background: url(index_bg.jpeg);
background-size: 100%;
background-repeat: no-repeat;line-height:2.9">
<h2 align="center" style= "color:rgb(255, 255, 255); font-size:85px; font-family:Gill Sans MT;line-height:2.9;">UPDATE TEACHER</h2>
<br>

<div class="container">
    <div class="row">
        <div class="col-sm-9">
            <form  class="formclass" method="POST" action="" align="center">      
                 <div class="row mb-3" align="center">
                         <label for="inputEmail3" class="col-sm-2 col-form-label" style= "color:rgb(255, 255, 255); font-size:18px; font-family:Gill Sans MT;">TEACHER ID </label>
                             <div class="col-sm-5">
                                 <input type="text" class="form-control" id="inputEmail3" name="t_id">
                             </div>
                     </div> 
                     <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style= "color:rgb(255, 255, 255); font-size:18px; font-family:Gill Sans MT;">TEACHER NAME </label>
            <div class="col-sm-5">
            <input type="text" class="form-control" id="inputEmail3" name="t_name">
            </div>
        </div>  
        <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style= "color:rgb(255, 255, 255); font-size:18px; font-family:Gill Sans MT;">GENDER </label>
            <div class="col-sm-5">
            <input type="text" class="form-control" id="inputEmail3" name="gender">
            </div>
        </div>

        <div class="row mb-3">
            <label for="inputEmail3" class="col-sm-2 col-form-label" style= "color:rgb(255, 255, 255); font-size:18px; font-family:Gill Sans MT;">DESIGNATION </label>
            <div class="col-sm-5">
            <input type="text" class="form-control " id="colFormLabelSm" name="designation" >
            <br>
            <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-primary btn-lg" type="submit" name="update"><b>UPDATE</b></button>
            <a class="btn btn-primary btn-lg" href="view_teacher.php"><b> VIEW</b></a>
        </div>
            </div>
           
        </div>  
       <br><br>
         