atomsLoad('IPCV');
img = imread('D:\Download\DSP\DSP\LAB4\Ex5.jpeg');

// Chuyển đổi ảnh màu sang ảnh xám
img_gray = rgb2gray(img);
figure(0);
imshow(img_gray);
title('Anh xam');

//histogram
figure(1);
[count, cells] = imhist(img_gray);
plot2d3('gnn', cells, count);
title('Bieu do Histogram');

//blur
h_blur = fspecial('average', 100);
img_blurred = imfilter(img, h_blur);

figure(2);
imshow(img_blurred);
title('Anh da lam mo');
