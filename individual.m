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
        function fit=fitnesss(heightmap,obj)
            return 0;
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

