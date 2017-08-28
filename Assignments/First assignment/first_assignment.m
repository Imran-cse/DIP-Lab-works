fileId = fopen('D:\Documents\DIP Lab\crossroad.dat','r');
a = fread(fileId,[580 435],'*uchar');
b = imrotate(a, 270);
figure, subplot(2,3,1), imshow(b), title('Original image');

i1 = imfilter(b, ones(2,2)/4);
i2 = imfilter(b, ones(4,4)/16);
i3 = imfilter(b, ones(8,8)/64);
i4 = imfilter(b, ones(16,16)/256);
subplot(2,3,2), imshow(i1), title('2x2');
subplot(2,3,3), imshow(i2), title('4x4');
subplot(2,3,4), imshow(i3), title('8x8');
subplot(2,3,5), imshow(i4), title('16x16');
figure, subplot(2,3,1), plot(b), title('Original image');
subplot(2,3,2), plot(i1), title('2x2');
subplot(2,3,3), plot(i2), title('4x4');
subplot(2,3,4), plot(i3), title('8x8');
subplot(2,3,5), plot(i4), title('16x16');