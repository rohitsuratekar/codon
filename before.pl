#!/usr/bin/perl
#Read "Note.txt" for general information
#Selecting files from database

use File::Copy;

open nextfile, "input/glo/next.txt" or die;  #Current Data File

@nextf=<nextfile>;
$next_vari=$nextf[0];

$path_vari1="input/database/"."$next_vari";

$old_path1 ="$path_vari1/ids.txt";
$new_path1="input/ids.txt";

move($old_path1,$new_path1) or die $!;

$old_path2 ="$path_vari1/inpt.txt";
$new_path2="input/inpt.txt";

move($old_path2,$new_path2) or die $!;

$old_path3 ="$path_vari1/genes.fna";
$new_path3 ="input/genes.fna";

move($old_path3,$new_path3) or die $!;

$old_path4 ="$path_vari1/most_prob.txt";
$new_path4 ="input/most_prob.txt";

move($old_path4,$new_path4) or die $!;

$old_path5 ="$path_vari1/name.txt";
$new_path5 ="input/name.txt";

move($old_path5,$new_path5) or die $!;

close nextfile;
$next_vari=$next_vari+1;

open nextfile2, ">input/glo/next.txt" or die;

print nextfile2 $next_vari;

