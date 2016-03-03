
<?php require_once('mainbar.php');
global $MUSIC;
$new = $MUSIC->addGig($_POST['date'], $_POST['bands'],$_POST['venue'],$_POST['price']);
header("Location: index.php");
?>