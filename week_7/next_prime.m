%Function
function k = next_prime(n)
    temp = n + 1;
    while ~isprime(temp)
        temp = temp + 1;
    end
    k = temp;
end

%Code to call your function
k = next_prime(2)
