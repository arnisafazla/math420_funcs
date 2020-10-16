Project: math420_funcs

Functions to be used in introduction to cryptography course.


1. shift: Shift the letters of the given text shift_amount times to the right. shift(text, shift_amount). For example shift('best', 3) ==> 'ehvw'
  
2. substitute: Have a random permutation of letters, change the letters of the given text with their correspondent letter in the random sequence. For example if random sequence = 'vprfjecsqtdmouazynihlkgwbx', then substitute('best') ==> 'pjih'

3. change_base: change_base(k, a, b) => change the base of int k from a to b. change_base(10, 10, 2) => 1010 (int)
