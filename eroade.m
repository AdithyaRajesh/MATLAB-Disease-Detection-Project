originalA=imread('psoriasis.jpg');
se=strel('line',11,90);
erodedA=imerode(originalA,se);
figure
imshow(originalA)
figure
imshow(erodedA)

