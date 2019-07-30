function [infin_per_signal] = decay_period(alpha,num_of_T, signal)
%DECAY_PERIOD 返回产生的衰变周期信号，注意传入行向量
%   alpha为衰变量默认为1,num_of_T为重复次数默认为100
if nargin == 1
    alpha = 1;
    num_of_T = 100;
end
result = zeros(1, length(signal).*num_of_T);
result(1:length(signal)) = signal
for i = 2:num_of_T
    %length(signal)
    result((i-1)*length(signal) + 1: i*length(signal)) = (result((i-2)*length(signal) + 1: (i - 1)*length(signal))).*alpha;
infin_per_signal = result;

    
    
    
end

