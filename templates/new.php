<?php require_once('mainbar.php'); ?>

<form role="form" method="POST" action="save.php">
    <div class="form-group">
      <label for="bands">Grupos:</label>
      <input type="text" class="form-control" id="bands" name="bands">
    </div>
    <div class="form-group">
      <label for="date">Fecha:</label>
      <input type="text" class="form-control" id="date" name="date">
    </div>
    <div class="form-group">
      <label for="venue">Sala:</label>
      <input type="text" class="form-control" id="venue" name="venue">
    </div>
    <div class="form-group">
      <label for="price">Precio:</label>
      <input type="text" class="form-control" id="price" name="price">
    </div>
    <div class="form-group">
      <input type="submit" id="submit" value="Save">
    </div>
</form>