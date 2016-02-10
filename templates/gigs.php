
<?php require_once('mainbar.php');
global $MUSIC;
$gigs = $MUSIC->getGigs();
echo $gigs;
?>