file = "D:\Download\DSP\DSP\LAB4\test.wav"

audio = wavread(file, 'info');
[y, Fs, bits] = wavread(file);
audio 
subplot(2,1,1);
title('Channel 1');
plot2d(y(1,:));
subplot(2,1,2);
title('Channel 2');
plot2d(y(2,:));


