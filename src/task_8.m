function max_remainder = task_8(num)
    num_str = num2str(num);
    
    max_remainder = -1;
    
    for i = 1:length(num_str)
        num_without_digit = num_str;
        num_without_digit(i) = [];
        
        new_num = str2num(num_without_digit);
        
        if new_num > max_remainder
            max_remainder = new_num;
        end
    end
    disp(max_remainder)
end
