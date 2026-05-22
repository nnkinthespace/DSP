function y = circ_conv_direct(x1, x2)
    N = max(length(x1), length(x2));
    
    x1_pad = [x1, zeros(1, N - length(x1))];
    x2_pad = [x2, zeros(1, N - length(x2))];
    
    y = zeros(1, N);
    
    for n = 0:(N-1)
        for k = 0:(N-1)
            idx = n - k;
            if idx < 0 then
                idx = idx + N;
            end
            
            y(n+1) = y(n+1) + x1_pad(k+1) * x2_pad(idx+1);
        end
    end
endfunction

x1 = [1, 2, 3, 4];
x2 = [5, 6, 7, 8];

disp("Chuỗi x1:");
disp(x1);
disp("Chuỗi x2:");
disp(x2);

y_direct = circ_conv_direct(x1, x2);
disp("Kết quả tích chập vòng trực tiếp:");
disp(y_direct);
