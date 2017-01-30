% delete(A)
% delete(oi)
A = videoinput('winvideo',2,'YUY2_320x240');
set(A,'ReturnedColorSpace','rgb');
% oi = VideoWriter('intruders.avi');
% oi.open;
alarm = [sawtooth(2*pi*3135.96*(0:1/20000:0.1744)) sawtooth(2*pi*1567.98*(0:1/20000:0.1744))];
start(A)
preview(A)
pause(2);
t1 = getsnapshot(A);

i = 1;
while(i < 100)
    t2 = getsnapshot(A);
%     diff = sum(sum(sum(abs(t1-t2))));
    diff = uint8(abs(t1-t2)-80);%.*abs(t1-t2);
    imshow(diff)
%     if (diff > 555000)
%         sound(alarm)
%         writeVideo(oi,im2frame(t2));
%         i = i+1;
%     end
end

% oi.close;
% movie(oi)


    