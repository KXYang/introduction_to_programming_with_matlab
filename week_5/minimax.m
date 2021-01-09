%Minimum and Maximum
function [mmr, mmm] = minimax(M)
    v = max(M,[],2) - min(M,[],2);
    mmr = v';
    mmm = max(M(:)) - min(M(:));
    
 %Code to call your function
 [mmr, mmm] = minimax([1:4;5:8;9:12])
