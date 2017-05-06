classdef individual  
    properties
        routecoodinates
        fitness
        segmentcount
    end
    
    methods
        function obj=individual(start,ending,xdiamension,ydiamension,segment_count)
            obj.routecoodinates=randomroutegenerator(start,ending,xdiamension,ydiamension,segment_count);
            obj.segmentcount=segment_count;
        end
        function fit=fitnesss(heightmap,obj,maxtunelheight,maxbridgeheight,bridgeprice,tunnelprice)
            n=obj.routecoodinates;
            m=size(obj.routecoodinates);
            heightdifferance=heightmap(n(1,m),n(2,m))-heightmap(n(1,1),n(2,1));
            pathlength=0;
            for i=1:m(2)-1
                r=segmentheightvalues([n(1,i),n(2,i)],[n(1,i+1),n(2,i+1)],heightmap);
                pathlength=pathlength+r(3);
            end
            
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

