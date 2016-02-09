<?php
//Fecha,Grupos,Sala,Precio,
$fila = 1;
$grupoArray = array();
$salaArray = array();
$chunk = '';
if (($gestor = fopen("concs.csv", "r")) !== FALSE) {
    while (($datos = fgetcsv($gestor, 300, ",")) !== FALSE) {
        $fila++;
            $fecha = $datos[0];
            $conciertos = $datos[1];
        	$grupos = explode("+",$datos[1]);

            $sala  = $datos[2];
            $precio = $datos[3];

        	foreach($grupos as $grupo) {
        		if (!in_array(trim($grupo), $grupoArray)) {
        			$grupoArray[] = trim($grupo);
        		}
        	}


            if (!in_array(trim($sala), $salaArray)) {
                    $salaArray[] = trim($sala);
            }

            $fecha2 = explode("/",$fecha);
            $fecha3 = $fecha2[2]."-".$fecha2[1]."-".$fecha2[0];

           $chunk .= 'INSERT INTO `gigs`(gig_date,gig_bands, gig_price, gig_venue) values("'.$fecha3.'","'.$datos[1].'","'.$precio.'", "'.$sala.'");<br/>';

    }

    fclose($gestor);
}

/*$sql = '';
$sql2 = '';

foreach($grupoArray as $bands) {

	$sql .= 'INSERT INTO `bands`(band_name) values("'.$bands.'");<br />';
}

foreach($salaArray as $sala) {
    $sql2 .= 'INSERT INTO `venues`(name_venue) values("'.$sala.'");<br />';
}*/

// Bandas
//echo $sql;

// Salas
//echo $sql2;

// Conciertos
//echo $chunk;
?>