%����ԭʼ�ź�

% С����
% signal = zeros(1, 100);
% for i = 1:length(signal)/2
%     signal(i) = 1 / (length(zeros)/2) * i;
% end
% for i = length(signal)/2 + 1 : length(signal)
%     signal(i) = 0 - signal(i - length(signal)/2);
% end 


% ���
% signal = zeros(1,1000);
% for i = 1:length(signal)
%     signal(i) = (rand() - 0.5) * 2;
% end


%���
% signal = zeros(1,1000);
% f = 0.2
% for i = 1:length(signal)
%     signal(i) = sin(f*i) * (1/length(signal)) * i;
% end


%������
% signal = zeros(1, 100);
% for i = 1:length(signal)
%     signal(i) = 0.5;
% end

%һ��һ��
signal = zeros(1,100);
for i = 1:length(signal)
    signal(i) = mod(i,2)*(-2) + 1;
end


 fs = 48 * 100;
%�����ǿ��ӻ����������ֵ�
figure
plot(signal)
for i = 1:length(signal)
    line([i  i], [0  signal(i)])
end
ylim([-1 1])
title("ԭʼ�ź�")

music = decay_period(0.6, 60, signal);
figure
plot(music)
for i = 1:length(music)
    line([i  i], [0  music(i)])
end
title("�����ź�")
sound(music,fs)