s = imread('psoriasis.jpg');
s = imresize(s,6);
imshow(s);

detector=vision.CascadeObjectDetector;

bbox=step(Detector,s);

out=insertObjectsAnnotation(s,'square',bbox,'detection');
imshow(out)