<?php
define('DB_SERVER', "localhost");
define('DB_USER', "root");
define('DB_PASS', "");
define('DB_DATABASE', "music");

require_once('Database.class.php');

class Music {

    protected $db;

    public function db() {
        $db = new Database(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);
        $db->connect();
        return $db;
    }

    /**** Getters ****/

    // Get gigs.
    public function getStatistics() {
        $sql = 'select count(*) as bands from bands';
        $rows = $this->db()->query($sql);
        $row = $this->db()->fetch_array($rows);

        $sql = 'select count(*) as gigs from gigs';
        $rows2 = $this->db()->query($sql);
        $row2 = $this->db()->fetch_array($rows2);

        $stats = array_merge($row,$row2);

        return $stats;
    }

    public function getGigs($filter = '') {
        $where = '';
        if ($filter){
            $where = " where type =" . $filter;
        }

        $sql = "SELECT * FROM gigs" . $where;
        $rows = $this->db()->query($sql);


        while($row = $this->db()->fetch_array($rows)){
          $currentGig = array();
          $currentGig['gig_id'] = $row['gig_id'];
          $currentGig['gig_date'] = $row['gig_date'];
          $currentGig['gig_bands'] = utf8_encode($row['gig_bands']);
          $currentGig['gig_venue_id'] = $row['gig_venue_id'];
          $currentGig['gig_price'] = $row['gig_price'];
          $gigs[] = $currentGig;
        }

        $table = '<table id="example" class="display"><thead><th>Fecha</th><th>Grupos</th><th>Sala</th><th>Precio</th></thead><tbody>';
        foreach($gigs as $gig) {
            $bgcolor = '';
            if (file_exists('/xampp/htdocs/music/covers/'.$gig['gig_id'].'.jpg')) {
                $bgcolor = '#00FF00';
            } else {
                $bgcolor = '#ff0000';
            }

             $table .= '<tr><td >'.$gig['gig_date'].'</td><td bgcolor='.$bgcolor.'>'.$gig['gig_bands'].'<b>'.$bgcolor."---".$gig['gig_id'].'</b></td><td>'.$gig['gig_venue_id'].'</td><td>'.$gig['gig_price'].'</td></tr>';
        }

        $table .= '</tbody></table>';

        return $table;
    }

    /**** Setters ****/

    // Grabar banda o sala.
   /* public function setField($field, $value){
        $data = new stdClass();
        $data->name = utf8_decode($field);
       /* $idinsert = $db->query_insert("dishes", $data);
        $db->close();
        return $idinsert;
    }

    public function addPoster($poster) {

    }*/

}