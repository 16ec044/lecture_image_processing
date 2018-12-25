# 課題５レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  

ORG=imread('skytree.png'); % 原画像の入力  
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換  
imagesc(ORG); colormap(gray); colorbar; axis image;% 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/5-1.png)  
図１　グレイスケール原画像  
___
判別分析法により２値化を行う  
H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納  
myu_T = mean(H);  
max_val = 0;  
max_thres = 1;  
for i=1:255  
    C1 = H(1:i); %ヒストグラムを2つのクラスに分ける  
    C2 = H(i+1:256);  
    n1 = sum(C1); %画素数の算出  
    n2 = sum(C2);  
    myu1 = mean(C1); %平均値の算出  
    myu2 = mean(C2);  
    sigma1 = var(C1); %分散の算出  
    sigma2 = var(C2);  
    sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出  
    sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出  
    if max_val<sigma_B/sigma_w  
        max_val = sigma_B/sigma_w;  
        max_thres =i;  
    end  
end  
IMG = ORG > max_thres;  
imagesc(IMG); colormap(gray); colorbar;axis image;  
２値化を行った画像を図２に示す。
![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/5-2.png)  
図2　判別分析法による２値画像  