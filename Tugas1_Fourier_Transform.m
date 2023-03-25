% Assignment 1 - Pengolahan Sinyal dan Multimedia
% Rendy Christian - 2006529695

clc;                % clear the command window.
close all;          % close all figures
imtool close all;   % close all imtool figures.
clear;              % erase all existing variables.
warning off

%% import image and convert img value as grayscale
img = imread("butterfly_512.jpg");
img = rgb2gray(img);

%% Create a 2D Filter Matrix; Apply 2D Filter H to the given imag
H = [1 1 1; 1 1 1; 1 1 1]./9; % 2D filter matrix
filteredImg = imfilter(img, H);

%% A. Compute 2D DTFT of the given image
fft_Img  = fftshift(fft2(img));
fft_filteredImg = fftshift(fft2(filteredImg));

%% Image real (u) and imaginary (v) component after DTFT
v_H  = imag(fft_filteredImg);   %img component when u = 0
u_H  = real(fft_filteredImg);   %img component when v = 0
v_H1 = 0.5*u_H+ v_H;            %img component when u = 1/2
u_H1 = u_H + v_H.*0.5j;         %img component when v = 1/2

%% Plot magnitude and phase of the original image
figure('name', 'Input and Output Filtered Image')
subplot(2,3,1);
imshow(img); title("Original Image (input)");
axis on

subplot (2,3,2);
imshow(mat2gray(log(abs(fft_Img)))); title('Magnitude of Original Image')
axis on
colorbar

subplot(2,3,3)
imshow(mat2gray(angle(fft_Img))); title('Phase of Original Image')
axis on

%% Plot magnitude and phase of the filtered image
subplot(2,3,4);
imshow(filteredImg); title("Filtered Image");
axis on

subplot(2,3,5)
imshow(mat2gray(log(abs(fft_filteredImg)))); title('Magnitude of Filtered Image')
axis on
colorbar

subplot(2,3,6)
imshow(mat2gray(angle(fft_Img))); title('Phase of Filtered Image')
axis on

sgt = sgtitle('Magnitude and Phase of the Original and Filtered Image');
sgt.FontSize = 14;
%% B. Sketch magnitude of the fourier transform when v = 0 and v = 1/2
figure('name', 'Magnitude of DTFT as a function of u and v') 

%when v = 0
subplot (2,2,1)
imshow(log(abs(u_H)), []); title("At v = 0")
colorbar
axis on
%when v = 1/2
subplot(2,2,2)
imshow(log(abs(u_H1)), []); title("At v = 1/2");
colorbar
axis on

%% Sketch magnitude of the fourier transform when u = 0 and u = 1/2
%when u = 0
subplot(2,2,3)
imshow(log(abs(v_H)), []); title("At u = 0");
colorbar
axis on
%when u = 1/2
subplot(2,2,4)
imshow(log(abs(v_H1)), []); title("At u = 1/2");
colorbar
axis on 

sgt = sgtitle('Image Magnitude of DTFT as a Function of U and V');
sgt.FontSize = 14;
%% Show the frequency response of H filter
figure('name', 'Frequency Response')
colormap(parula(64))
freqz2(H);
sgt = sgtitle('Frequency Response of H Filter');
sgt.FontSize = 14;