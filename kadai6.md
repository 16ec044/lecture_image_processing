# 課題6レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/6-1.png)  
図１　グレイスケール原画像  
___
まずしきい値128で二値化を行う  
IMG = ORG>128; % 128による二値化  
imagesc(IMG); colormap(gray); colorbar; axis image;% 画像の表示  
結果を図２に示す。
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/6-2.png)  
図２　しきい値128による二値化  
___
次にディザ法による二値化を行う  
IMG = dither(ORG); % ディザ法による二値化  
imagesc(IMG); colormap(gray); colorbar; axis image;% 画像の表示  
図３に結果を示す。
![図３](https://github.com/16ec044/lecture_image_processing/blob/own/image/6-3.png)  
図３　ディザ法による二値化  