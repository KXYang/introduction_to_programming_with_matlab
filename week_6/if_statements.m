%Practice if-statements
%Function
function out = picker(condition, in1, in2)
  if condition == 1
  out = in1;
  else 
  out = in2;
end

%Code to call your function
out = picker(true,1,2)
out = picker(false,1,2)
