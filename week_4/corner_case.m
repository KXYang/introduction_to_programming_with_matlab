%Corner Case
function [tl, tr, bl, br] = corners(M)
    tl = M(1,1);
    tr = M(1,end);
    bl = M(end,1);
    br = M(end,end);
end

%Code to call your function
A = randi(100,4,5)
[top_left, top_right, bottom_left, bottom_right] = corners(A)
B = [1; 2]
[top_left, top_right, bottom_left, bottom_right] = corners(B)
