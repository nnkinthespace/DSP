function y = circ_conv_fft(x1, x2)
    N = max(length(x1), length(x2));
    x1_pad = [x1, zeros(1, N - length(x1))];
    x2_pad = [x2, zeros(1, N - length(x2))];
    X1 = fft(x1_pad);
    X2 = fft(x2_pad);
    Y = X1 .* X2;
    y = ifft(Y);
    y = real(y);
endfunction

x1 = [1, 2, 3, 4];
x2 = [5, 6, 7, 8];

disp("Chuỗi x1:");
disp(x1);
disp("Chuỗi x2:");
disp(x2);


y_fft = circ_conv_fft(x1, x2);
disp("Kết quả tích chập vòng sử dụng FFT:");
disp(y_fft);
