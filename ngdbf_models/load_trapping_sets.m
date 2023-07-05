% Trappping sets from University of Arizona
% https://uweb.engr.arizona.edu/~vasiclab/Projects/CodingTheory/TrappingSetOntology.html 

% Adjacency matrix structure
%    s_1 s_2 s_3 ... s_n
% c_1
% c_2
% c_3
%  |
% c_n
fprintf("\n\nTo use trapping sets call <strong>run_ngdbf(trapping_set,explicit_model)</strong> " + ...
    "where trapping_set \nis one the loaded sets and explicit_model is a boolean\n" + ...
    "that is true if you would like to generate an explicit model \n(see PRISM manual for more " + ...
    "info on explicit models\n" + ...
    "https://www.prismmodelchecker.org/manual/Appendices/ExplicitModelFiles)\n" + ...
    "or false if you would like to generate a normal .prism model. \n\n\n");

three_three = [
1 0 0 
1 1 0
0 1 0
1 0 1
0 1 1
0 0 1
];

four_four = [    
1 1 0 0
0 1 1 0
0 0 1 1
1 0 0 1 
1 0 0 0
0 1 0 0
0 0 1 0
0 0 0 1
];

five_three = [
1 1 0 0 0
1 0 1 0 0
1 0 0 1 0
0 1 0 0 0
0 0 1 0 0
0 0 0 1 0
0 1 0 0 1
0 0 1 0 1 
0 0 0 1 1
];

six_four_four = [
1 1 0 0 0 0
1 0 0 1 0 0
1 0 0 0 1 0
0 1 0 0 0 0
0 0 0 1 0 0
0 1 1 0 0 0
0 0 1 1 0 0
0 0 1 0 0 1
0 0 0 0 1 0
0 0 0 0 0 1
0 0 0 0 1 1
];

six_four_eight = [
1 0 0 1 0 0
1 0 0 0 0 0
1 1 0 0 0 0
0 1 0 0 0 0
0 1 1 0 0 0 
0 0 1 0 0 1
0 0 1 1 0 0
0 0 0 1 1 0
0 0 0 0 1 0 
0 0 0 0 1 1
0 0 0 0 0 1
];

six_two = [
1 1 0 0 0 0
1 0 0 0 1 0
1 0 0 0 0 1
0 1 1 0 0 0 
0 0 1 0 0 0
0 0 1 0 1 0
0 0 0 0 0 1
0 1 0 1 0 0
0 0 0 1 1 0
0 0 0 1 0 1
];

six_zero = [
1 0 0 1 0 0
1 0 0 0 1 0
1 0 0 0 0 1
0 1 0 1 0 0 
0 1 0 0 1 0
0 1 0 0 0 1
0 0 1 1 0 0 
0 0 1 0 1 0
0 0 1 0 0 1
];

seven_five_three = [
1 0 0 0 0 0 1
1 0 0 0 1 0 0
1 1 0 0 0 0 0
0 1 0 0 0 0 0
0 1 1 0 0 0 0
0 0 1 0 0 0 0
0 0 1 1 0 0 0
0 0 0 1 0 0 0
0 0 0 1 1 0 0
0 0 0 0 1 1 0
0 0 0 0 0 1 0 
0 0 0 0 0 1 1
];

seven_five_six = [
1 0 0 0 0 1 0
1 0 0 0 0 0 1
1 1 0 0 0 0 0
0 1 0 0 0 0 0
0 1 1 0 0 0 0
0 0 1 0 0 0 0
0 0 1 1 0 0 0
0 0 0 1 0 0 0 
0 0 0 1 1 0 0
0 0 0 0 1 0 1
0 0 0 0 1 1 0
0 0 0 0 0 1 0
0 0 0 0 0 0 1
];

seven_three_three = [
1 0 0 0 1 0 0
1 0 0 0 0 1 0
1 1 0 0 0 0 0
0 1 0 0 0 0 1
0 1 1 0 0 0 0
0 0 1 0 0 0 0
0 0 0 1 0 1 0
0 0 0 1 1 0 0 
0 0 0 0 1 0 0
0 0 0 0 0 1 1
0 0 0 0 0 0 1
];

seven_three_four = [
1 0 0 0 1 0 0 
1 0 0 0 0 0 1
1 1 0 0 0 0 0
0 1 0 0 0 0 0
0 1 1 0 0 0 0
0 0 1 0 0 0 0
0 0 1 1 0 0 0 
0 0 0 1 0 0 1 
0 0 0 1 1 0 0 
0 0 0 0 1 1 0
0 0 0 0 0 1 0
0 0 0 0 0 1 1
];

seven_three_ten = [
1 0 0 1 0 0 0
1 0 0 0 0 0 0
1 1 0 0 0 0 0
0 0 0 1 1 0 0
0 0 0 0 1 0 0
0 0 0 0 1 1 0
0 0 0 0 0 1 1
0 0 0 0 0 0 1
0 1 0 0 0 0 1
0 0 1 1 0 0 0
0 0 1 0 0 1 0
0 1 1 0 0 0 0 
];

seven_one_one = [
1 0 0 0 1 0 0 
1 0 0 0 0 1 0
1 1 0 0 0 0 0
0 0 0 0 1 0 1
0 0 0 0 0 1 1
0 1 0 0 0 0 1
0 0 0 1 1 0 0 
0 0 0 1 0 1 0
0 0 1 1 0 0 0
0 0 1 0 0 0 0
0 1 1 0 0 0 0
];

eight_six_four = [
1 0 0 0 0 0 0 1
1 0 0 0 0 1 0 0
1 1 0 0 0 0 0 0
0 1 0 0 0 0 0 0
0 1 1 0 0 0 0 0
0 0 1 0 0 0 0 0 
0 0 1 1 0 0 0 0
0 0 0 1 0 0 0 0
0 0 0 1 1 0 0 0
0 0 0 0 1 0 0 0
0 0 0 0 1 1 0 0
0 0 0 0 0 1 1 0 
0 0 0 0 0 0 1 1
0 0 0 0 0 0 0 1
];