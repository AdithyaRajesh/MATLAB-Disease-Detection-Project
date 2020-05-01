A=imread("psoriasis.jpg");
[L,sides]=imsegkmeans(single(A(:,:,1)),5);
b=labeloverlay(A,L);
imshow(b);