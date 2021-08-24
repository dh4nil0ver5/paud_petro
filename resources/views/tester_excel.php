<?php

require '../vendor/autoload.php';

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

$s = new Spreadsheet();
$sh = $s->getActiveSheet();
$sh->setCellValue('A1','Hello World !');
$w = new Xlsx($s);
$w->save('testerworld.xlsx');