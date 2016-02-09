<?php
require_once('../classes/Music.class.php');
require_once('../settings.php');
global $MUSIC;
$MUSIC = new Music();
$stats = $MUSIC->getStatistics();
header('Content-Type: text/html; charset=utf-8');
?>
<link href="<?php echo $CFG->dircss ?>"type='text/css' rel='stylesheet'>

<script src="<?php echo $CFG->jquery ?>" type="text/javascript"></script>


<link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"type='text/css' rel='stylesheet'>
<script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
<script src="/music/js/music.js" type="text/javascript"></script>
<div class="navbar navbar-inverse">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand" href="<?php echo $CFG->templatedir ?>/jumbotron.php">Music</a>
  </div>
  <div class="navbar-collapse collapse navbar-inverse-collapse">
    <ul class="nav navbar-nav">
    <li><span class="navbar-brand"><?php echo $stats['bands'] . " bandas y " . $stats['gigs'] ?> conciertos</span></li>
      <li><a href="new.php" id="new"><span class="glyphicon glyphicon-plus"></span>&nbsp;&nbsp;&nbsp;Nuevo concierto</a></li>
      <li><a href="gigs.php"><span class="glyphicon glyphicon-list"></span>&nbsp;&nbsp;&nbsp;Lista de conciertos</a></li>
      </li>
    </ul>
  </div>
</div>