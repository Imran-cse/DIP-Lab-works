function exercise1(I, size)
    kernelx = zeros(size);
    kerneld1 = zeros(size);

    kernelx(ceil(size./2), 1:size) = 1;
    kernely = rot90(kernelx);

    for i=1:1:size
        for j=1:1:size
             if i==j
                 kerneld1(i, j) = 1;
             end
        end
    end
    kerneld2 = rot90(kerneld1);
    Ix = imfilter(I, kernelx/size);
    Iy = imfilter(I, kernely/size);
    Id1 = imfilter(I, kerneld1/size);
    Id2 = imfilter(I, kerneld2/size);

    subplot(2,3,1), imshow(I), title('original');
    subplot(2,3,2), imshow(Ix), title('filtered1');
    subplot(2,3,3), imshow(Iy), title('filtered2');
    subplot(2,3,4), imshow(Id1), title('filtered3');
    subplot(2,3,5), imshow(Id2), title('filtered4');
end