function [ PSNR ] = calcPSNR ( MSE )
% Function to Calculate the PSNR(Peak Signal to Noise Ratio)
% MSE is passed as input to the function
% MAXI is the maximum posible pixel value of the image 
%      for uint8 MAXI = 255
%      for double MAXI = 1.0

MAXI = 1.0;

PSNR = 10.0*(log10((MAXI*MAXI)/MSE));

end
