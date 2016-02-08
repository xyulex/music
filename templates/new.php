<?php require_once('mainbar.php');
global $CFG, $MUSIC;
?>

<form role="form">
    <div class="form-group">
      <label for="band">Grupos:</label>
      <input type="text" class="form-control" id="band">
    </div>
    <div class="form-group">
      <label for="price">Precio:</label>
      <input type="text" class="form-control" id="price">
    </div>
    <div class="form-group">
      <label for="venue">Sala:</label>
      <select class="form-control" id="venue">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
      </select>
    </div>
</form>