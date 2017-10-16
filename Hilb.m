function [ H ] = Hilb( n )
%HILB Returns matrix of size (2^n)x(2^n)
%   with indexes according to order of hilbert curve.
%   e.g. Hilb(2) = 
%   1  2 15 16
%   4  3 14 13
%   5  8  9 12
%   6  7 10 11

if n<0; error('Input must be nonnegative integer'); end

if n==0
    H=1;
    return
end

N=4^(n-1);
h=Hilb(n-1);
A = h';
A2 = h + N;
A3 = h + 2*N;
A4 = rot90(h + 3*N,2)';

H = [A A4; A2 A3];

end

