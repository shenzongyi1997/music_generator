%生成原始信号

% 小提琴
% signal = zeros(1, 100);
% for i = 1:length(signal)/2
%     signal(i) = 1 / (length(zeros)/2) * i;
% end
% for i = length(signal)/2 + 1 : length(signal)
%     signal(i) = 0 - signal(i - length(signal)/2);
% end 


% 随机
% signal = zeros(1,1000);
% for i = 1:length(signal)
%     signal(i) = (rand() - 0.5) * 2;
% end


%鸟叫
% signal = zeros(1,1000);
% f = 0.2
% for i = 1:length(signal)
%     signal(i) = sin(f*i) * (1/length(signal)) * i;
% end


%白噪音
% signal = zeros(1, 100);
% for i = 1:length(signal)
%     signal(i) = 0.5;
% end

%一上一下
signal = zeros(1,100);
for i = 1:length(signal)
    signal(i) = mod(i,2)*(-2) + 1;
end


 fs = 48 * 100;
%以下是可视化和生成音乐的
figure
plot(signal)
for i = 1:length(signal)
    line([i  i], [0  signal(i)])
end
ylim([-1 1])
title("原始信号")

music = decay_period(0.6, 60, signal);
figure
plot(music)
for i = 1:length(music)
    line([i  i], [0  music(i)])
end
title("生成信号")
sound(music,fs)