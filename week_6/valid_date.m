%Lesson 5 Wrap-up
%Function
function valid = valid_date(year, month, day)
  
  test_year = ~isscalar(year) || year < 1 || year ~= fix(year);
  test_month = ~isscalar(month) || month < 1 || month ~= fix(month) || month > 12;
  test_day = ~isscalar(day) || day < 1 || day ~= fix(day) || day > 31;

  check = test_year || test_month || test_day;

  if check == 1
      valid = ~check;
  elseif check== 0
      if month == 2
          if rem(year,4) == 0 && rem(year,100) ~= 0
          valid = day <= 29;
          elseif rem(year,400) == 0
          valid = day <= 29;
          else 
          valid = day <= 28;
          end
      elseif month ~= 2
      valid = (sum(month == [1 3 5 7 8 10 12]) >= 1 && day <= 31) ||...
      (sum(month == [4 6 9 11]) >= 1 && day <= 30);
      end
end

%Code to call your function
valid = valid_date(2018,4,1)
valid = valid_date(2018,4,31)
