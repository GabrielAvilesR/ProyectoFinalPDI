%CREATE TEMPLATES
%Letter
path = 'Templates\';
A=imread(path + 'A.bmp');B=imread(path + 'B.bmp');
C=imread(path + 'C.bmp');D=imread(path + 'D.bmp');
E=imread(path + 'E.bmp');F=imread(path + 'F.bmp');
G=imread(path + 'G.bmp');H=imread(path + 'H.bmp');
I=imread(path + 'I.bmp');J=imread(path + 'J.bmp');
K=imread(path + 'K.bmp');L=imread(path + 'L.bmp');
M=imread(path + 'M.bmp');N=imread(path + 'N.bmp');
O=imread(path + 'O.bmp');P=imread(path + 'P.bmp');
Q=imread(path + 'Q.bmp');R=imread(path + 'R.bmp');
S=imread(path + 'S.bmp');T=imread(path + 'T.bmp');
U=imread(path + 'U.bmp');V=imread(path + 'V.bmp');
W=imread(path + 'W.bmp');X=imread(path + 'X.bmp');
Y=imread(path + 'Y.bmp');Z=imread(path + 'Z.bmp');
%Number
one=imread(path + '1.bmp');  two=imread(path + '2.bmp');
three=imread(path + '3.bmp');four=imread(path + '4.bmp');
five=imread(path + '5.bmp'); six=imread(path + '6.bmp');
seven=imread(path + '7.bmp');eight=imread(path + '8.bmp');
nine=imread(path + '9.bmp'); zero=imread(path + '0.bmp');
%*-*-*-*-*-*-*-*-*-*-*-
letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];
number=[one two three four five...
    six seven eight nine zero];
character=[letter number];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24]);
save ('templates','templates')
clear all