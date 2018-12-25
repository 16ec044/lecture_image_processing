# 課題１０レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/10-1.png)  
図１　グレイスケール原画像  
___
輪郭抽出を行う。  
プレウィット法で行った場合。  
IMG = edge(ORG,'prewitt'); % エッジ抽出（プレウィット法）  
imagesc(IMG); colormap('gray'); colorbar;axis image;% 画像表示  
結果を図２に示す。  
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/10-2.png)  
図２　プレウィット法による輪郭抽出  
___
ソベル法で輪郭抽出を行った場合。  
IMG = edge(ORG,'sobel'); % エッジ抽出（ソベル法）  
imagesc(IMG); colormap('gray'); colorbar;axis image;% 画像表示  
結果を図３に示す。  
![図３](https://github.com/16ec044/lecture_image_processing/blob/own/image/10-3.png)  
図３　ソベル法による輪郭抽出  
___
キャニー法で輪郭抽出を行った場合。  
IMG = edge(ORG,'canny'); % エッジ抽出（キャニー法）  
imagesc(IMG); colormap('gray'); colorbar;axis image;% 画像表示  
結果を図４に示す。  
![図４](https://github.com/16ec044/lecture_image_processing/blob/own/image/10-4.png)  
図４　キャニー法による輪郭抽出  
