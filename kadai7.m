% �ۑ�7�@�_�C�i�~�b�N�����W�̊g��
% ��f�̃_�C�i�~�b�N�����W���O����Q�T�T�ɂ���D 
% ���L�̓T���v���v���O�����ł���D 
% �ۑ�쐬�ɂ������ẮuLenna�v�ȊO�̉摜��p����D 
% ��
clear; close all;
ORG = imread('skytree.png'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�

%---�_�C�i�~�b�N�����W��240�܂łɂ���------
mask=ORG>240; %240�ȏ�̒l��������}�X�N
ORG(mask)=240; %240�ȏ�̒l��240�ɂ���
%----------------------------------------
imagesc(ORG); colormap(gray); colorbar;axis image; % �摜�̕\��
pause;
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
pause;
ORG = double(ORG);
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o
ORG = (ORG-mn)/(mx-mn)*255;
imagesc(ORG); colormap(gray); colorbar; axis image; % �摜�̕\��
pause;
ORG = uint8(ORG); % ���̍s�ɂ��čl�@����
    %double�l�Ń_�C�i�~�b�N�����W���v�Z���Aunit8��255�܂ł̒l�ɕϊ����Ă���B
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��
