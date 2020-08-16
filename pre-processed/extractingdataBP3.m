%% FOR BRIDGEPORT 3
A = xlsread('bridgeport3week1-train.csv');
xI=[A(:,4) A(:,5) A(:,15) A(:,16) A(:,6)];
yI=[A(:,10) A(:,11) A(:,8) A(:,9) A(:,12)];
xD=A(:,7);
yD=A(:,13);
clear A
A = xlsread('bridgeport3week2-train.csv');
xI=[xI;A(:,10) A(:,11) A(:,6) A(:,7) A(:,4)];
yI=[yI;A(:,12) A(:,13) A(:,8) A(:,9) A(:,14)];
xD=[xD;A(:,5)];
yD=[yD;A(:,15)];
clear A

A = xlsread('bridgeport3week3-test.csv');
test_X=[A(:,5:6) A(:,7:8) A(:,4)];
test_Y=[A(:,9:10) A(:,12:13) A(:,11)];

clear A

