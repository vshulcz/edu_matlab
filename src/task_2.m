function task_2(matrix)
    [n, m] = size(matrix);
    if n ~= m
        disp(false)
        return;
    end
    
    row_check = zeros(1, n);
    col_check = zeros(1, n);
    for i = 1:n
        for j = 1:n
            if matrix(i, j) < 1 || matrix(i, j) > n || row_check(matrix(i, j)) == 1
                disp(false)
                return;
            else
                row_check(matrix(i, j)) = 1;
            end
            if matrix(j, i) < 1 || matrix(j, i) > n || col_check(matrix(j, i)) == 1
                disp(false)
                return;
            else
                col_check(matrix(j, i)) = 1;
            end
        end
        row_check = zeros(1, n);
        col_check = zeros(1, n);
    end
    disp(true)
end