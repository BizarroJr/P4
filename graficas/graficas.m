%% GRAFICAS LP, LPCC, MFCC

clc;
clear all;
close all;

%% Lectura de los .txt a matrices
lp = readmatrix('lp_2_3.txt');
lpcc = readmatrix('lpcc_2_3.txt');
mfcc = readmatrix('mfcc_2_3.txt');

%% Gráfica de lp
figure;
hold on;
title('Coeficientes lp')
s=scatter(lp(:,1),lp(:,2),0.1,'.');
s.MarkerEdgeColor = [0.8500 0.3250 0.0980];
axis([-100 2000 -4 4])
hold off;

%% Gráfica de lpcc
figure;
hold on;
title('Coeficientes lpcc');
s=scatter(lpcc(:,1),lpcc(:,2),0.1,'.');
s.MarkerEdgeColor = [0.6350 0.0780 0.1840];
axis([-2 8 -2 8])
hold off;

%% Gráfica de mfcc
figure;
hold on;
title('Coeficientes mfcc')
s=scatter(mfcc(:,1),mfcc(:,2),0.1,'.');
s.MarkerEdgeColor = [0.4660 0.6740 0.1880];
axis([-50 50 -50 25])
hold off;
