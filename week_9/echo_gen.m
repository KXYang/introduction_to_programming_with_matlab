%Function
function output = echo_gen(input, fs, delay, gain)
    
    t = 1/fs;
    n = round(delay/t);
    
    input_1 = [input; zeros(n, 1)];
    input_2 = [zeros(n, 1); input.*gain];
    output = input_1 + input_2;
    
    p = max(abs(output));
    if p > 1
        output = output ./ p;
    end

%Code to call your function
% Load splat which adds y and Fs to the workspace
load splat
% Call echo_gen to create the new audio data
output = echo_gen(y, Fs, 0.25, 0.6);
% The time between points is 1/Fs;
dt = 1/Fs;
% Plot the original sound
plot(0:dt:dt*(length(y)-1), y)
% Plot the new data to see visualize the echo
figure
plot(0:dt:dt*(length(output)-1), output)

% sound (output, Fs) % Uncomment in MATLAB to listen to the new sound data
