%% FOR BRIDGEPORT 2
A = xlsread('bridgeport2week1-train.csv');
xI=[A(:,8) A(:,9) A(:,6) A(:,7) A(:,10)];
yI=[A(:,14) A(:,15) A(:,12) A(:,13) A(:,4)];
xD=A(:,11);
yD=A(:,5);
clear A
A = xlsread('bridgeport2week2-train.csv');
xI=[xI;A(:,8) A(:,9) A(:,10) A(:,11) A(:,6)];
yI=[yI;A(:,12) A(:,13) A(:,4) A(:,5) A(:,14)];
xD=[xD;A(:,7)];
yD=[yD;A(:,15)];
clear A

A = xlsread('bridgeport1week3-test.csv');
test_X=[A(:,4:5) A(:,9:10) A(:,11)];
test_Y=[A(:,12:13) A(:,6:7) A(:,8)];

clear A

