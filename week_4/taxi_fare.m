%Taxi Fare
function fare = taxi_fare(d,t)
    fare = 5 + (ceil(d)-1)*2 + ceil(t)*0.25;
    
%Code to call your function
fare = taxi_fare(3.5,2.25)
