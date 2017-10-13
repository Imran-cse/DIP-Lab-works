function image = exercise3(old, n, threshold)

old = im2double(old);
[row, col] = size(old);
I = old;
p = ceil(n/2);

for i=p:1:row-(p-1)
    for j=p:1:col-(p-1)
        if old(i,j) >= threshold
            a = old(i-1:i+1, j-1:j+1);
            s = sort(a(:));
            median = s(ceil((n*n)/2));
            I(i, j) = median;
        end
    end
end
image = I;