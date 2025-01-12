% Created by Utkarsh Ghore (BT22ECI032)

clc;
clear all;
close all;

% Read the image
I = imread('Utkarsh.png'); % I -> Original color image

% For only red color
Ir = I;            % Ir -> Image with only the red color
Ir(:,:,2) = 0;     % Set green channel to 0
Ir(:,:,3) = 0;     % Set blue channel to 0

% For only green color
Ig = I;            % Ig -> Image with only the green color
Ig(:,:,1) = 0;     % Set red channel to 0
Ig(:,:,3) = 0;     % Set blue channel to 0

% For only blue color
Ib = I;            % Ib -> Image with only the blue color
Ib(:,:,1) = 0;     % Set red channel to 0
Ib(:,:,2) = 0;     % Set green channel to 0

% Converting the color image into a grayscale image using the inbuilt function
IG = rgb2gray(I);  % IG -> Grayscale image created from the original image

% Display the images in subplots
subplot(2,3,1), imshow(I), title('Original Image');
subplot(2,3,2), imshow(IG), title('Grayscale Image');
subplot(2,3,3), imshow(Ir), title('only Red Color');
subplot(2,3,4), imshow(Ig), title('only Green Color');
subplot(2,3,5), imshow(Ib), title('only Blue Color');