function matrix = task_5(n)
    matrix = zeros(n);
    num = 1;
    
    for k = 1:n
        i = 1; 
        j = k;
        while i <= n && j >= 1
            matrix(i, j) = num;
            num = num + 1;
            i = i + 1;
            j = j - 1;
        end
    end

    for k = 2:n
        i = k;
        j = n;
        while i <= n && j >= 1
            matrix(i, j) = num;
            num = num + 1;
            i = i + 1;
            j = j - 1;
        end
    end
    disp(matrix)
end