I = imread('cameraman.tif');
Im=im2double(I);
scale =10;
Im = Im + (randn(256)/scale);

figure,
subplot(1,2,1), imshow(I), title('original');

figure,
exercise1(Im, 3);
figure,
exercise1(Im, 5);
figure,
exercise1(Im, 7);