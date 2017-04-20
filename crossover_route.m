function [ child1,child2 ] = crossover_route( road1,road2,segmentcount)
for n=1:segmentcount+1
    x=rand;
    child1=zeros(2,segmentcount+1);
    child2=zeros(2,segmentcount+1);
    if(x>0.5)
        child1(1,n)=road1(1,n);
        child1(2,n)=road1(2,n);
        child2(1,n)=road2(1,n);
        child2(2,n)=road2(2,n);
    elseif(x<=0.5)
        child1(1,n)=road2(1,n);
        child1(2,n)=road2(2,n);
        child2(1,n)=road1(1,n);
        child2(2,n)=road1(2,n);    
    end
end

end

