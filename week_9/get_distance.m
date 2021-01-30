%Function
function distance = get_distance(location_1,location_2)
    
    [~,~,raw] = xlsread('Distances.xlsx');
    
    index_1 = get_index(raw, location_1);
    index_2 = get_index(raw, location_2);
    
    if index_1 > 1 && index_2 > 1
        distance = cell2mat(raw(index_1, index_2));
    else 
        distance = -1;
    end
end

function index = get_index(raw, location)
    [~, len] = size(raw);
    index = -1;
    for i = 2:len
        if strcmp(cell2mat(raw(1, i)), location)
            index = i;
        end
    end
end

%Code to call your function
distance = get_distance('Seattle, WA','Miami, FL')
