function [ coordinates ] = randomroutegenerator( start,ending,xdiamension,ydiamension,segment_count )
%RANDOMROUTEGENERATOR Summary of this function goes here
%   Detailed explanation goes here
xs=randi([0 xdiamension],1,segment_count+1);
ys=randi([0 ydiamension],1,segment_count+1);
xs(1)=start(1,1);
ys(1)=start(1,2);
xs(segment_count+1)=ending(1,1);
ys(segment_count+1)=ending(1,2);
coordinates=zeros(2,segment_count+1);
for n=0:segment_count
    coordinates(1,n)= xs(n);
    coordinates(2,n)= ys(n);
end
end

