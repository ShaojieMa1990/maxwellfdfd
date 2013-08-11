clear all; close all; clear classes; clc;

%% Palik's Si, p.555
wvlen1 = 1e-1 * [6.199 6.351 6.508 6.665 6.831 6.997 7.166 7.345 7.523 7.705 7.897 8.087 8.287 8.492 8.694 8.906 9.129 9.350 9.581 9.816 10.05 10.30 10.55 10.81 11.08 11.34 11.62 11.91 12.20 12.50 12.81 13.12 13.43 13.76 14.10 14.45 14.79 15.16 15.54 15.92 16.31 16.71 17.10 17.54 17.97 18.39];
n1 = [0.9999048 0.9999131 0.9999222 0.9999318 0.9999113 0.999885 0.999874 0.999863 0.999854 0.999844 0.999834 0.999824 0.999814 0.999803 0.999792 0.999781 0.999769 0.999756 0.999743 0.999729 0.999715 0.999700 0.999684 0.999667 0.999649 0.999631 0.999612 0.999591 0.999570 0.999548 0.999524 0.999500 0.999474 0.999447 0.999418 0.999388 0.999358 0.999325 0.999289 0.999253 0.999214 0.999174 0.999134 0.999088 0.999041 0.99899];
k11 = 1e-5 * [3.19 3.46 3.76 4.08];
k12 = 1e-6 * [3.93 4.32 4.74 5.20 5.70 6.24 6.85 7.49 8.22 8.99 9.81];
k13 = 1e-5 * [1.07 1.17 1.28 1.40 1.53 1.67 1.83 2.00 2.18 2.39 2.60 2.84 3.10 3.39 3.70 4.04 4.41 4.80 5.24 5.73 6.25 6.80 7.42 8.11 8.84 9.66];
k14 = 1e-4 * [1.14 1.25 1.36 1.48 1.05];
k1 = [k11 k12 k13 k14];


%% Palik's Si, p.556
wvlen2 = 1e-1 * [18.84 19.31 19.77 20.26 20.77 21.27 21.79 22.34 22.87 23.44 24.03 24.60 25.20 25.83 26.43 27.07 27.74 28.44 29.10 29.87 30.54 31.31 32.12 32.89 33.69 34.53 35.32 36.25 37.12 38.03 38.99 39.86 40.92 41.88 42.90 43.96 45.08 46.09 47.32 48.43 49.59 50.81 52.09 53.44 54.62 56.10 57.40]; 
n2 = [0.99894 0.99889 0.99883 0.99878 0.99871 0.99865 0.99858 0.99851 0.99843 0.99836 0.99827 0.99819 0.99810 0.99800 0.99791 0.99781 0.99770 0.99759 0.99748 0.99735 0.99723 0.99710 0.99695 0.99682 0.99667 0.99651 0.99636 0.99619 0.99602 0.99585 0.99566 0.99549 0.99528 0.99509 0.99489 0.99468 0.99446 0.99427 0.99403 0.99382 0.99361 0.99339 0.99318 0.99296 0.99277 0.99254 0.99236];
k21 = 1e-4 * [1.61 1.76 1.91 2.08 2.27 2.47 2.69 2.94 3.19 3.47 3.79 4.11 4.47 4.87 5.27 5.72 6.22 6.77 7.34 8.01 8.63 9.39];
k22 = 1e-3 * [1.02 1.11 1.20 1.31 1.41 1.53 1.66 1.80 1.95 2.10 2.29 2.47 2.67 2.88 3.13 3.36 3.65 3.93 4.23 4.57 4.94 5.34 5.70 6.19 6.63];
k2 = [k21 k22];


