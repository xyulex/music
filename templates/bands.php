<?php require_once('mainbar.php');
global $MUSIC;
$stats = $MUSIC->getStatistics();
$bands = $stats['totalBands'];
sort($bands);

foreach($bands as $clave => $valor) {
	echo $valor . "<br />";
}
?>