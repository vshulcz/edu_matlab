function sorted_array = task_7(array)
    sorted_array = [];
    
    while ~isempty(array)
        max_val = max(array);
        min_val = min(array);
        
        sorted_array = [sorted_array, max_val];
        
        array(array == max_val) = [];
        
        if isempty(array)
            break;
        end
        
        sorted_array = [sorted_array, min_val];
        
        array(array == min_val) = [];
        
        if isempty(array)
            break;
        end
        
        prev_max_index = find(array == max_val) - 1;
        if prev_max_index > 0
            sorted_array = [sorted_array, array(prev_max_index)];
            array(prev_max_index) = [];
        end
        
        next_min_index = find(array == min_val) + 1;
        if next_min_index <= length(array)
            sorted_array = [sorted_array, array(next_min_index)];
            array(next_min_index) = [];
        end
    end
    disp(sorted_array);
end