%% Palik's Si, p.557
wvlen3 = 1e-1 * [58.76 60.18 61.68 63.25 64.91 66.30 68.12 69.65 71.25 72.93 74.69 76.53 78.47 80.51 82.66 84.34 86.70 88.56 91.16 93.22 95.37 97.62 99.98 102.5 105.1 107.8 110.7 112.7];
n3 = [0.99219 0.99169 0.99206 0.99192 0.99179 0.99167 0.99164 0.99164 0.99167 0.99176 0.99235 0.99235 0.99287 0.99340 0.99384 0.99415 0.99460 0.99496 0.99549 0.99594 0.99645 0.99705 0.99773 0.99856 0.99958 1.0008 1.0024 1.0039];
k31 = 1e-3 * [7.12 9.46 7.63 8.18 8.79];
k32 = 1e-2 * [1.00 1.07 1.14 1.21 1.28 1.45 1.45 1.52 1.57 1.62 1.66 1.72 1.77 1.83 1.88 1.94 2.00 2.06 2.12 2.19 2.26 2.33 2.39];
k3 = [k31 k32];


%% Palik's Si, p.558
wvlen4 = 1e-1 * [115.9 119.2 121.6 122.0 123.0 124.0 125 126 128 130 132 136 140 150 160 170 180 190 200 210];
n4 = [1.0070 1.0132 1.0241 1.025 1.030 1.032 1.034 1.034 1.034 1.03 1.022 1.008 1.000 0.993 0.991 0.988 0.985 0.982 0.978 0.976];
k41 = 1e-2 * [2.47 2.56 2.62 2.4];
k42 = 1e-3 * [5.0 1.54 1.0 1.02 1.09 1.13 1.2 1.3 1.43 1.78 2.15 2.54 2.97 3.43 3.93 4.43];
k4 = [k41 k42];


%% Palik's Si, p.559
wvlen5 = 1e-1 * [220 230 240 250 260 270 280 290 300 310 320 330 340 350 360 370 380 390 400 410 420 430 440 450 460 470 480 490 500 510 520 530 540 550 560 570 580 590 600 610 620 630 635.8 640 650];
n5 = [0.972 0.968 0.964 0.960 0.956 0.952 0.947 0.942 0.937 0.930 0.925 0.918 0.913 0.906 0.899 0.893 0.885 0.877 0.869 0.860 0.853 0.843 0.834 0.824 0.814 0.803 0.792 0.778 0.766 0.752 0.737 0.722 0.706 0.691 0.675 0.659 0.644 0.627 0.61 0.59 0.567 0.549 0.542 0.53 0.513];
k51 = 1e-3 * [5.0 5.53 6.1 6.7 7.3 7.85 8.4 9.0 9.5];
k52 = 1e-2 * [1.0 1.04 1.0 1.13 1.17 1.21 1.24 1.28 1.32 1.35 1.38 1.42 1.47 1.52 1.58 1.68 1.78 1.92 2.05 2.23 2.43 2.64 2.92 3.25 3.65 4.05 4.55 5.1 5.8 6.5 7.4 8.35 9.3];
k53 = [0.140 0.10 0.113];
k5 = [k51 k52 k53];


%% Palik's Si, p.560
wvlen6 = 1e3 * [0.06526 0.06702 0.06888 0.06985 0.07085 0.07187 0.07293 0.07380 0.07424 0.07469 0.07514 0.07630 0.07749 0.07872 0.07999 0.08130 0.08266 0.08406 0.08551 0.08700 0.08856 0.09017 0.09184 0.09357 0.09537 0.09724 0.09919 0.10120 0.1033 0.1055 0.1078 0.1102 0.1127 0.1153 0.1181 0.1210 0.1240 0.1272 0.1305 0.1340 0.1378 0.1417 0.1459 0.1503 0.1550 0.1600 0.1653 0.1710];
n6 = [0.514 0.485 0.455 0.440 0.426 0.411 0.397 0.386 0.379 0.374 0.369 0.357 0.345 0.333 0.323 0.313 0.304 0.296 0.288 0.281 0.275 0.269 0.265 0.261 0.258 0.256 0.255 0.256 0.257 0.259 0.263 0.267 0.272 0.278 0.286 0.295 0.306 0.318 0.332 0.348 0.367 0.389 0.414 0.444 0.478 0.517 0.563 0.618];
k6 = [0.163 0.189 0.219 0.237 0.255 0.275 0.296 0.314 0.323 0.333 0.342 0.367 0.394 0.421 0.450 0.479 0.510 0.541 0.573 0.607 0.641 0.677 0.714 0.752 0.792 0.833 0.875 0.918 0.963 1.01 1.06 1.11 1.16 1.21 1.26 1.32 1.38 1.45 1.51 1.58 1.66 1.73 1.82 1.90 2.00 2.10 2.21 2.32];


