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
    public function getCover($gig_id) {
        if (file_exists('/xampp/htdocs/music/covers/'.$gig_id.'.jpg') ||
            file_exists('/home/xyulex/www/music/covers/'.$gig_id.'.jpg')){
            return 'green';
        }
        return 'red';
    }

    public function getCurrency($gig_date) {
        if (strtotime($gig_date)<strtotime('2002/01/01')) {
                $currency = 'pta.';
            } else{
                $currency = '€';
            }
        return $currency;
    }

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
          $currentGig['gig_venue'] = utf8_encode($row['gig_venue']);
          $currentGig['gig_price'] = $row['gig_price'];
          $gigs[] = $currentGig;
        }

        $table = '<table id="gigsTable" class="display"><thead><th>Fecha</th><th>Grupos</th><th>Sala</th><th>Precio</th></thead><tbody>';

        foreach($gigs as $gig) {
            $bgcolor = $this->getCover($gig['gig_id']);
            $table .= '<tr><td >'.$gig['gig_date'].'</td><td><a href="detail.php?gig_id='.$gig['gig_id'].'" style="color:'.$bgcolor.'">'.$gig['gig_bands'].'</a><b>---'.$gig['gig_id'].'</b></td><td>'.$gig['gig_venue'].'</td><td>'.$gig['gig_price'].'</td></tr>';
        }

        $table .= '</tbody></table>';

        return $table;
    }

    public function getGigsDetail($gig_id) {
        $sql = "SELECT * FROM gigs where gig_id=" . $gig_id;
        $rows = $this->db()->query($sql);
        while($gig = $this->db()->fetch_array($rows)){
            $currency = $this->getCurrency($gig['gig_date']);

            echo
            '<table class="table"><tr><td>'. $gig['gig_bands'] . '</td></tr>'.
            '<tr><td>'. $gig['gig_date'] . '</td></tr>' .
            '<tr><td>'. $gig['gig_price'] .' '.$currency. '</td></tr>' .
            '<tr><td>'. utf8_encode($gig['gig_venue']) . '</td></tr>';
            if ($this->getCover($gig['gig_id']) == 'green') {
                echo '<tr><td><img src="/music/covers/'.$gig_id.'.jpg" class="table-responsive"></td></tr>';
            }
            echo '</table>';
        }
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