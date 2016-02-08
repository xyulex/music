<?php
unset($CFG);
global $CFG;
$CFG = new stdClass();
$CFG->dirroot = 'http://localhost/music';
$CFG->templatedir = $CFG->dirroot.'/templates/';
$CFG->dircss = $CFG->dirroot.'/templates/bootstrap.css';
$CFG->jquery = $CFG->dirroot.'/js/jquery-1.11.1.min.js';
$CFG->jqueryui = $CFG->dirroot.'/js/jquery-ui.min.js';
header('Content-Type: text/html; charset=utf-8');
?>