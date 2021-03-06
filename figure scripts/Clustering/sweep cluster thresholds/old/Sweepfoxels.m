% Make foxels and sweep foxel number
% first load k=20

step = 20;
range = 20:step:200;
for i = 1,%:length(range),
    numK2 = range(i);
    % step 2: divide the above clusters again
    if numK2 <50,
        gIX = KmeansSubdivide(numK2,gIX,M_0);
    else % do it in 2 steps
        numK2_1 = step;
        gIX = KmeansSubdivide(numK2_1,gIX,M_0);
        numK2_2 = numK2/step;
        gIX = KmeansSubdivide(numK2_2,gIX,M_0);
    end
end
%%
Reg = FindCentroid_Direct(gIX,M);
[cIX,gIX,~] = AllCentroidRegression_direct(M_0,0.75,Reg);
gIX = SqueezeGroupIX(gIX);

%% size threshold
U = unique(gIX);
numU = length(U);
for i=1:numU,
    if length(find(gIX==U(i)))<thres_minsize/2,
        cIX(gIX==U(i)) = [];
        gIX(gIX==U(i)) = [];
    end
end
[gIX,numU] = SqueezeGroupIX(gIX);
disp(numU);

%% hist

C = FindCentroid_Direct(gIX,M_0(cIX,:));


U = unique(gIX);
H = zeros(length(U),4);
for i = 1:length(U),
    IX = find(gIX==U(i));
    Dist = pdist(M_0(cIX(IX),:),'corr');
    cdist = corr(C(i,:)',M_0(cIX(IX),:)');
    if ~isempty(Dist),
        H(i,1) = 1-mean(Dist);
        H(i,2) = 1-max(Dist);
        H(i,3) = min(cdist);
    else
        H(i,:) = NaN;
    end
end
%
figure; hold on
subplot(141);hist(H(:,1),-0.5:0.05:1)
subplot(142);hist(H(:,2),-0.5:0.05:1)
subplot(143);hist(H(:,3),-0.5:0.05:1)

subplot(144);
Ccorr = 1-pdist(C,'correlation');
hist(Ccorr,-1:0.05:1)

length(find(Ccorr>0.5))
length(find(Ccorr>0.5))/length(Ccorr)
length(find(Ccorr>0.8))/length(Ccorr)
%%
