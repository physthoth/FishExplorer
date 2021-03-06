
VV = zeros(max(xx),max(yy),max(zz),3); % the volume in 3D + color-D

% NEED TO ADD OPTION TO MAX BEING BINARY, IE ONE OUT OF THE N WHERE
% N=NUMBER OF STIMULI TO COMPARE. THEN BUILD COLOR OUT OF THE MAX ONLY, FOR
% EACH PIXEL IN THE TOP PROJECTED IMAGE. TO PREVENT MIXING, SO RED+BLUE
% CELLS ABOVE ONE ANOTHER = PURPLE CELL, WHICH IS THE SAME AS ONE PURPLE
% CELL.

% 1 = omrF
% 2 = omrR      (fish wants to swim R)
% 3 = omrL
% 4 = photoR    (fish wants to swim R; black on L)
% 5 = photoL
% 6 = blobR     (fish wants to swim R; blob on L)
% 7 = blobL
% 8 = colR      (fish wants to swim R; blue on L)
% 9 = colL


for i=1:size(Pvals,1) % very very manual way of coloring!
%    VV(xx(i),yy(i),zz(i),1) =  min(1,-log10(Pvals(i,7))/10);%*min(1,-log10(Pvals(i,1))/10);
%    VV(xx(i),yy(i),zz(i),3) = min(1,-log10(Pvals(i,2))/10)* min(1,-log10(Pvals(i,7))/10);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,8))/10).*(signs(i,8)>0);%* min(1,-log10(Pvals(i,9))/10);
%    VV(xx(i),yy(i),zz(i),2) = min(1,-log10(Pvals(i,9))/10).*(signs(i,9)>0);%* min(1,-log10(Pvals(i,9))/10);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,4))/10);%* min(1,-log10(Pvals(i,9))/10);
%    VV(xx(i),yy(i),zz(i),2) = min(1,-log10(Pvals(i,5))/10);%* min(1,-log10(Pvals(i,9))/10);
    VV(xx(i),yy(i),zz(i),3) = 2*min(1,-log10(Pvals(i,3))/10).*(signs(i,9)>0);
    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,8))/10).*(signs(i,9)<0);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,7))/10).*min(1,-log10(Pvals(i,5))/10);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,7))/10);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,2))/10).*min(1,-log10(Pvals(i,5))/10).*min(1,-log10(Pvals(i,7))/10).*min(1,-log10(Pvals(i,8))/10);

%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,2))/10).*min(1,-log10(Pvals(i,5))/10).*min(1,-log10(Pvals(i,7))/10).*min(1,-log10(Pvals(i,9))/10).*(signs(i,9)>0);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,2))/10);%.*min(1,-log10(Pvals(i,5))/10).*min(1,-log10(Pvals(i,9))/10).*(signs(i,9)>0);
%    VV(xx(i),yy(i),zz(i),2) = min(1,-log10(Pvals(i,3))/10);%.*min(1,-log10(Pvals(i,5))/10).*min(1,-log10(Pvals(i,9))/10).*(signs(i,9)>0);
%    VV(xx(i),yy(i),zz(i),2) = 2*min(1,-log10(Pvals(i,3))/10).*min(1,-log10(Pvals(i,4))/10).*min(1,-log10(Pvals(i,6))/10).*min(1,-log10(Pvals(i,8))/10).*(signs(i,8)>0);
  %/  VV(xx(i),yy(i),zz(i),2) = 2*min(1,-log10(Pvals(i,3))/10).*min(1,-log10(Pvals(i,4))/10).*min(1,-log10(Pvals(i,8))/10).*(signs(i,8)>0);
 %    VV(xx(i),yy(i),zz(i),3) = 0.1;
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,2))/5).*min(1,-log10(Pvals(i,5))/5).*min(1,-log10(Pvals(i,7))/5).*min(1,-log10(Pvals(i,9))/5).*(signs(i,9)>0);
  %  VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,3))/5).*min(1,-log10(Pvals(i,4))/5).*min(1,-log10(Pvals(i,6))/5).*min(1,-log10(Pvals(i,8))/5).*(signs(i,9)<0);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,2))/10).*min(1,-log10(Pvals(i,5))/10);%.*min(1,-log10(Pvals(i,6))/10).*min(1,-log10(Pvals(i,8))/10);
%    VV(xx(i),yy(i),zz(i),2) = min(1,-log10(Pvals(i,3))/10).*min(1,-log10(Pvals(i,4))/10).*min(1,-log10(Pvals(i,6))/10).*min(1,-log10(Pvals(i,8))/10);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,9))/10).*(signs(i,9)>0);
%    VV(xx(i),yy(i),zz(i),2) = min(1,-log10(Pvals(i,8))/10).*(signs(i,8)>0);
%    VV(xx(i),yy(i),zz(i),2) = min(1,-log10(Pvals(i,5))/10);
%    VV(xx(i),yy(i),zz(i),1) = min(1,-log10(Pvals(i,7))/10);
end

