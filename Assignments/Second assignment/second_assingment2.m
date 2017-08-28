RGB=imread('D:\Documents\DIP Lab\pr22_orginalspine.jpg');
I=rgb2gray(RGB);
I=im2double(I); 
[m n] = size(I);
c = 2;
g =[0.5 0.7 0.9 1 2 3 4 5 6];

for r=1:length(g)
for p = 1 : m
    for q = 1 : n
        I3(p, q) = c * I(p, q).^ g(r);  
    end
end
figure, imshow(I3);title('Power-law transformation');xlabel('Gamma='),xlabel(g(r));
end