# 課題３　レポート  

「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/3-1.png)  
図１　グレイスケール原画像  
___
輝度値が64以上の画素を1，その他を0に変換する  
IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換  
imagesc(IMG); colormap(gray); colorbar; axis image;  
しきい値が64の白黒濃淡画像を図２に示す。  
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/3-2.png)  
図２　しきい値64の画像  
___
同様に96,128,192をしきい値とする画像を表示し、結果を図３～５に示す。  
![図３]((https://github.com/16ec044/lecture_image_processing/blob/own/image/3-3.png))
図３　しきい値が96の画像  
___
![図４]((https://github.com/16ec044/lecture_image_processing/blob/own/image/3-4.png))
図４　しきい値が128の画像  
___
![図５]((https://github.com/16ec044/lecture_image_processing/blob/own/image/3-5.png))
図５　しきい値が192の画像  