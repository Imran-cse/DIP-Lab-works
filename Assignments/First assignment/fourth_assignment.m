i = imread('D:\Documents\DIP Lab\flip.jpg');

hsvImg = rgb2hsv(i);
hue = hsvImg(:, :, 1) * 360;
hsvImg(:,:,1) = (mod(hue + 120, 360)) / 360;
img120 = hsv2rgb(hsvImg);

hsvImg(:,:,1) = (mod(hue - 120, 360)) / 360;
imgneg120 = hsv2rgb(hsvImg);

[h, w, d] = size(i);
rgb120 = uint8(zeros(h, w, d));
rgb120(:, :, 1) = i(:, :, 3);
rgb120(:, :, 2) = i(:, :, 1);
rgb120(:, :, 3) = i(:, :, 2);

rgbneg120 = uint8(zeros(h, w, d));
rgbneg120(:, :, 1) = i(:, :, 2);
rgbneg120(:, :, 2) = i(:, :, 3);
rgbneg120(:, :, 3) = i(:, :, 1);

subplot 231; imshow(i);title('Original');
subplot 232;imshow(img120);title('120 Degree Rotated HSV');
subplot 233; imshow(imgneg120), title('-120 Degree Rotated HSV');
subplot 235;imshow(rgb120), title('120 Degree Rotated RGB');
subplot 236;imshow(rgbneg120), title('-120 Degree Rotated RGB')