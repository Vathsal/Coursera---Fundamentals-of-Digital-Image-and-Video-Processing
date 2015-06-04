function [ MSE ] = calcMSE(image1, image2)
% Function to calculate the MSE (Mean Square Error)
% Usually both the images are of same size (N1xN2)

imgsize = size(image1);
N1 = imgsize(1);
N2 = imgsize(2);

SE = 0.0;
for n1 = 1 : N1
    for n2 = 1 : N2
       SE = SE + (image1(n1,n2) - image2(n1,n2)).^2; 
    end
end

MSE = SE / (N1*N2);

end


