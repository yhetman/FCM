load fcmdata.dat
plot(fcmdata(:,1),fcmdata(:,2),'o')
[center, U, obj_fcn]= fcm(fcmdata, 2);
maxU = max(U);
index1 = find(U(1,:) == maxU);
index2 = find(U(2,:) == maxU);
line(fcmdata(index1,1),fcmdata(index1,2),'linestyle','none','marker','x','color','g');
line(fcmdata(index2,1),fcmdata(index2,2),'linestyle','none','marker','x','color','r');
hold on
plot(center(1,1),center(1,2),'ko','markersize',10,'LineWidth',2)
plot(center(2,1),center(2,2),'ko','markersize',10,'LineWidth',2c