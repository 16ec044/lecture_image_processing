# 課題７レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/7-1.png)  
図１　グレイスケール原画像  
___
今回使用した画像がダイナミックレンジを全て使っているので人為的に上限を設ける。ここでは240以上の値を240に置き換えた。  
mask=ORG>240; %240以上の値を見つけるマスク  
imagesc(mask); colormap(gray); colorbar;axis image; %マスクの表示  
pause;  
ORG(mask)=240; %240以上の値を240にする  
240以上の値をとっていた部分を図２に示す。  
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/7-2.png)  
図２　240以上をとっていた部分  
___
240のリミッターをかけた状態の画像を表示する。  
imagesc(ORG); colormap(gray); colorbar;axis image; % 画像の表示
結果を図３に示す。  
![図３](https://github.com/16ec044/lecture_image_processing/blob/own/image/7-3.png)  
図３　リミッターをかけた画像  
___
240のリミッターをかけた状態のヒストグラムを見る。  
imhist(ORG); % 濃度ヒストグラムを生成、表示  
ヒストグラムを図４に示す。
![図４](https://github.com/16ec044/lecture_image_processing/blob/own/image/7-4.png)  
図４　リミッターをかけたときの濃度ヒストグラム  
___
濃度値の最大値と最小値を得て、ダイナミックレンジを拡張する。  
ORG = double(ORG);  
mn = min(ORG(:)); % 濃度値の最小値を算出  
mx = max(ORG(:)); % 濃度値の最大値を算出  
ORG = (ORG-mn)/(mx-mn)*255;  
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示  
結果の画像を図５に示す。  
![図５](https://github.com/16ec044/lecture_image_processing/blob/own/image/7-5.png)  
図５　ダイナミックレンジを広げた画像  
___
ダイナミックレンジの計算にはdouble値を用いていたため、unit8で8bitの値に変換しヒストグラムを表示する。  
ORG = uint8(ORG); % この行について考察せよ  
    %double値でダイナミックレンジを計算し、unit8で255までの値に変換している。  
imhist(ORG); % 濃度ヒストグラムを生成、表示  
ダイナミックレンジを広げた後のヒストグラムを図６に示す。
![図６](https://github.com/16ec044/lecture_image_processing/blob/own/image/7-6.png)  
図６　ダイナミックレンジを広げた後の濃度ヒストグラム  