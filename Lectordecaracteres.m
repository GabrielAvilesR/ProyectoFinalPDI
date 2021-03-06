% Proyeco Final de PDI
warning off 
clc, close all, clear all

% Read image
imagen=imread('test\testcaseJOSE.png');
% Show image

figure(10);
       imshow(imagen);
if size(imagen,3)==3 
    imagen=rgb2gray(imagen);
end
%figure(2);
imshow(imagen);
imagen = medfilt2(imagen,[10 10]);
%figure(3);
imshow(imagen);
imagen = adapthisteq(imagen);
%figure(4);
imshow(imagen);
imagen = imadjust(imagen);
%figure(5);
imshow(imagen);
                      
threshold = graythresh(imagen);
%figure(6);
imshow(imagen);

imagen = imcrop(imagen,[20, 12, 725, 128]);

imagen =~im2bw(imagen,threshold);
%figure(7);
imshow(imagen);

imagen = bwareaopen(imagen,30);
word=[ ];
re=imagen;
load templates
global templates
num_letras=size(templates,2);
while 1
    [fl re]=lines(re);
    imgn=fl;
    [L Ne] = bwlabel(imgn);    
    for n=1:Ne
        [r,c] = find(L==n);
        n1=imgn(min(r):max(r),min(c):max(c));  
        img_r=imresize(n1,[42 24]);
        letter=compare_letters(img_r,num_letras);
        word=[word letter];
    end
                word
    word=[ ];
        break
end    


clear all
