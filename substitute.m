function [output,kf] = substitute(text)
    %we convert the plaintext to a list of numbers
    plt = double(text);
    i = 1;
    
    while i <= length(plt)
        %if ascii codes are not between 97 and 122
        if plt(i) < 97 || plt(i) > 122
            %if they are capital letters then convert them to lower case
            if plt(i) >= 65 && plt(i) <= 90
                plt(i) = plt(i) + 32;
            %if they are not letters then delete
            else
                plt(i) = [];
                i = i - 1;
            end
        end
        i = i + 1;
    end
       
    %as before we identify numbers 0,1,..25 with a,b,c,..
    plt = plt - 97;

    %we save a random sequence of 26 numbers (0:25) kf: random letter list.
    kf = randperm(26) - 1;
    %substitute each letter to their random corresponding letters specified in
    %kf.
    cpt1 = kf(plt + 1);
    cpt2 = cpt1 + 97;
    output = char(cpt2);
    kf = char(kf + 97);
end

