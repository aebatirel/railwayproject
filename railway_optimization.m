grayscalemap=input('Yükseklik haritasýný girin');
maxh=input('En yüksek kotu girin');
minh=input('En düþük kotu girin');
heightmap=grayscale2meter(grayscalmap,maxh,minh);
startcoordinates=input('baþlangýç koordinatlarýný girin');
endcoordinates=input('bitiþ koordinatlarýný girin');
segmentcount=input('segment sayýsýný girin');
[xsize,ysize]=size(heightmap);
populationcount=input('populasyon limitinigirin');
populationx=zeroes(segmentcount,populationcount);
populationy=zeroes(segmentcount,populationcount);

for n=1:populationcount
    [xgene,ygene]=randomroutegenerator(startcoordinates,endcoordinates,xsize,ysize,segmentcount);
end