%% Palik's Si, p.561
wvlen7 = 1e3 * [0.1771 0.1837 0.1907 0.1984 0.2066 0.2073 0.2080 0.2087 0.2094 0.2101 0.2109 0.2116 0.2123 0.2130 0.2138 0.2145 0.2153 0.2160 0.2168 0.2175 0.2183 0.2191 0.2198 0.2206 0.2214 0.2222 0.2230 0.2238 0.2246 0.2254 0.2263 0.2271 0.2279 0.2288 0.2296 0.2305 0.2313 0.2322 0.2331 0.2339 0.2348 0.2357 0.2366 0.2375 0.2384 0.2394 0.2403];
n7 = [0.682 0.756 0.847 0.968 1.010 1.036 1.046 1.066 1.070 1.083 1.088 1.102 1.109 1.119 1.133 1.139 1.155 1.164 1.175 1.180 1.195 1.211 1.222 1.235 1.247 1.265 1.280 1.299 1.319 1.340 1.362 1.389 1.416 1.445 1.471 1.502 1.526 1.548 1.566 1.579 1.585 1.590 1.591 1.592 1.589 1.586 1.582];
k7 = [2.45 2.58 2.73 2.89 2.909 2.928 2.944 2.937 2.963 2.982 2.987 3.005 3.015 3.025 3.045 3.061 3.073 3.086 3.102 3.112 3.135 3.150 3.169 3.190 3.206 3.228 3.245 3.267 3.285 3.302 3.319 3.334 3.350 3.359 3.366 3.368 3.368 3.364 3.358 3.353 3.346 3.344 3.344 3.347 3.354 3.363 3.376];


%% Palik's Si, p.562
wvlen8 = 1e3 * [0.2412 0.2422 0.2431 0.2441 0.2450 0.2460 0.2470 0.2480 0.2490 0.2500 0.2510 0.2520 0.2530 0.2541 0.2551 0.2562 0.2572 0.2583 0.2594 0.2605 0.2616 0.2627 0.2638 0.2649 0.2661 0.2672 0.2684 0.2695 0.2707 0.2719 0.2731 0.2743 0.2755 0.2768 0.2780 0.2792 0.2805 0.2818 0.2831 0.2844 0.2857 0.2870 0.2883 0.2897 0.2910 0.2924 0.2938 0.2952];
n8 = [1.579 1.573 1.571 1.570 1.569 1.568 1.569 1.570 1.575 1.580 1.584 1.591 1.597 1.608 1.618 1.629 1.643 1.658 1.673 1.692 1.713 1.737 1.764 1.794 1.831 1.874 1.927 1.988 2.059 2.140 2.234 2.339 2.451 2.572 2.700 2.833 2.974 3.120 3.277 3.444 3.634 3.849 4.086 4.318 4.525 4.686 4.805 4.888];
k8 = [3.389 3.408 3.429 3.451 3.477 3.504 3.533 3.565 3.598 3.632 3.670 3.709 3.749 3.789 3.835 3.880 3.928 3.979 4.031 4.088 4.149 4.211 4.278 4.350 4.426 4.506 4.590 4.678 4.764 4.849 4.933 5.011 5.082 5.148 5.206 5.257 5.304 5.344 5.381 5.414 5.435 5.439 5.395 5.301 5.158 4.989 4.812 4.639];


