Project: math420_funcs

Functions to be used in introduction to cryptography course.

Cryptography Applications:

1. shift: Shift the letters of the given text shift_amount times to the right. shift(text, shift_amount). For example shift('best', 3) ==> 'ehvw'
  
2. substitute: Have a random permutation of letters, change the letters of the given text with their correspondent letter in the random sequence. For example if random sequence = 'vprfjecsqtdmouazynihlkgwbx', then substitute('best') ==> 'pjih'

3. mult_encrypt(p, k, plaintext, B) => p is a big prime, k is integer key smaller than p, B is bitsize of the text. Calls generate_m(plaintext, B) that converts plaintext into an integer m, then computes m * k % p. Returns int. Not secure against knkown plaintext attack. If it is not in Zp* (mod p); then gcd(c1, c2, ...cn) will probably give k or a small multiple of k. Not secure.

4. generate_m(plaintext, B) => Converts plaintext into binary and add 0s to the end. Then converts it into integer.

5. mult_decrypt(p, k, ciphertext) => returns int m = ciphertext * inverse(k) % p

6. reverse_m(n) => given integer n generates a string by converting n into binary and dividing it into chunks of 8 bits and finally converting them to chars.

7. vernams_pad(k, m) => k is an integer, m is plaintext. It converts k and m into binary and computes m xor k. Then returns it as a decimal integer. One time use. Vulnerable to known plaintext attack.

8. decrypt_vernams_pad(k, c) => k and c integers, it converts them into binary and computes c xor k. Then returns an integer. Then we can use reverse_m(n) to convert to a string.

Building Blocks:

9. change_base: change_base(k, a, b) => change the base of int k from a to b. change_base(10, 10, 2) => 1010 (int)

10. format_numbers: format_numbers(k, bits) => Add some zeros in the beginning to make it bits digits.

11. string(int)

Modular Arithmetic Functions:

12. gcdy(a, b) => au+bv = gcd(a, b). return u, v and g = gcd(a,b)

13. square_and_multiply(N, g, A) => g to the power A mod N

14. primitive_roots(p) => return array of primitive roots of p.

15. primes_with_this_mod(a, p) => function to find all primes with primitive root a, smaller than p

16. shank_steps(g, h, p) => DLP: Let g**x = h (mod p). Find x. An algorithm to find x (solution of DLP) in O(sqrt(N) * logN) time. N is ordg (mod p).

17. pollards(N, end) => Factoring N. Start with 10 and keep trying larger numbers for n.

18. MillerTest(n, a) => Miller Rabin Test. Returns true if a is a witness for compositeness of n, returns False otherwise

19. RiemannMillerTest(n) => Checks if a number is prime. If it is True, the number n is composite, else False

Elliptic Curve Fuctions:

20. double_and_multiply(P, E, n) => Find Q = n * P in E(Fp) or E

21. ECDLP(P, R, E) => Solve ECDLP R = n * P in E(Fp), given R and P find n.

22. lenstras(N, end) => Lenstra's factorization algorithm for elliptic curves. Factorize N. Increase end depending on how big N is. N > 10^5 then try end = 100 At some point it will give an error inverse of x does not exist; then p = gcd(x,N) and q = N/p.


