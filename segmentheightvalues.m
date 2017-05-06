function [ segmentheightlist,pixelpiece,totaldistance ] = segmentheightvalues( vector1, vector2, heightmap )
xdistance=vector2(1)-vector1(1);
ydistance=vector2(2)-vector1(2);
totaldistance=sqrt(xdistance^2+ydistance^2);
pixelpiece=totaldistance/xdistance;
segmentheightlist=zeroes(xdistance);
ypixelpiece=ydistance/xdistance;
for i=1:xdistance
   segmentheightlist(i)= heightmap((i+vector1(1)),(round(i*ypixelpiece)+vector1(2))); 
end
end

