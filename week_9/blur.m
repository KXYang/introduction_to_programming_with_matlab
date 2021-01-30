%Function
function [output] = blur(A, w)
    
    B = nan(size(A) + 2 * w);
    B(w + 1 : end - w, w + 1 : end - w) = A;
    output = 0 * A;
    
    [r, c] = size(A);
    for i_row = w+1 : w+r
      for j_row = w+1 : w+c
        temp = B(i_row-w : i_row+w, j_row-w : j_row+w);
        output(i_row-w, j_row-w) = mean(temp(~isnan(temp)));
      end
    end
    
%Code to call your function    
img = imread('vandy.png');
output = blur(img,2);
imshow(output);
