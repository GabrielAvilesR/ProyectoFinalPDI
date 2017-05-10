%CREATE TEMPLATES
%Letter
path = 'Templates\';
A=imread('Temp\A.bmp');B=imread('Temp\B.bmp');
C=imread('Temp\C.bmp');D=imread('Temp\D.bmp');
E=imread('Temp\E.bmp');F=imread('Temp\F.bmp');
G=imread('Temp\G.bmp');H=imread('Temp\H.bmp');
I=imread('Temp\I.bmp');J=imread('Temp\J.bmp');
K=imread('Temp\K.bmp');L=imread('Temp\L.bmp');
M=imread('Temp\M.bmp');N=imread('Temp\N.bmp');
O=imread('Temp\O.bmp');P=imread('Temp\P.bmp');
Q=imread('Temp\Q.bmp');R=imread('Temp\R.bmp');
S=imread('Temp\S.bmp');T=imread('Temp\T.bmp');
U=imread('Temp\U.bmp');V=imread('Temp\V.bmp');
W=imread('Temp\W.bmp');X=imread('Temp\X.bmp');
Y=imread('Temp\Y.bmp');Z=imread('Temp\Z.bmp');
%Number
one=imread('Temp\1.bmp');  two=imread('Temp\2.bmp');
three=imread('Temp\3.bmp');four=imread('Temp\4.bmp');
five=imread('Temp\5.bmp'); six=imread('Temp\6.bmp');
seven=imread('Temp\7.bmp');eight=imread('Temp\8.bmp');
nine=imread('Temp\9.bmp'); zero=imread('Temp\0.bmp');



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
