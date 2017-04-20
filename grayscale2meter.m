function [ metermap ] = grayscale2meter( map, max_meter, min_meter )
    midmap=map - min(min(map));
    coeffi=(max(max(map))-min(min(map)))/(max_meter-min_meter);
    metermap=midmap./coeffi + min_meter;
end

