I = imread('moon.tif');
m = fspecial('unsharp');
I2 = imfilter(I,m);

figure,
subplot(1,2,1), imshow(I), title('original');
subplot(1,2,2), imshow(I2), title('filtered');