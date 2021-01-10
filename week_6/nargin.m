%Variable Number of Input Arguments
%Function
function too_young = under_age(age, limit)
  if nargin == 1
      limit = 21;
end
too_young = age < limit;

%Code to call your function
too_young = under_age(18,18)
too_young = under_age(20)
