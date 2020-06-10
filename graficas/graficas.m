%% GRAFICAS LP, LPCC, MFCC

clc;
clear all;
close all;

%% Lectura de los .txt a matrices

lp = readmatrix('lp_2_3.txt');
lpcc = readmatrix('lpcc_2_3yy.txt');
mfcc = readmatrix('mfcc_2_3.txt');
lp10 = readmatrix('lp10_2_3.txt');
lpcc10 = readmatrix('lpcc10_2_3.txt');
mfcc10 = readmatrix('mfcc10_2_3.txt');

%% Normalización de los datos

lp=normalize(lp);
lpcc=normalize(lpcc);
mfcc=normalize(mfcc);
lp10=normalize(lp10);
lpcc10=normalize(lpcc10);
mfcc10=normalize(mfcc10);

%% Gráfica de lp

%SES17
figure;
hold on;
subplot(2,1,1);
s=scatter(lp(:,1),lp(:,2),0.1,'.');
title('Coeficientes lp SES17');
s.MarkerEdgeColor = [0.8500 0.3250 0.0980];
%axis([-100 2000 -4 4])
axis([-6 6 -5 5])
hold off;

%SES10
hold on;
subplot(2,1,2);
s=scatter(lp10(:,1),lp10(:,2),0.1,'.');
title('Coeficientes lp SES10');
s.MarkerEdgeColor = [0.8500 0.3250 0.0980];
%axis([-100 2000 -4 4])
axis([-6 6 -5 5])
hold off;

%% Gráfica de lpcc

%SES17
figure;
hold on;
subplot(2,1,1);
s=scatter(lpcc(:,1),lpcc(:,2),0.1,'.');
title('Coeficientes lpcc SES17');
s.MarkerEdgeColor = [0.6350 0.0780 0.1840];
%axis([2 8 -2 4])
axis([-6 6 -5 5])
hold off;

%SES10
hold on;
subplot(2,1,2);
s=scatter(lpcc10(:,1),lpcc10(:,2),0.1,'.');
title('Coeficientes lpcc SES10');
s.MarkerEdgeColor = [0.6350 0.0780 0.1840];
%axis([2 8 -2 4])
axis([-6 6 -5 5])
hold off;

%% Gráfica de mfcc

%SES17
figure;
hold on;
subplot(2,1,1);
s=scatter(mfcc(:,1),mfcc(:,2),0.1,'.');
title('Coeficientes mfcc SES17');
s.MarkerEdgeColor = [0.4660 0.6740 0.1880];
%axis([-50 50 -50 25])
axis([-6 6 -5 5])
hold off;

%SES10
hold on;
subplot(2,1,2);
s=scatter(mfcc10(:,1),mfcc10(:,2),0.1,'.');
title('Coeficientes mfcc SES10');
s.MarkerEdgeColor = [0.4660 0.6740 0.1880];
%axis([-50 50 -50 25])
axis([-6 6 -5 5])
hold off;