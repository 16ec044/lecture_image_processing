#課題２レポート  
「skytree」を原画像とする．この画像は縦512画像，横512画素による正方形のディジタルカラー画像を使用する  
  
ORG=imread('skytree.png'); % 原画像の入力  
ORG = rgb2gray(ORG);%RGBからグレイスケールに変換  
imagesc(ORG);colormap(gray);colorbar;axis image; % 画像の表示  
によって、原画像を読み込みグレイスケールに変換して表示した結果を図１に示す。  
![図１](https://github.com/16ec044/lecture_image_processing/blob/own/image/2-1.png)  
図１グレイスケール  


原画像を2階調画像にするにはビット深度の半分をしきい値に0と1で分ける。  

IMG = ORG>128;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  
  
２階調画像にした結果を図２に示す。  

![図２](https://github.com/16ec044/lecture_image_processing/blob/own/image/2-2.png)  
図２ ２階調画像  


４階調画像を作るには4等分する64,128,192をしきい値として0,1,2,3で重みをつけて表示する。  
IMG0 = ORG>64;  
IMG1 = ORG>128;  
IMG2 = ORG>192;  
IMG = IMG0 + IMG1 + IMG2;  
imagesc(IMG); colormap(gray); colorbar;  axis image;  

４階調画像を図３に示す。  

![図３](https://github.com/16ec044/lecture_image_processing/blob/own/image/2-3.png)  
図３　４階調画像  


８階調画像を作るには８等分するしきい値で同様に重みをつける。  

IMG=zeros(length(ORG(:,1)),length(ORG(1,:)),7);%配列の用意  
for i=1:7  
    IMG(:,:,i)=ORG>32*i;  
end  
IMG=sum(IMG,3);%各階調の加算  
imagesc(IMG);colormap(gray);colorbar;axis image; % 画像の表示  

８階調画像を図４に示す。  

![図４](https://github.com/16ec044/lecture_image_processing/blob/own/image/2-4.png)  
