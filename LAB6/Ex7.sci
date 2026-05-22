function y = lin_conv_fft(x1, x2)
    N1 = length(x1);
    N2 = length(x2);
    N = N1 + N2 - 1;
    
    x1_pad = [x1, zeros(1, N - N1)];
    x2_pad = [x2, zeros(1, N - N2)];
    
    X1 = fft(x1_pad);
    X2 = fft(x2_pad);
    
    Y = X1 .* X2;
    y = ifft(Y);
    y = real(y);
endfunction

x1 = [1, 2, 3];
x2 = [4, 5, 6, 7];

disp("Chuỗi x1:");
disp(x1);
disp("Chuỗi x2:");
disp(x2);

y_fft = lin_conv_fft(x1, x2);
disp("Kết quả chập tuyến tính dùng FFT:");
disp(y_fft);

y_conv = conv(x1, x2);
disp("Kết quả dùng hàm conv() của Scilab:");
disp(y_conv);

error_diff = max(abs(y_fft - y_conv));
disp("Sai số lớn nhất:");
disp(error_diff);
