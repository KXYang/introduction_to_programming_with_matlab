%Function
function admit = eligible(v, q)
  a = mean([v, q])>=92;
  b = v>88 && q>88;
  admit = a && b;
end

%Code to call your function
admit = eligible(96,89)
admit = eligible(88,99)
admit = eligible(92,91)
