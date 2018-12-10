#課題２レポート
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する

ORG=imread('skytree.png'); % 原画像の入力 
ORG = rgb2gray(ORG);%RGBからグレイスケールに変換
imagesc(ORG);colormap(gray);colorbar;axis image; % 画像の表示
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/2-1.png)
図１グレイスケール

原画像をに階調画像にするにはビット深度の半分をしきい値に0と1で分ければいい

IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;

２階調画像にした結果を図２に示す。

![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/2-2.png)  
図2 ２階調画像