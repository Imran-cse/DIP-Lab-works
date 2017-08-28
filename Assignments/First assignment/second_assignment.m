fileId = fopen('D:\Documents\DIP Lab\crossroad.dat','r');
a = fread(fileId,[580 435], '*uint8');fclose all;
b = imrotate(a, 270);
b = uint8(b);
i1  = b./8;
i2  = b./16;
i3  = b./32;
i4  = b./64;
i5  = b./128;
figure,
subplot(2,3,1), imshow(b), title('Original');
subplot(2,3,2), imshow(mat2gray(i1)), title('5 bit');
subplot(2,3,3), imshow(mat2gray(i2)), title('4 bit');
subplot(2,3,4), imshow(mat2gray(i3)), title('3 bit');
subplot(2,3,5), imshow(mat2gray(i4)), title('2 bit');
subplot(2,3,6), imshow(mat2gray(i5)), title('1 bit');