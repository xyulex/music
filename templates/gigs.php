
<?php require_once('mainbar.php');
global $CFG, $MUSIC;
$gigs = $MUSIC->getGigs();
echo $gigs;
?>