c = imread('C:\Users\王廷瑋\Downloads\hw3_black.jpg');
gray = rgb2gray(c);
%% ----sobel matrix----------------------------------------------------------
Sy = [-1,-2,-1;0,0,0;1,2,1];
Sx = -(Sy');
%---x grad , y grad--------------------------------------------------------
x_grad_sob = filter2(Sx,gray);
y_grad_sob = filter2(Sy,gray);
%--grad magnitude----------------------------------------------------------
grad_mag_sob = sqrt(x_grad_sob.^2 + y_grad_sob.^2);

minimum = min(min(grad_mag_sob));
maximum = max(max(grad_mag_sob));
delta_sob = maximum - minimum;
grad_mag_sob = round((grad_mag_sob - minimum)*255 / delta_sob);
imshow(uint8(grad_mag_sob));
%% ----prewit matrix-------------------------------------------------------------
Py = [-1,-1,-1;0,0,0;1,1,1];
Px = -(Py');
%---x grad , y grad--------------------------------------------------------
x_grad_pre = filter2(Px,gray);
y_grad_pre = filter2(Py,gray);
%--grad magnitude----------------------------------------------------------
grad_mag_pre = sqrt(x_grad_pre.^2 + y_grad_pre.^2);

minimum_pre = min(min(grad_mag_pre));
maximum_pre = max(max(grad_mag_pre));
delta_pre = maximum_pre - minimum_pre;
grad_mag_pre = round((grad_mag_pre - minimum_pre)*255 / delta_pre);
figure;
imshow(uint8(grad_mag_pre));
%% ----robin matrix-------------------------------------------------------------
Rx = [1,0;0,-1];
Ry = [0,1;-1,0];
%---x grad , y grad--------------------------------------------------------
x_grad_rob = filter2(Rx,gray);
y_grad_rob = filter2(Ry,gray);
%--grad magnitude----------------------------------------------------------
grad_mag_rob = sqrt(x_grad_rob.^2 + y_grad_rob.^2);

minimum_rob = min(min(grad_mag_rob));
maximum_rob = max(max(grad_mag_rob));
delta_rob = maximum_rob - minimum_rob;
grad_mag_rob = round((grad_mag_rob - minimum_rob)*255 / delta_rob);
figure;
imshow(uint8(grad_mag_rob));
%% ----Frei - Chen matrix-------------------------------------------------------------
Fy = [-1,-sqrt(2),-1;0,0,0;1,sqrt(2),1];
Fx = -(Fy');
%---x grad , y grad--------------------------------------------------------
x_grad_fre = filter2(Fx,gray);
y_grad_fre = filter2(Fy,gray);
%--grad magnitude----------------------------------------------------------
grad_mag_fre = sqrt(x_grad_fre.^2 + y_grad_fre.^2);

minimum_fre = min(min(grad_mag_fre));
maximum_fre = max(max(grad_mag_fre));
delta_fre = maximum_fre - minimum_fre;
grad_mag_fre = round((grad_mag_fre - minimum_fre)*255 / delta_fre);
figure;
imshow(uint8(grad_mag_fre));

