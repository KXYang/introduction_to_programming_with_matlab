%Function
function [summa, index] = max_sum(v, n)
    l = length(v);
    if n <= l
        temp = zeros(1, l-n+1);
        for i = 1:l - n + 1
            temp(i) = sum(v(i:(i+n-1)));
        end
        [val, idx] = max(temp);
        summa = val;
        index = idx;
    else
        summa = 0;
        index = -1;
    end

%Code to call your function
[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],3)
