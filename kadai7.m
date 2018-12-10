% 課題7　ダイナミックレンジの拡大
% 画素のダイナミックレンジを０から２５５にせよ． 
% 下記はサンプルプログラムである． 
% 課題作成にあたっては「Lenna」以外の画像を用いよ． 
% 例
clear; close all;
ORG = imread('skytree.png'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換

%---ダイナミックレンジを240までにする------
mask=ORG>240; %240以上の値を見つけるマスク
ORG(mask)=240; %240以上の値を240にする
%----------------------------------------
imagesc(ORG); colormap(gray); colorbar;axis image; % 画像の表示
pause;
imhist(ORG); % 濃度ヒストグラムを生成、表示
pause;
ORG = double(ORG);
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; axis image; % 画像の表示
pause;
ORG = uint8(ORG); % この行について考察せよ
    %double値でダイナミックレンジを計算し、unit8で255までの値に変換している。
imhist(ORG); % 濃度ヒストグラムを生成、表示
