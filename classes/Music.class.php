<?php
define('DB_SERVER', "localhost");
define('DB_USER', "root");
define('DB_PASS', "");
define('DB_DATABASE', "music");

require_once('Database.class.php');

class Music {

    protected $db;

    // Database connection
    public function db() {
        $db = new Database(DB_SERVER, DB_USER, DB_PASS, DB_DATABASE);
        $db->connect();
        return $db;
    }

    // Get cover for selected gig.
    public function getCover($gig_id) {
        if (file_exists('../covers/'.$gig_id.'.jpg')) {
            return true;
        }
        return false;
    }

    // Get currency (€ / pta).
    public function getCurrency($gig_date) {
        if (strtotime($gig_date)<strtotime('2002/01/01')) {
                $currency = 'pta.';
        } else {
                $currency = '€';
        }
        return $currency;
    }

    // Get # of bands, bands times seen and total gigs.
    public function getStatistics() {
        $integrated = array();

        // Bands
        $sql = 'select gig_bands as bands from gigs';
        $rows = $this->db()->query($sql);

        while($row = $this->db()->fetch_array($rows)) {
            $bandsArrayRow = explode('+', $row['bands']);

            foreach ($bandsArrayRow as $band) {
                    if (strpos($band,':')) {
                        $bandTrimmed = explode(":", $band);
                        $integrated[] = utf8_encode(trim($bandTrimmed[1]));
                    } else {
                        $integrated[] = utf8_encode(trim($band));
                    }
            }
        }

        $sql   = 'select count(*) as gigs from gigs';
        $rows2 = $this->db()->query($sql);
        $row2  = $this->db()->fetch_array($rows2);

        $stats['gigs']  = $row2;
        $stats['bandsNumber'] = count(array_count_values($integrated));
        $stats['integrated']  = array_count_values($integrated);
        return $stats;
    }

    // Get all the gigs.
    public function getGigs($filter = '') {
        $where = '';
        if ($filter) {
            $where = " where type =" . $filter;
        }

        $sql = "SELECT * FROM gigs" . $where;
        $rows = $this->db()->query($sql);


        while ($row = $this->db()->fetch_array($rows)) {
          $currentGig = array();
          $currentGig['gig_id']     = $row['gig_id'];
          $currentGig['gig_date']   = $row['gig_date'];
          $currentGig['gig_bands']  = utf8_encode($row['gig_bands']);
          $currentGig['gig_venue']  = utf8_encode($row['gig_venue']);
          $currentGig['gig_price']  = $row['gig_price'];
          $gigs[] = $currentGig;
        }

        $table = '<table id="gigsTable" data-order="[0]" class="display"><thead><th>ID</th><th>Fecha</th><th>Grupos</th><th>Sala</th><th>Precio</th></thead><tbody>';

        foreach ($gigs as $gig) {
            $bgcolor = $this->getCover($gig['gig_id']) ? 'green' : 'red';
            $table .= '<tr><td>'.$gig['gig_id'].'<td>'.$gig['gig_date'].'</td><td>';
            $table .= '<a href="detail.php?gig_id='.$gig['gig_id'].'" style="color:'.$bgcolor.'" id="'.$gig['gig_id'].'" >'.$gig['gig_bands'].'</a>';
            if ($this->getCover($gig['gig_id'])) {
                $table .= '<img src="../covers/'. $gig['gig_id'].'.jpg" style="display:none;width:100px;float:right;border:2px solid black">';
            }

            $table .='</td><td>'.$gig['gig_venue'].'</td><td>'.$gig['gig_price'].'</td></tr>';
        }

        $table .= '</tbody></table>';

        return $table;
    }

    // Get gigs detail.
    public function getGigsDetail($gig_id) {
        $sql = "SELECT * FROM gigs where gig_id=" . $gig_id;
        $rows = $this->db()->query($sql);
        while($gig = $this->db()->fetch_array($rows)) {
            $currency = $this->getCurrency($gig['gig_date']);

            echo
            '<table class="table" id="gigDetail"><tr><td>'. $gig['gig_bands'] . '</td></tr>'.
            '<tr><td>'. $gig['gig_date'] . '</td></tr>' .
            '<tr><td>'. $gig['gig_price'] .' '.$currency. '</td></tr>' .
            '<tr><td>'. utf8_encode($gig['gig_venue']) . '</td></tr>';
            if ($this->getCover($gig['gig_id']) == 'green') {
                echo '<tr><td><img src="/music/covers/'.$gig_id.'.jpg" class="table-responsive"></td></tr>';
            }
            echo '</table>';
        }
    }

    // Set new gig.
    public function addGig($date, $bands, $venue, $price) {
        $data = new stdClass();
        $data->gig_date  = utf8_decode($date);
        $data->gig_bands = utf8_decode($bands);
        $data->gig_venue = utf8_decode($venue);
        $data->gig_price = $price;
        $gig_id = $this->db()->query_insert("gigs", $data);
        return $gig_id;
    }
}