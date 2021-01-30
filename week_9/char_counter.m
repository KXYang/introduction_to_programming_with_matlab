%Function
function charnum = char_counter(file_name, character)
    
    text = fopen(file_name, 'r');
    
    if text < 0 || ~ischar(character)
        charnum = -1;
        return;
    end
    
    m = fscanf(text, '%c');
    charnum = count(m,character);
end

%Code to call your function
type('simple.txt')
charnum = char_counter('simple.txt','a')
charnum = char_counter('Frankenstein-by-Shelley.txt','?')
