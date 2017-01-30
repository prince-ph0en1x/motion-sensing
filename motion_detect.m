clc
mov = VideoReader('D:\IMPORTANT\Programs New\walk.avi');
emp = VideoReader('D:\IMPORTANT\Programs New\empty.avi');
% movie(mov)
init = read(emp,1);
n = mov.NumberOfFrames;

for i = 450 : 600
%     x = read(mov,i);
%     se = strel('disk',5);
%     y = im2bw(x);
%     imerode(x,se);
    p =(sum(read(mov,i)-read(mov,i-1),3))<70;
    [r c] = find(p == 0);
    
    imshow(p);% | ~(sum(read(mov,i)-read(mov,i-1),3))>100);
%     text(ceil(sum(c)/size(c,1)),ceil(sum(r)/size(r,1)),'');
    
end