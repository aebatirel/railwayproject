function [ segmentheightlisti,pixelpiece,totaldistance ] = segmentheightvalues( vector1, vector2, heightmap )
xdistance=vector2(1)-vector1(1)
ydistance=vector2(2)-vector1(2)
totaldistance=sqrt(xdistance^2+ydistance^2)
pixelpiece=totaldistance/xdistance
segmentheightlist=zeros(abs(xdistance),1);
ypixelpiece=ydistance/xdistance;
a=abs(xdistance);
for i=1:a
   xvalue= (i+vector2(1));
   yvalue=(round(i*ypixelpiece)+vector2(2));
   segmentheightlist(i)= heightmap(xvalue,yvalue);
end
segmentheightlisti=segmentheightlist;
end

