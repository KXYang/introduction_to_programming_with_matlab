%Function
function numfreeze = freezing(A)
    numfreeze = size(A(A < 32), 2);
end

%Code to call your function
numfreeze = freezing([45 21 32 31 51 12])
