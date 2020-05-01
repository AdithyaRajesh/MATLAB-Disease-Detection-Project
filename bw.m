A=imread('psoriasis.jpg');
imshow(A)

f=im2bw(A,0.35);

imshow(f)

g=bwarea(f);
% imshow(g)
