

<?php   
    include "config.php";


    if(isset($_POST['delete'])){
        $s_id=$_POST['s_id'];

    $sql= "DELETE FROM `student` WHERE `student`.`s_id`='$s_id'";

    $result=$conn->query($sql);

    
                if(mysqli_affected_rows($conn)==TRUE){
        echo "RECORD DELETED SUCCESSFULLY.";
    }else{
        echo "ERROR RECORD NOT FOUND";
       }
       header("Refresh:8; url=view_student.php");
     
   }
 

?>

<!-- extra code to run html -->
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
    
        <h2 align="center" style= "color:rgb(255, 255, 255); font-size:85px; font-family:Gill Sans MT;line-height:2.9;">STUDENT DELETE</h2>
      
        <br>

        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                <form  class="formclass" method="POST" action="" align="center">      
                 <div class="row mb-3" align="center">
                         <label for="inputEmail3" class="col-sm-2 col-form-label" style= "color:rgb(255, 255, 255); font-size:18px; font-family:Gill Sans MT;">STUDENT ID </label>
                             <div class="col-sm-5">
                                 <input type="text" class="form-control" id="inputEmail3" name="s_id">
                            


                     <br>
            <div class="d-grid gap-2 col-6 mx-auto">
            <button class="btn btn-danger btn-lg" type="submit" name="delete"><b>DELETE</b></button>
            <a class="btn btn-primary btn-lg" href="view_student.php"><b> VIEW</b></a>
        </div>
            </div>
           
        </div>  
       <br><br>
         
         
      
   
        </form>
        </div>
                <div class="col-sm-3">
                <img src="student.jpg" class="img-fluid" alt="...">
                </div>

            </div>
        </div>
        
</body>

</html>