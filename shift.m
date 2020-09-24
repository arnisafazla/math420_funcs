function shift(text,shift_amount)
    %turn the text to its ascii code
    arr = double(text);
    %ascii a = 97, so substract 97
    arr = arr - 97;
    %add the shift_amount, take mod 26 (no override)
    arr = mod (arr + shift_amount, 26);
    %back to proper ascii numbers
    arr = arr + 97;
    arr = char(arr)
end

