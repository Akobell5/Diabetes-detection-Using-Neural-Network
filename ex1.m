clc;
clear;
load  iris_dataset ;
X=irisInputs;
T=irisTargets;

net=patternnet(10);
net=train(net,X,T);
save net net

target=irisInputs(:,75);
y=net(target);
y=vec2ind(y);
disp(y);

% view(net);