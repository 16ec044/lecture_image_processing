# 課題８レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/8-1.png)  
図１　グレイスケール原画像  
___
しきい値128で二値化する。  
IMG = ORG > 128; % 閾値128で二値化  
imagesc(IMG); colormap(gray); colorbar; axis image;% 画像の表示  
結果を図２に示す。  
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/8-2.png)  
図２　しきい値128の２値画像  
___
連結部分にラベルを付ける。
IMG = bwlabeln(IMG);  
imagesc(IMG); colormap(jet); colorbar; axis image;% 画像の表示  
![図３](https://github.com/16ec044/lecture_image_processing/blob/own/image/8-3.png)  
図３　連結要素をラベリングした画像  