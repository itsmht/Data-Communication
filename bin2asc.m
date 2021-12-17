function txt = bin2asc(dn)
%bin2asc Serial binary to ASCII to text conversion
% 8 bits per char , LSB first
% >> txt= bin2asc(dn) <<
% where dn is binary input sequence
% txt is output text string
L=length(dn); %Length of input string
L8=8*floor(L/8); %Multiple of 8 Length
B=reshape(dn(1:L8),8,L8/8); %Cols of B are bits of chars
p2=2.^(0:7); %power of 2
dec=p2*B; %Binary to decimal conversion
txt=char(dec); %ASCII (decimal) to txt
end
