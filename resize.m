a= imread('psoriasis.jpg');
a= imresize(a,0.1);
imshow(a);

detector= vision.CascadeObjectdetector

bbox = step(detector , a);
out = insertObjectAnnotation(a,'rectangle',bbox,'detector');
imshow(out);