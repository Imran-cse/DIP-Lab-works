a = imread('D:\Documents\DIP Lab\pr22_orginalspine.jpg');

g=rgb2gray(a);
c=input('Enter the constant value, c = ');
[M,N]=size(g);
for x = 1:M
    for y = 1:N
        m=double(g(x,y));
        z(x,y)=c.*log10(1+m);
    end
end
figure,
subplot 121, imshow(a), title('Original');
subplot 122, imshow(z), title('Enhanced');