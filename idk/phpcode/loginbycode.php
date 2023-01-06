<?php
 $db = mysqli_connect('localhost','root','','project');
 $id_pro = $_POST['id_pro'];

 $sql = "SELECT * FROM project WHERE id_pro = '".$id_pro."'";
 $result = mysqli_query($db,$sql);
 $count = mysqli_num_rows($result);
 if($count == 1){
    echo json_encode("Success");
 } 
 else{
    echo json_encode("Error");
 }
?>