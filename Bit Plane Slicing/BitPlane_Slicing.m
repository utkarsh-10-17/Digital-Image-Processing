% Created by Utkarsh Ghore (BT22ECI032)
% DIP lab 3 
% To Perform Bit Plane Slicing

% Read the input image
image = imread('Utkarsh.png');

% Convert the image to grayscale (if it is not already)
if size(image, 3) == 3
    image = rgb2gray(image);
end

% Get the size of the image
[rows, cols] = size(image);

% Create a figure to display the bit planes
figure;

% Loop through each bit plane (0 to 7)
for bit = 0:7
    % Extract the bit plane
    bit_plane = bitget(image, bit + 1);
    
    % Display the bit plane
    subplot(2, 4, bit + 1);
    imshow(logical(bit_plane));
    title(['Bit Plane ', num2str(bit)]);
end

% Save the figure containing all bit planes as a single image file
output_filename = 'All_BitPlanes.png';
saveas(gcf, output_filename);
