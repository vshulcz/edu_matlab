function result = task_1(str)
    unique_chars = [];
    counts = [];
    
    for i = 1:length(str)
        current_char = str(i);
        current_char = string(current_char);
        
        if ~any(strcmp(unique_chars, current_char))
            unique_chars = [unique_chars current_char];
            counts = [counts 1];
        else
            index = find(strcmp(unique_chars, current_char));
            counts(index) = counts(index) + 1;
        end
    end
    result = [unique_chars; counts];
    
    disp('Символ  Количество вхождений');
    disp(result');
end
