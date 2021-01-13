%Function
function matrix = sparse2matrix(sparse_matrix)
    
    dim = cell2mat(sparse_matrix(1));
    r = dim(1); 
    c = dim(2);
    
    temp = cell2mat(sparse_matrix(2));
    matrix = temp * ones(r, c);
    
    v = size(sparse_matrix);
    l = v(1,2);
    for i = 3:l
       instance = cell2mat(sparse_matrix(i));
       matrix(instance(1), instance(2)) = instance(3);
    end
end

%Code to call your function
matrix = sparse2matrix({[2 3], 0, [1 2 3], [2 2 -3]})
