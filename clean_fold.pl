#! usr/bin/perl
#Read "Note.txt" for general information
#Remove all temporary files


my $dir = seq_db;
my $word_to_delete = "data";
opendir (DIR,$dir);
@files = grep(/$word_to_delete/, readdir (DIR));
closedir (DIR);
foreach $file (@files)
{
unlink "$dir/$file";
} 

my $dir2 = all_prob;
my $word_to_delete2 = "prob";
opendir (DIR2,$dir2);
@files2 = grep(/$word_to_delete2/, readdir (DIR2));
closedir (DIR2);
foreach $file2 (@files2)
{
unlink "$dir2/$file2";
} 

my $dir3 = temp;
my $word_to_delete3 = ".txt";
opendir (DIR3,$dir3);
@files3 = grep(/$word_to_delete3/, readdir (DIR3));
closedir (DIR3);
foreach $file3 (@files3)
{
unlink "$dir3/$file3";
} 

unlink "input/genes.fna";
unlink "input/ids.txt";
unlink "input/inpt.txt";
unlink "input/name.txt";
unlink "input/most_prob.txt";

my $dir4 = results;
my $word_to_delete4 = ".txt";
opendir (DIR4,$dir4);
@files4 = grep(/$word_to_delete4/, readdir (DIR4));
closedir (DIR4);
foreach $file4 (@files4)
{
unlink "$dir4/$file4";
} 
