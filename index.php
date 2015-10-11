<?php $f=fopen($argv[1],'r');while($r=fgets($f)){$t=array_sum(str_split($r));echo (45-$t)."\n";}?>
