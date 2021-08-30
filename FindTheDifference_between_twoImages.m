img1=imread("I1.jpg");


[H, W, L]=size(img1);


img2 = imread("I2.jpg");

img2resized=imresize(img2,[H W]);

diff=uint8(abs(img1-img2resized));

diffwhite=uint8(diff*255);


img1new=img1+diffwhite;

imshow(img1new);




%{
img1=imread("I1.jpg");
[H,W,L]=size(img1);
c=0;


  for i=1:L
      for x=1:H
          for y=1:W
              pix=img1(y:x:i);
              if pix & 1==0
                  c=c+1;
              end
          end
      end
  end
%}