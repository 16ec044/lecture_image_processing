% ‰Û‘è‚Q@ŠK’²”‚Æ‹^Ž——ÖŠs
% ‚QŠK’²C‚SŠK’²C‚WŠK’²‚Ì‰æ‘œ‚ð¶¬‚¹‚æD
% ‰º‹L‚ÍƒTƒ“ƒvƒ‹ƒvƒƒOƒ‰ƒ€‚Å‚ ‚éD
% ‰Û‘èì¬‚É‚ ‚½‚Á‚Ä‚ÍuLennavˆÈŠO‚Ì‰æ‘œ‚ð—p‚¢‚æD

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA
close all;
ORG=imread('skytree.png'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG);%RGB‚©‚çƒOƒŒƒCƒXƒP[ƒ‹‚É•ÏŠ·
imagesc(ORG);colormap(gray);colorbar;axis image; % ‰æ‘œ‚Ì•\Ž¦
pause; % ˆêŽž’âŽ~

% ‚QŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% ‚SŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

%@‚WŠK’²‰æ‘œ‚Ì¶¬
IMG=zeros(length(ORG(:,1)),length(ORG(1,:)),7);%”z—ñ‚Ì—pˆÓ
for i=1:7
    IMG(:,:,i)=ORG>32*i;
end
IMG=sum(IMG,3);%ŠeŠK’²‚Ì‰ÁŽZ
imagesc(IMG);colormap(gray);colorbar;axis image; % ‰æ‘œ‚Ì•\Ž¦


