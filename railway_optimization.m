grayscalemap=input('Y�kseklik haritas�n� girin');
maxh=input('En y�ksek kotu girin');
minh=input('En d���k kotu girin');
heightmap=grayscale2meter(grayscalmap,maxh,minh);
startcoordinates=input('ba�lang�� koordinatlar�n� girin');
endcoordinates=input('biti� koordinatlar�n� girin');
segmentcount=input('segment say�s�n� girin');
[xsize,ysize]=size(heightmap);
populationcount=input('populasyon limitinigirin');
populationx=zeroes(segmentcount,populationcount);
populationy=zeroes(segmentcount,populationcount);

for n=1:populationcount
    [xgene,ygene]=randomroutegenerator(startcoordinates,endcoordinates,xsize,ysize,segmentcount);
end

