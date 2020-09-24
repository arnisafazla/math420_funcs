function output = substitute(text)
    %we convert the plaintext to a list of numbers
    plt = double(text);
    %as before we identify numbers 0,1,..25 with a,b,c,..
    plt = plt - 97;
    %we save a random sequence of 26 numbers (0:25) kf: random letter list.
    kf = randperm(26) - 1;
    %substitute each letter to their random corresponding letters specified in
    %kf.
    cpt1 = kf(plt + 1);
    cpt2 = cpt1 + 97;
    output = char(cpt2);
end

