% usage:
% >> det = task_6([1 2 3; 3 3 3; 1 7 6]);
% >> disp(det);
% 21

function det_matrix = task_6(matrix)
    [n, m] = size(matrix);
    
    if n ~= m
        error('Матрица должна быть квадратной.');
    end
    
    if n == 1
        det_matrix = matrix(1, 1);
        return;
    end
    
    det_matrix = 0;
    for j = 1:n
        minor = matrix(2:end, [1:j-1, j+1:end]);
        det_minor = task_6(minor);
        sign = (-1)^(1+j);
        det_matrix = det_matrix + sign * matrix(1, j) * det_minor;
    end
end