clear; % 変数のオールクリア
close all;
ORG=imread('skytree.png'); % 原画像の入力
ORG = rgb2gray(ORG);

% imagesc(ORG);colormap(gray);colorbar;axis image; % 画像の表示



IMG=zeros(length(ORG(:,1)),length(ORG(1,:)),7);
for i=1:7
    IMG(:,:,i)=ORG>32*i;
end
IMG=sum(IMG,3);%各階調の加算
imagesc(IMG);colormap(gray);colorbar;axis image; % 画像の表示

