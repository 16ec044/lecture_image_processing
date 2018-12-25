# 課題９レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/9-1.png)  
図１　グレイスケール原画像  
___
まず原画像にノイズを付加する
ORG = imnoise(ORG,'salt & pepper',0.02); % ノイズ添付  
imagesc(ORG); colormap(gray); colorbar;axis image; % 画像の表示  
図２に結果を示す。  
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/9-2.png)  
図２　ノイズ付加画像
___
平滑化フィルタを範囲3でノイズ除去した場合。
IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar;axis image; % 画像の表示  
図３に結果を示す。  
![図３](https://github.com/16ec044/lecture_image_processing/blob/own/image/9-3.png)  
図３　平滑化フィルタによるノイズ除去
___
メディアンフィルタで範囲を3x3でノイズ除去した場合
IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去  
imagesc(IMG); colormap(gray); colorbar;axis image; % 画像の表示  
図４に結果を示す。  
![図４](https://github.com/16ec044/lecture_image_processing/blob/own/image/9-4.png)  
図４　メディアンフィルタによるノイズ除去
___
パラメータ[0,-1,0;-1,5,-1;0,-1,0]でフィルタを設計し、ノイズ除去を行った場合  
f=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計  
IMG = filter2(f,IMG,'same'); % フィルタの適用  
imagesc(IMG); colormap(gray); colorbar;axis image; % 画像の表示  
図５に結果を示す。  
![図５](https://github.com/16ec044/lecture_image_processing/blob/own/image/9-5.png)  
図５　設計したフィルタによるノイズ除去