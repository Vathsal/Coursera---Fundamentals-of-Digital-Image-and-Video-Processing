set(0,'DefaultFigureWindowStyle','docked') % docks the figure window and shows diff figures in diff tabs 

clc;
clear all;
close all;

figure;

% Read the original image , convert it from uint8 to double , plot
OrigImg = im2double( imread('lena.gif'));
subplot(2 , 2 , 1 );
imagesc(OrigImg);
colormap gray;
title('Original Image');
axis image; %same as axis equal except that the plot box sits tightly around the data


%%
% Generate a LPF amtrix of given specification
LPF1 = repmat(1/9 , 3, 3); % LPF1 = ones(3,3) *1/9 ; % Alternative faster method

% Compute the filtered image and plot
FiltImg = imfilter(OrigImg,LPF1, 'replicate');
subplot(2 , 2 , 2 );
imagesc(FiltImg);
colormap gray;
title('Image Filtered with 3x3 LPF ');
axis image;

%Use the function defined to calculate the Mean Square Error
MSE1 = calcMSE ( OrigImg , FiltImg);
fprintf('MSE for image filtered by 3x3 LPF = %f\n',MSE1 );

% Use the function defined to calculate the Peak Signal to Noise Ratio
PSNR1 = calcPSNR( MSE1 );
fprintf('PSNR for the image filtered by 3x3 LPF = %0.2f \n \n' , PSNR1 );

%%
%  repeat the above for a different LPF specification

LPF2 = repmat(1/25 , 5, 5);

FiltImg = imfilter(OrigImg,LPF2 ,'replicate');
subplot(2 , 2 , 4 );
imagesc(FiltImg);
colormap gray;
title('Image filtered with 5x5 LPF');
axis image;

MSE2 = calcMSE(OrigImg, FiltImg);
fprintf('MSE for image filtered by 5x5 LPF = %f\n',MSE2 );

PSNR2 =  calcPSNR( MSE2 );
fprintf('PSNR for the image filtered by 5x5 LPF = %0.2f \n' , PSNR2);

