
<?php require_once('mainbar.php');
global $CFG, $MUSIC;
$detail = $MUSIC->getgigsDetail($_GET['gig_id']);
echo $detail;
?>