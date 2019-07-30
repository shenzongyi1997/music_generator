function [infin_per_signal] = decay_period(alpha,num_of_T, signal)
%DECAY_PERIOD ���ز�����˥�������źţ�ע�⴫��������
%   alphaΪ˥����Ĭ��Ϊ1,num_of_TΪ�ظ�����Ĭ��Ϊ100
if nargin == 1
    alpha = 1;
    num_of_T = 100;
end
result = zeros(1, length(signal).*num_of_T);
for i = 1:num_of_T
    %length(signal)
    result((i-1)*length(signal) + 1: i*length(signal)) = signal.*alpha;
infin_per_signal = result;

    
    
    
end

