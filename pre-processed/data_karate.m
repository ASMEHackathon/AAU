c=cov(XI);
rx=corrcov(c);

c=cov(YI);
ry=corrcov(c);

%% regression
% Dependent VS Independent
X=[xI(:,1:4) xD];
% Dependent VS Time
% X VS TIME (day and time separate)
X=[t1 xD];
% X VS TIME (only one variable)
X=[t2 xD];

% X VS TIME (day and time)
X=[t1 xI(:,1)]; % RMS
X=[t1 xI(:,2)]; % Temp
X=[t1 xI(:,3)]; % Peak Acceleration
X=[t1 xI(:,4)]; % Peak Velocity
X=[t1 xI(:,5)]; % Band

% X VS TIME (only one variable)
X=[t2 xI(:,1)]; % RMS
X=[t2 xI(:,2)]; % Temp
X=[t2 xI(:,3)]; % Peak Acceleration
X=[t2 xI(:,4)]; % Peak Velocity
X=[t2 xI(:,5)]; % Band
X=[xI t2];

% Dependent VS Independent 
X=[xI xD];
X=[yI yD];
%% 
p=zeros(size(xD));
nums=1:length(p);
nums=nums';
p(xD>10)=1;
p=p.*nums;
p(p==0)=[];
d=diff(p);
hist(d);

[pks,p_locs] = findpeaks(xD,'MinPeakProminence',5); % prev 20
% [pks,p_locs] = findpeaks(xD); % prev 20
figure,plot(xD); hold on;
scatter(p_locs,pks);
d=diff(p_locs);