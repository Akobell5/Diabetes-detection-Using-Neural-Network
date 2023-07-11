% Enter your MATLAB Code below

data = thingSpeakRead(1562934,'Fields',[1,2,3,4],'NumPoints',1,'ReadKey','41EN6PIG4D0P7ID0')
SL=data(:,1);
SW=data(:,2);
PL=data(:,3);
PW=data(:,4);

Testvalue=[SL SW PL PW];
Testvalue=Testvalue';
net=trainneural;

Class=net(Testvalue);
Class=vec2ind(Class);
clc;
disp('output class');
disp(Class);



function net=trainneural
load  iris_dataset ;
X=irisInputs;
T=irisTargets;

net=patternnet(10);
net=train(net,X,T);
end