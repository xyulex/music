<?php require_once('mainbar.php');
global $MUSIC;
$stats = $MUSIC->getStatistics();
$integrated = $stats['integrated'];

ksort($integrated);
echo '<h1>Bandas vistas</h1>';
echo '<table id="gigsTable" data-order="[1]" class="display"><thead><th>Banda</th><th>Veces</th></thead><tbody>';
foreach($integrated as $clave => $valor) {
	echo '<tr><td width="50%">' . $clave . "</td><td>" . $valor . "</td></tr>";
}

echo '</table>';
?>