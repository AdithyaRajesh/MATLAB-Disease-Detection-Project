img = imread('psoriasis.jpg');

bw=im2bw(img, 0.6);
label= bwlabel(bw);

stats = regionprops(label, 'Solidity', 'Area');

density = [stats.Solidity];
area= [stats.Area];

high_dense_area = density>0.1;
max_area = max(area(high_dense_area));
pimple_label = find(area ==max_area);
pimple = ismember(label, pimple_label);

se = strel('Square',1);
pimple = imdilate(pimple,se);

figure(2)

subplot(1,3,1)
imshow(img,[])
title('Hair')

subplot(1,3,2)
imshow(pimple,[])
title('Psoriasis family disease alone')

[B,L] = bwboundaries(pimple,'noholes');
subplot(1,3,3)
imshow(img,[])
hold on
for i= 1:length(B)
    plot(B{i}(:,2),B{i}(:,1), 'y', 'linewidth', 2)
end
title('Detected Psoriasis')
