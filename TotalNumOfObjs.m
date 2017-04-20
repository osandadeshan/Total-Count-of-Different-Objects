% Read in image, convert to black and white - Link comes from your image posted here
im = imread('/lBGU1.png');
imBW = im2bw(im, 0.3); %// Specify manual threshold of 0.3

% Invert intensities and fill in holes
imBWFilled = imfill(~imBW, 'holes');

% Count how many unique objects there are
[L,num] = bwlabel(imBWFilled);

% Show final image and display number of objects counted in the title
imshow(imBWFilled);
% title(['Total number of objects: ' num2str(num)]);

 % Counting the number of objects
   text(15,15,strcat('\color{yellow}Number of objects Found:',num2str(num)))
