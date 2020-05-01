A=imread('psoriasis.jpg');
se=strel('line' ,11,90);
A2=imdilate(A,se);
imshow(A),title('orginal')
figure,imshow(A2),title('dilated')
