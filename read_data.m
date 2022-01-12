%read in the file
%readmatrix is able to read
% M = array2table(readmatrix('C:\Users\Ruitong\Desktop\060122_175755.txt'),...
%     'VariableNames',{'TimeStimOn','TimeResponse','StimSize','StimPosX','StimPosY','TouchPosX','TouchPosY','Reward'});
M = readmatrix('C:\Users\Ruitong\Desktop\060122_175755.txt');
%extract the variable and do some calculation to get the  
TimeStimOn = M(:,1);
TimeResponse = M(:,2);
StimSize = M(:,3);
StimPosX = M(:,4);
StimPosY = M(:,5);
TouchPosX = M(:,6);
TouchPosY = M(:,7);
Reward = M(:,8);
Correct = Reward;
Correct(Correct>0) = 1;
ReactionTime = TimeResponse-TimeStimOn;
ErrorPosX = StimPosX-TouchPosX;
ErrorPosY = StimPosY-TouchPosY;
% Correct = M.Reward;
% Correct(Correct>0)=1;
% M.Correct = Correct;

%establish table
output = table(ReactionTime,Correct,ErrorPosX,ErrorPosY,StimSize);
