function counts = task_3(arr)
    n = length(arr);
    counts = zeros(1, n);
    
    for i = 1:n
        count = 0;
        for j = 1:i-1
            if arr(j) < arr(i)
                count = count + 1;
            end
        end
        counts(i) = count;
    end
    disp(counts)
end
