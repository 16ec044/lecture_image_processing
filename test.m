clear; % �ϐ��̃I�[���N���A
close all;
ORG=imread('skytree.png'); % ���摜�̓���
ORG = rgb2gray(ORG);

% imagesc(ORG);colormap(gray);colorbar;axis image; % �摜�̕\��



IMG=zeros(length(ORG(:,1)),length(ORG(1,:)),7);
for i=1:7
    IMG(:,:,i)=ORG>32*i;
end
IMG=sum(IMG,3);%�e�K���̉��Z
imagesc(IMG);colormap(gray);colorbar;axis image; % �摜�̕\��

