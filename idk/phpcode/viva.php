<?php
$db = mysqli_connect('localhost','root','','project');
if(!$db)
{
	echo "Database connection failed";
}
$projectname = $_POST['projectname'];
$year = $_POST['year'];
$st1 = $_POST['st1'];
$st2 = $_POST['st2'];
$st3 = $_POST['st3'];
$note_ex = $_POST['note_ex'];
$note_s = $_POST['note_s'];
$note_p = $_POST['note_p'];
$note_f = $_POST['note_f'];

$sql = "SELECT projectname FROM project WHERE projectname = '".$projectname."'";
$result = mysqli_query($db,$sql);
$count = mysqli_num_rows($result);
if($count == 1){
	echo json_encode("Error");
}else{
	$insert = "INSERT INTO project(projectname,year,st1,st2,st3,note_ex,note_p,note_s,note_f) VALUES ('".$projectname."','".$year."','".$st1."','".$st2."','".$st3."','".$note_ex."','".$note_p."','".$note_s."','".$note_f."',)";
		$query = mysqli_query($db,$insert);
		if($query){
			echo json_encode("Success");
		}
}
?>