A = xlsread('bridgeport1week1-train.csv');
BP1w1=A;
clear A
A = xlsread('bridgeport1week2-train.csv');
BP1w2=A;
clear A
All=[BP1w1;BP1w2];
xI=All(:,8:11);
xI=[xI All(:,14)];
xD=All(:,15);
yI=[All(:,4) All(:,6:7) All(:,12:13)];
yD=All(:,5);
t1=All(:,1:2);
t2=All(:,3);
b=All(:,16);
A = xlsread('bridgeport1week3-test.csv');
test_X=[A(:,7:8) A(:,11:12) A(:,6)];
test_Y=[A(:,13) A(:,4:5) A(:,9:10)];
T1=[t1;A(:,1:2)];
T2=[t2;A(:,3)];
B=[b;A(:,14)];
YI=[yI;A(:,13) A(:,4:5) A(:,9:10)];
XI=[xI;A(:,7:8) A(:,11:12) A(:,6)];

%% to make the headings consistent
y=[yI(:,4) yI(:,5) yI(:,2) yI(:,3) yI(:,1)];
clear yI
yI=y;
Y=[YI(:,4) YI(:,5) YI(:,2) YI(:,3) YI(:,1)];
YI=Y;
clear A