%% Palik's Si, p.563
wvlen9 = 1e3 * [0.2966 0.2980 0.2995 0.3009 0.3024 0.3039 0.3054 0.3069 0.3084 0.3100 0.3115 0.3131 0.3147 0.3163 0.3179 0.3195 0.3212 0.3229 0.3246 0.3263 0.3280 0.3297 0.3315 0.3333 0.3351 0.3369 0.3388 0.3406 0.3425 0.3444 0.3463 0.3483 0.3502 0.3522 0.3542 0.3563 0.3583 0.3604 0.3625 0.3647 0.3668 0.3690 0.3712 0.3734 0.3757 0.3780 0.3803];
n9 = [4.941 4.977 4.999 5.012 5.020 5.021 5.020 5.018 5.015 5.010 5.009 5.010 5.009 5.012 5.016 5.021 5.029 5.040 5.052 5.065 5.079 5.095 5.115 5.134 5.156 5.179 5.204 5.231 5.261 5.296 5.336 5.383 5.442 5.515 5.610 5.733 5.894 6.089 6.308 6.522 6.695 6.796 6.829 6.799 6.709 6.585 6.452];
k9 = [4.480 4.335 4.204 4.086 3.979 3.885 3.798 3.720 3.650 3.587 3.529 3.477 3.429 3.386 3.346 3.310 3.275 3.242 3.211 3.182 3.154 3.128 3.103 3.079 3.058 3.039 3.021 3.007 2.995 2.987 2.983 2.984 2.989 2.999 3.014 3.026 3.023 2.982 2.881 2.705 2.456 2.169 1.870 1.577 1.321 1.110 0.945];


%% Palik's Si, p.564
wvlen10 = 1e3 * [0.3827 0.3850 0.3875 0.3899 0.3924 0.3949 0.3974 0.4000 0.4025 0.4052 0.4078 0.4105 0.4133 0.4161 0.4189 0.4217 0.4246 0.4275 0.4305 0.4335 0.4366 0.4397 0.4428 0.4460 0.4492 0.4525 0.4558 0.4592 0.4626 0.4661 0.4696 0.4732 0.4769 0.4806 0.4843 0.4881 0.4920 0.4959 0.4999 0.5040 0.5081 0.5123 0.5166 0.5209 0.5254 0.5299 0.5344];
n10 = [6.316 6.185 6.062 5.948 5.842 5.744 5.654 5.570 5.493 5.420 5.349 5.284 5.222 5.164 5.109 5.058 5.009 4.961 4.916 4.872 4.831 4.791 4.753 4.718 4.682 4.648 4.615 4.583 4.553 4.522 4.495 4.466 4.442 4.416 4.391 4.367 4.343 4.320 4.298 4.277 4.255 4.235 4.215 4.196 4.177 4.159 4.140];
k10 = [0.815 0.714 0.630 0.561 0.505 0.456 0.416 0.387 0.355 0.329 0.313 0.291 0.269 0.255 0.244 0.228 0.211 0.203 0.194 0.185 0.185 0.170 0.163 0.149 0.149 0.133 0.131 0.130 0.131 0.134 0.120 0.120 0.090 0.094 0.083 0.079 0.077 0.073 0.073 0.066 0.072 0.060 0.060 0.056 0.053 0.043 0.045];


%% Palik's Si, p.565
wvlen11 = 1e3 * [0.5391 0.5438 0.5486 0.5535 0.5585 0.5636 0.5687 0.5740 0.5794 0.5848 0.5904 0.5961 0.6019 0.6078 0.6138 0.6199 0.6262 0.6326 0.6391 0.6458 0.6526 0.6595 0.6666 0.6738 0.6812 0.6888 0.6965 0.7045 0.7126 0.7208 0.7293 0.7380 0.7469 0.7560 0.7653 0.7749 0.7847 0.7948 0.8051 0.8157 0.8266];
n11 = [4.123 4.106 4.089 4.073 4.057 4.042 4.026 4.012 3.997 3.983 3.969 3.956 3.943 3.931 3.918 3.906 3.893 3.882 3.870 3.858 3.847 3.837 3.826 3.815 3.805 3.796 3.787 3.778 3.768 3.761 3.752 3.745 3.736 3.728 3.721 3.714 3.705 3.697 3.688 3.681 3.673];
k11 = [0.048 0.044 0.044 0.032 0.038 0.032 0.034 0.030 0.027 0.030 0.030 0.027 0.025 0.025 0.024 0.022 0.022 0.019 0.018 0.017 0.016 0.016 0.015 0.014 0.013 0.013 0.013 0.012 0.011 0.011 0.010 0.010 0.009 0.009 0.008 0.008 0.007 0.007 0.006 0.006 0.005];


