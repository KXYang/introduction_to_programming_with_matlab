%Function
function summa = halfsum(A)
    [row, col] = size(A);
    summa = 0;
    for r = 1:row
       for c = 1:col
           if r <= c
           summa = summa + A(r,c);    
           end
       end
    end

%Code to call your function
summa = halfsum([1 2 3; 4 5 6; 7 8 9])
