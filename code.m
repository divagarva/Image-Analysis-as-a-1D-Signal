clc;
close all;
clear all;

% Step 1: Image Acquisition
img = imread('tiger.jpg'); % Load the image
figure;
imshow(img); % Display the original image
title('Original Image');

% Step 2: Convert the Image to Grayscale
grayImg = rgb2gray(img); % Convert the image to grayscale
figure;
imshow(grayImg);
title('Grayscale Image');

% Step 3: Reshape the Image into a 1D Signal
img1D = reshape(grayImg, 1, []); % Reshape the grayscale image into a 1D array (vector)
figure;
plot(img1D); % Plot the 1D signal
title('Image as 1D Signal');
xlabel('Pixel Index');
ylabel('Pixel Intensity');

% Step 4: Apply a 1D Filtering (Optional)
% Apply a 1D filter such as a moving average to smooth the signal
windowSize = 5;
smoothSignal = movmean(img1D, windowSize); % Moving average filter
figure;
plot(smoothSignal);
title('Smoothed 1D Signal');
xlabel('Pixel Index');
ylabel('Smoothed Pixel Intensity');

% Step 5: Perform Fourier Transform on 1D Signal
fftSignal = fft(double(img1D)); % Perform Fast Fourier Transform
magnitude = abs(fftSignal); % Magnitude of the FFT
figure;
plot(magnitude);
title('FFT of 1D Image Signal');
xlabel('Frequency Index');
ylabel('Magnitude');