%% Palik's Si, p.566.  From this page, only n's are taken, and k's are ignored, because k's measured with n are very rare.
wvlen12 = 1e3 * [1.12 1.144 1.20 1.372 1.4 1.532 1.6 1.696 1.8 2.0 2.4373 2.50 2.7144 3.00 3.3033 3.4188 3.50 4.00 5.00 6.00 7.00];
n12 = [3.5361 3.5295 3.5193 3.5007 3.4876 3.4784 3.4710 3.4644 3.4578 3.4490 3.4434 3.4424 3.4393 3.4361 3.4335 3.4327 3.4321 3.4294 3.4261 3.4242 3.4231];
k12 = zeros(1, length(n12));


%% Palik's Si, p.567
wvlen13 = 1e3 * [8.000 9.00 10.00 13.50 14.50];
n13 = [3.4224 3.4219 3.4215 3.4209 3.4208];
k13 = zeros(1, length(n13));


%% Palik's Si, p.568
wvlen14 = 1e3 * [15.00 20.00 25.00 30.30 40.00 50.00 62.50 71.43 83.33 90.91 100.0 125.0 166.7 200.0 250.0 333.3];
n14 = [3.4207 3.4204 3.4201 3.4200 3.4199 3.4197 3.4195 3.4192 3.4190 3.4188 3.4185 3.4180 3.4170 3.4165 3.4160 3.4155];
k14 = zeros(1, length(n14));



%% Collect all.
wvlen = [wvlen1 wvlen2 wvlen3 wvlen4 wvlen5 wvlen6 wvlen7 wvlen8 wvlen9 wvlen10 wvlen11 wvlen12 wvlen13 wvlen14].';
n = [n1 n2 n3 n4 n5 n6 n7 n8 n9 n10 n11 n12 n13 n14].';
k = [k1 k2 k3 k4 k5 k6 k7 k8 k9 k10 k11 k12 k13 k14].';

%% Convert the wavelengths to the photon energies.
eV = PhysC.h * PhysC.c0 * 1e9 ./ wvlen;

%% Reverse the data order.
eV = eV(end:-1:1);
n = n(end:-1:1);
k = k(end:-1:1);
wvlen = wvlen(end:-1:1);

%% Calculate the permittivity from n and k following the exp(+i w t) time dependence.
eps = (n - 1i*k).^2;

%% Plot n and k.  Compare with Fig.10 on p.753 of Palik.
nk_wvlen = 1;
eps_eV = 2;
eps_wvlen = 3;
abseps_eV = 4;
plotstyle = eps_eV;
switch plotstyle
    case nk_wvlen  % plot n and k
        loglog(wvlen, n, 'o-', wvlen, k, 'o-')
        %plot(wvlen, n, wvlen, k)
        legend('n', 'k', 'Location', 'SouthEast');
        xlabel 'wavelength (nm)'
        %axis([1e2 1e4 1e-2 1e2])
    case eps_eV  % plot real(eps) and -imag(eps)
        plot(eV, real(eps), 'o-', eV, -imag(eps), 'o-')
        legend('\epsilon_1', '\epsilon_2', 'Location', 'SouthEast');
        xlabel 'Photon Energy (eV)'
        axis([10 30 -2 1]);
    case eps_wvlen
        plot(wvlen, real(eps), 'o-', wvlen, -imag(eps), 'o-')
        legend('\epsilon_1', '\epsilon_2', 'Location', 'SouthEast');
        xlabel 'wavelength (nm)'
        %axis([0 1e2 -1e1 1e1])
    case abseps_eV  % plot real(eps) and -imag(eps)
        loglog(eV, abs(real(eps)), 'o-', eV, -imag(eps), 'o-')
        legend('abs(\epsilon_1)', '\epsilon_2', 'Location', 'SouthEast');
		line([10 10], [2e-6 0.5e2], 'color', 'r', 'linestyle', '--');
		line([20 20], [2e-6 0.5e2], 'color', 'r', 'linestyle', '--');
		line([30 30], [2e-6 0.5e2], 'color', 'r', 'linestyle', '--');
        xlabel 'Photon Energy (eV)'
end


%% Save data.
% save(mfilename, 'eV', 'n', 'k');
