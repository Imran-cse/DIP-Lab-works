fileId = fopen('D:\Documents\DIP Lab\standford.dat', 'r');
a = fread(fileId, [580 435], '*uint8');
b = imrotate(a, 270);

imgblue = zeros(435, 580, 3);
imgblue(:, :, 3) = mat2gray(b);

imgnew = uint8(zeros(435, 580, 3));
for i = 1: 435
    for j = 1: 580
        if b(i, j) <= 100
            imgnew(i, j, 1) = 0;
            imgnew(i, j, 2) = 255;
            imgnew(i, j, 3) = 0;
            
        elseif b(i, j) <= 200
            imgnew(i, j, 1) = 255;
            imgnew(i, j, 2) = 255;
            imgnew(i, j, 3) = 0;
            
        else
            imgnew(i, j, 1) = 255;
            imgnew(i, j, 2) = 255;
            imgnew(i, j, 3) = 255;
            
        end
    end
end

figure,subplot(1,3,1), imshow(b), title('Original Image');
subplot(1,3,2), imshow(imgblue), title('Blue version');
subplot(1,3,3), imshow(imgnew), title('Other version');