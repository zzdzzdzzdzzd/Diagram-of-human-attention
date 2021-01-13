clear
clc

fontname = 'times new roman';
fontsize = 18;

h = figure();
x = imread('wind4.png');
subplot(1,2,1)
imagesc(x)
title('original image')
set(gca, 'position', [0.02, 0.02, 0.4+0.03, 0.9], 'fontname', fontname, 'fontsize', fontsize, 'xtick', [], 'ytick', [], 'xticklabel', {}, 'yticklabel', {})
subplot(1,2,2)
H = rgb2gray(x);
imagesc(H);
colormap jet;
colorbar('TickLabels',{'0','0.2','0.4','0.6','0.8', '1'})
title('image with attention')
set(gca, 'position', [0.48 0.02 0.4+0.03 0.9], 'fontname', fontname, 'fontsize', fontsize, 'xtick', [], 'ytick', [], 'xticklabel', {}, 'yticklabel', {})

set(h, 'position', [200, 200, 1200, 500])
print(1, '-dmeta', 'attention.emf')
close(h)