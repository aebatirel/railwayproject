function [ output] = mutate_route(routein,segment_count,maxmutation,mutationprob)
    route=routein;
    for n=1:segment_count-1
        x=rand;
        if(x>mutationprob)
            route(1,n+1)=route(1,n+1)+(maxmutation- randi(2*maxmutation));
            route(1,n+1)=route(1,n+1)+(maxmutation- randi(2*maxmutation));
        end
    end
    output=route;
end

