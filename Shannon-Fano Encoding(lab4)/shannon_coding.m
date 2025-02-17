% Created by Utkarsh Ghore (BT22ECI032)
% DIP lab 4 
% To Perform Shannon-Fano coding technique

clc
clear all
close all

prob = [0.5, 0.2, 0.2, 0.05, 0.05]; % Input probability array
codes = shannonFano(prob)