for g=1:12
    clc
    gg=g-1;
    Completed_organisms=gg

Program_Status= ['Program Started.Please wait']
perl ('before.pl');
perl ('global.pl');
program_Status=['Probability Calculations Done... now analysis...']
clear;
cal_most_prob;
clear;
Program_Status=['Calculations with most probable codon Done .']
cal_with_bias;
clear;
Program_Status=['Calculations with Bias Done .']
cal_no_bias;
Program_Status=['Calculations without Bias Done.']
perl ('global2.pl');
perl ('overall_save.pl');
perl ('clean_fold.pl');
Program_Status=['Program Successfully executed.Check Results folder']
end

clc
Program_Status=['All Calculations completed']
