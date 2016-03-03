
<?php require_once('mainbar.php');
global $MUSIC;
$gigs = $MUSIC->getGigs();
echo '<h1>Conciertos</h1>';
echo $gigs;
?>