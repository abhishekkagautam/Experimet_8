%program 1
I = imread('test1.png');
J = imnoise(I,'salt & pepper',0.02);
J = rgb2gray(J);
imshow(J)
%%
%program 2
Kaverage = filter2(fspecial('average',3),J)/255;
figure
imshow(Kaverage)
%%
%program 3
I = imread('test1.png');
J_gauss = imnoise(rgb2gray(I),'gaussian',0,0.025);
figure
imshow(J_gauss)

K = wiener2(J_gauss,[3 3]);
figure
imshow(K)
%%
%program 4
med_filtered_image = medfilt2(J);
figure
imshow(med_filtered_image)
