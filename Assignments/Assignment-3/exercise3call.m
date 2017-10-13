I = imread('miranda.tif');

I2 = imnoise(I, 'salt & pepper');

image = exercise3(I2, 3, 0);

figure,
subplot(1,3,1), imshow(I), title('original');
subplot(1,3,2), imshow(I2), title('noised'); 
subplot(1,3,3), imshow(image), title('filtered');