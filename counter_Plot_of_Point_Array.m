   [x,y]=meshgrid(linspace(min(a(:,1)),max(a(:,1))),linspace(min(a(:,2)),max(a(:,2))));
    zi = griddata(a(:,1),a(:,2),a(:,3),x,y);
    surf(x,y,zi,'facecolor','none','edgealpha',.2);hold on
    scatter3(a(:,1),a(:,2),a(:,3),4,'r')
