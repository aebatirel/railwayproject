classdef individual  
    properties
        routecoodinates
        fitness
        segmentcount
        pathdistance
    end
    
    methods
        function obj=individual(start,ending,heigthmap,segment_count)
            [xdiamension,ydiamension]=size(heigthmap);
            obj.routecoodinates=randomroutegenerator(start,ending,xdiamension,ydiamension,segment_count);
            obj.segmentcount=segment_count;
            
        end
        function fit=fitnesss(heightmap,obj,maxtunelheight,maxbridgeheight,bridgeprice,tunnelprice)
            n=obj.routecoodinates;
            nx=n(1,:);
            m=size(obj.routecoodinates);
            heightdifferance=heightmap(n(1,m),n(2,m))-heightmap(n(1,1),n(2,1));
            pathlength=0;
            pathxdiffirance=0;
            for i=1:size(n(1,:))
                
                pathxdiffirance=pathxdiffirance+abs(nx(i)-nx(i+1));
            end
            %heightvalues4fitness - siyah kot
            %desiredvalues4fitness - k�rm�z� kot
            heightvalues4fitness=zeros(pathxdiffirance);
            desiredvalues4fitness=zeros(pathxdiffirance);
            for i=1:size(n)
                
                [a,b,c]=segmentheightvalues([n(1,i),n(2,i)],[n(1,i+1),n(2,i+1)],heightmap);
                pathlength=pathlength+c;
                for ii=1:size(a)
                    
                end
                
            end
            
            
            
            obj.pathdistance=pathlength;
            fit=0;
            
        end
        function [route1,route2]=crossoverroute(obj1,obj2)
            if obj1.segmentcount==obj2.segmentcount
                [route1,route2]=crossover_route (obj1.routecoodinates,obj2.routecoodinates,obj1);
            end
        end
        function [output]=mutateroute(obj)
            output=mutate_route(obj.routecoodinates,obj.segmentcount);
        end
    end
    
end

