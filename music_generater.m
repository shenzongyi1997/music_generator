%����ԭʼ�ź�

% С����
% signal = zeros(1, 100);
% for i = 1:length(signal)/2
%     signal(i) = 1 / (length(zeros)/2) * i;
% end
% for i = length(signal)/2 + 1 : length(signal)
%     signal(i) = 0 - signal(i - length(signal)/2);
% end 
% fs = 48 * 1000;

% ���
% signal = zeros(1,1000);
% for i = 1:length(signal)
%     signal(i) = (rand() - 0.5) * 2;
% end


%���
signal = zeros(1,100);
f = 0.8
for i = 1:length(signal)
    signal(i) = sin(f*i) * (1/length(signal)) * i;
end


%�����ǿ��ӻ����������ֵ�
figure
plot(signal)
for i = 1:length(signal)
    line([i  i], [0  signal(i)])
end
title("ԭʼ�ź�")

music = decay_period(0.6, 10, signal);
figure
plot(music)
for i = 1:length(music)
    line([i  i], [0  music(i)])
end
title("�����ź�")
sound(music,fs)