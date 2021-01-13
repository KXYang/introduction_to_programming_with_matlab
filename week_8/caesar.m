%Function
function coded = caesar(v,shift)
    range = char(32:126);
    v_new = circshift(range,-shift);
    coded = v_new(double(v)-31);
end

%Code to call your function
coded    = caesar('ABCD',  3)
decoded  = caesar(coded,  -3)
wrap     = caesar('1234', 96)
back     = caesar(wrap,  -96)