figure
vv = convn(squeeze(max(VV,[],3)),ones(3,3,1)/1,'same'); % first makes z-projection; then convolves the cell-location dot into a little bigger (3x3) dot? while keeping the overall array size the 'same'.
vv = vv.*(vv<=1) + (vv>1); % ????  
image(vv)

figure
vv = convn(squeeze(max(VV,[],3)),ones(3,3,1)/1,'same');
vv = vv.*(vv<=1) + (vv>1);
image(vv)
ylim([1000 1400])
xlim([360 840])

figure
subplot(1,3,1)
vv = convn(squeeze(max(VV(:,400:600,:,:),[],2)),ones(3,1,1)/1,'same');
vv = vv.*(vv<=1) + (vv>1);
image(vv)
subplot(1,3,2)
vv = convn(squeeze(max(VV(:,600:800,:,:),[],2)),ones(3,1,1)/1,'same');
vv = vv.*(vv<=1) + (vv>1);
image(vv)


return



%%
figure
for j=1:length(comparisons)%3%1:length(rangeTypes)
    for k=3:20
        
        % ALSO NEED TO ADJUST SIGNS
        
        
         indsTMP = find(Pvals(:,j)<10^-k);%OMRRp<10^-k);
 %       indsTMP = find((Pvals(:,j)<10^-k).*(Pvals(:,9)<10^-k));%OMRRp<10^-k);
        
        qqq = ones(size(Pvals,1),1);
        L = {[2 3],[4 5],[6 7],[8 9]};
         for l= 1:length(L)
            qqq = qqq .* ((Pvals(:,L{l}(1))<10^-k)+(Pvals(:,L{l}(2))<10^-k));
        end
        indsTMP = find(qqq);
        
        clf
        hold on
        subplot(4,4,[1 2 3  5 6 7])
        hold on
        plot(xx,yy,'.','color',[.7 .7 .7])
        plot(xx(intersect(indsTMP,find(signs(:,j)<0))),yy(intersect(indsTMP,find(signs(:,j)<0))),'.','color',[.2 1 .3])
        plot(xx(intersect(indsTMP,find(signs(:,j)>0))),yy(intersect(indsTMP,find(signs(:,j)>0))),'.','color',[1 .2 .1])
        xlim([0 2000])
        ylim([0 1100])
        title(labels{j})
        subplot(4,4,[9 10 11])
        hold on
        plot(xx,zz,'.','color',[.7 .7 .7])
        plot(xx(intersect(indsTMP,find(signs(:,j)<0))),zz(intersect(indsTMP,find(signs(:,j)<0))),'.','color',[.2 1 .3])
        plot(xx(intersect(indsTMP,find(signs(:,j)>0))),zz(intersect(indsTMP,find(signs(:,j)>0))),'.','color',[1 .2 .1])
        xlim([0 2000])
        ylim([0 32])
        
        subplot(4,4,15:16)
        if k>=3
            imagesc(CR(intersect(indsTMP,find((xx>1090).*(xx<1350).*(abs(yy-600)<200))),1:4599),[-2 2])
        end
        subplot(4,4,13:14)
        if k>=3
            imagesc(CR(setdiff(indsTMP,find((xx>1090).*(xx<1350).*(abs(yy-600)<200))),1:4599),[-2 2])
        end
        subplot(4,4,[1 2 3  5 6 7])
     %   plot(xx(intersect(indsTMP,find((xx>1120).*(xx<1350).*(abs(yy-600)<200)))),yy(intersect(indsTMP,find((xx>1120).*(xx<1350).*(abs(yy-600)<200)))),'k.')
        
        
        
        
        II = intersect(indsTMP,find((xx>1120).*(xx<1350).*(abs(yy-600)<200)));
        II = intersect(II,find(signs(:,j)>0));
        CROMR = mean(CR(II,rangeOMR(1):rangeOMR(2)),1);
        cromr = reshape(CROMR,(rangeOMR(2)-rangeOMR(1)+1)/trialsOMR, trialsOMR);
        cromr = mean(cromr,2);
        CRPHOT = mean(CR(II,rangePhoto(1):rangePhoto(2)),1);
        crphot = reshape(CRPHOT,(rangePhoto(2)-rangePhoto(1)+1)/trialsPhoto, trialsPhoto);
        crphot = mean(crphot,2);
        CRBLOB = mean(CR(II,rangeBlob(1):rangeBlob(2)),1);
        crblob = reshape(CRBLOB,(rangeBlob(2)-rangeBlob(1)+1)/trialsBlob, trialsBlob);
        crblob = mean(crblob,2);
        CRCOL = mean(CR(II,rangeCol(1):rangeCol(2)),1);
        crcol = reshape(CRCOL,(rangeCol(2)-rangeCol(1)+1)/trialsCol, trialsCol);
        crcol = mean(crcol,2);
        
        subplot(4,4,4)
        hold on
        plot(cromr)
        plot(crphot,'r')
        plot(crblob,'k')
        plot(crcol,'color',[0 .8 0])
        
        waitforbuttonpress
    end
end

%%




