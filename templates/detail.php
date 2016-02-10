
<?php require_once('mainbar.php');
global $MUSIC;
$detail = $MUSIC->getgigsDetail($_GET['gig_id']);
echo $detail;
?>