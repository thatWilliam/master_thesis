import graph;
settings.tex="xelatex";
texpreamble("\usepackage{xeCJK}");
texpreamble("\usepackage{bm}");
texpreamble("\setCJKmainfont{SimSun}");
size(8cm,8cm,IgnoreAspect);

// res_size4_timestep0.005.h5
real[][] datas1t0005 = {
{0.005, 0.01, 0.015, 0.02, 0.025, 0.03, 0.035, 0.04, 0.045, 0.05, 0.055, 0.06, 0.065, 0.07, 0.075, 0.08, 0.085, 0.09, 0.095, 0.1, 0.105, 0.11, 0.115, 0.12, 0.125, 0.13, 0.135, 0.14, 0.145, 0.15, 0.155, 0.16, 0.165, 0.17, 0.175, 0.18, 0.185, 0.19, 0.195, 0.2, 0.205, 0.21, 0.215, 0.22, 0.225, 0.23, 0.235, 0.24, 0.245, 0.25, 0.255, 0.26, 0.265, 0.27, 0.275, 0.28, 0.285, 0.29, 0.295, 0.3, 0.305, 0.31, 0.315, 0.32, 0.325, 0.33, 0.335, 0.34, 0.345, 0.35, 0.355, 0.36, 0.365, 0.37, 0.375, 0.38, 0.385, 0.39, 0.395, 0.4, 0.405, 0.41, 0.415, 0.42, 0.425, 0.43, 0.435, 0.44, 0.445, 0.45, 0.455, 0.46, 0.465, 0.47, 0.475, 0.48, 0.485, 0.49, 0.495, 0.5},
{1.006251, 1.015697, 1.026916, 1.039207, 1.052228, 1.065813, 1.079887, 1.094418, 1.109401, 1.124842, 1.140754, 1.157153, 1.174062, 1.191501, 1.209496, 1.228071, 1.247256, 1.267080, 1.287574, 1.308772, 1.330711, 1.353429, 1.376966, 1.401368, 1.426682, 1.452957, 1.480250, 1.508617, 1.538123, 1.568835, 1.600826, 1.634176, 1.668971, 1.705303, 1.743273, 1.782991, 1.824575, 1.868158, 1.913879, 1.961895, 1.994457, 2.016666, 2.031910, 2.042463, 2.049855, 2.055117, 2.058943, 2.061802, 2.064010, 2.065779, 2.067253, 2.068527, 2.069668, 2.070718, 2.071707, 2.072656, 2.073578, 2.074481, 2.075372, 2.076254, 2.077132, 2.078006, 2.078878, 2.079748, 2.080618, 2.081487, 2.082356, 2.083225, 2.084094, 2.084963, 2.085832, 2.086702, 2.087572, 2.088443, 2.089313, 2.090185, 2.091056, 2.091928, 2.092800, 2.093673, 2.094546, 2.095419, 2.096292, 2.097166, 2.098041, 2.098916, 2.099791, 2.100666, 2.101542, 2.102418, 2.103295, 2.104172, 2.105049, 2.105927, 2.106805, 2.107683, 2.108562, 2.109441, 2.110320, 2.111200},
{6.336, 6.185, 6.170, 6.515, 6.630, 6.862, 6.638, 6.722, 6.942, 6.736, 6.845, 6.770, 6.612, 6.806, 6.665, 6.504, 6.802, 6.811, 6.616, 6.574, 6.882, 6.552, 6.783, 6.814, 6.990, 6.416, 6.535, 6.082, 6.252, 6.336, 6.715, 6.312, 6.726, 6.208, 6.155, 6.895, 6.318, 6.262, 6.314, 6.010, 6.796, 6.468, 6.423, 5.866, 5.965, 5.526, 5.589, 5.439, 5.661, 5.912, 5.550, 5.835, 5.587, 5.312, 5.384, 5.286, 5.391, 5.486, 5.294, 5.339, 5.371, 5.365, 5.262, 5.378, 5.385, 5.374, 5.395, 5.083, 5.114, 4.943, 5.034, 5.045, 4.912, 5.100, 5.061, 4.948, 5.067, 5.048, 4.920, 5.064, 5.042, 4.930, 5.046, 5.040, 4.924, 5.108, 5.045, 4.945, 5.026, 5.066, 4.931, 5.040, 5.092, 4.933, 5.039, 5.055, 5.138, 5.076, 5.052, 4.920},
{1.841e-05, 3.872e-05, 5.695e-05, 7.258e-05, 8.603e-05, 9.786e-05, 1.085e-04, 1.183e-04, 1.274e-04, 1.359e-04, 1.438e-04, 1.513e-04, 1.583e-04, 1.647e-04, 1.707e-04, 1.761e-04, 1.810e-04, 1.852e-04, 1.889e-04, 1.920e-04, 1.943e-04, 1.960e-04, 1.969e-04, 1.971e-04, 1.965e-04, 1.950e-04, 1.926e-04, 1.892e-04, 1.849e-04, 1.795e-04, 1.730e-04, 1.653e-04, 1.564e-04, 1.462e-04, 1.346e-04, 1.215e-04, 1.068e-04, 9.049e-05, 7.240e-05, 5.243e-05, 2.162e-05, 1.182e-05, 4.284e-05, 6.947e-05, 9.130e-05, 1.087e-04, 1.222e-04, 1.325e-04, 1.403e-04, 1.462e-04, 1.505e-04, 1.538e-04, 1.562e-04, 1.580e-04, 1.594e-04, 1.604e-04, 1.612e-04, 1.618e-04, 1.623e-04, 1.626e-04, 1.630e-04, 1.633e-04, 1.635e-04, 1.638e-04, 1.640e-04, 1.642e-04, 1.644e-04, 1.646e-04, 1.648e-04, 1.650e-04, 1.652e-04, 1.654e-04, 1.656e-04, 1.658e-04, 1.659e-04, 1.661e-04, 1.663e-04, 1.665e-04, 1.667e-04, 1.669e-04, 1.671e-04, 1.672e-04, 1.674e-04, 1.676e-04, 1.678e-04, 1.680e-04, 1.682e-04, 1.684e-04, 1.685e-04, 1.687e-04, 1.689e-04, 1.691e-04, 1.693e-04, 1.695e-04, 1.697e-04, 1.699e-04, 1.700e-04, 1.702e-04, 1.704e-04, 1.706e-04},
};

// res_size4_timestep0.01.h5
real[][] datas1t001 = {
{0.01, 0.02, 0.03, 0.04, 0.05, 0.06, 0.07, 0.08, 0.09, 0.1, 0.11, 0.12, 0.13, 0.14, 0.15, 0.16, 0.17, 0.18, 0.19, 0.2, 0.21, 0.22, 0.23, 0.24, 0.25, 0.26, 0.27, 0.28, 0.29, 0.3, 0.31, 0.32, 0.33, 0.34, 0.35, 0.36, 0.37, 0.38, 0.39, 0.4, 0.41, 0.42, 0.43, 0.44, 0.45, 0.46, 0.47, 0.48, 0.49, 0.5},
{1.016794, 1.039970, 1.066294, 1.094771, 1.125158, 1.157478, 1.191856, 1.228470, 1.267533, 1.309290, 1.354021, 1.402049, 1.453742, 1.509524, 1.569888, 1.635404, 1.706740, 1.784682, 1.870160, 1.964279, 2.012837, 2.038346, 2.052154, 2.060018, 2.064862, 2.068173, 2.070705, 2.072843, 2.074780, 2.076617, 2.078403, 2.080164, 2.081913, 2.083657, 2.085399, 2.087140, 2.088882, 2.090625, 2.092370, 2.094115, 2.095862, 2.097611, 2.099360, 2.101112, 2.102864, 2.104619, 2.106374, 2.108131, 2.109890, 2.111650},
{3.122, 3.121, 3.133, 3.120, 3.144, 3.153, 3.067, 3.128, 3.133, 3.207, 3.126, 3.133, 3.078, 3.134, 3.153, 3.182, 3.161, 3.206, 3.253, 3.407, 3.062, 3.174, 2.964, 2.867, 2.825, 2.712, 2.778, 2.690, 2.785, 2.599, 2.718, 2.762, 2.640, 2.680, 2.682, 2.669, 2.617, 2.687, 2.679, 2.618, 2.689, 2.705, 2.672, 2.632, 2.665, 2.691, 2.674, 2.620, 2.675, 2.675},
{1.041e-03, 6.616e-04, 3.529e-04, 2.037e-04, 1.450e-04, 1.289e-04, 1.331e-04, 1.487e-04, 1.723e-04, 2.032e-04, 2.417e-04, 2.886e-04, 3.449e-04, 4.121e-04, 4.916e-04, 5.857e-04, 6.966e-04, 8.272e-04, 9.811e-04, 1.163e-03, 1.887e-03, 1.947e-03, 1.333e-03, 7.331e-04, 2.978e-04, 1.748e-05, 1.519e-04, 2.504e-04, 3.061e-04, 3.372e-04, 3.544e-04, 3.639e-04, 3.692e-04, 3.723e-04, 3.741e-04, 3.754e-04, 3.763e-04, 3.770e-04, 3.777e-04, 3.783e-04, 3.788e-04, 3.794e-04, 3.799e-04, 3.805e-04, 3.810e-04, 3.816e-04, 3.821e-04, 3.827e-04, 3.832e-04, 3.838e-04},
};

// res_size4_timestep0.02.h5
real[][] datas1t002 = {
{0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18, 0.2, 0.22, 0.24, 0.26, 0.28, 0.3, 0.32, 0.34, 0.36, 0.38, 0.4, 0.42, 0.44, 0.46, 0.48, 0.5},
{1.041332, 1.095579, 1.158167, 1.229265, 1.310300, 1.403372, 1.511284, 1.637782, 1.787956, 1.968890, 2.032652, 2.056635, 2.067082, 2.072921, 2.077196, 2.080942, 2.084511, 2.088024, 2.091521, 2.095017, 2.098517, 2.102021, 2.105531, 2.109047, 2.112569},
{1.612, 1.620, 1.608, 1.615, 1.631, 1.637, 1.632, 1.636, 1.616, 1.667, 1.635, 1.481, 1.398, 1.375, 1.336, 1.379, 1.354, 1.276, 1.313, 1.342, 1.285, 1.289, 1.346, 1.315, 1.288},
{1.972e-03, 9.425e-04, 7.248e-04, 7.954e-04, 9.748e-04, 1.232e-03, 1.578e-03, 2.041e-03, 2.663e-03, 3.513e-03, 4.735e-03, 2.374e-03, 5.451e-04, 2.884e-04, 6.163e-04, 7.378e-04, 7.821e-04, 7.987e-04, 8.057e-04, 8.092e-04, 8.116e-04, 8.136e-04, 8.154e-04, 8.173e-04, 8.191e-04},
};

// res_size4_timestep0.05.h5
real[][] datas1t005 = {
{0.05, 0.1, 0.15, 0.2, 0.25, 0.3, 0.35, 0.4, 0.45, 0.5},
{1.128167, 1.313215, 1.577597, 1.981559, 2.057798, 2.078040, 2.088728, 2.097810, 2.106648, 2.115474},
{0.668, 0.674, 0.674, 0.687, 0.634, 0.576, 0.523, 0.575, 0.565, 0.565},
{2.819e-03, 3.202e-03, 5.405e-03, 9.970e-03, 3.718e-03, 1.023e-03, 1.971e-03, 2.143e-03, 2.181e-03, 2.195e-03},
};

// res_size4_timestep0.1.h5
real[][] datas1t01 = {
{0.1, 0.2, 0.3, 0.4, 0.5},
{1.317744, 1.999563, 2.079177, 2.102531, 2.120754},
{0.342, 0.345, 0.322, 0.276, 0.289},
{6.662e-03, 1.915e-02, 1.570e-03, 4.399e-03, 4.697e-03},
};


scale(Linear,Log);
draw(graph(datas1t0005[0],datas1t0005[2]),legend="$\Delta t$=0.005s");
draw(graph(datas1t001[0],datas1t001[2]),legend="$\Delta t$=0.01s", longdashdotted);
draw(graph(datas1t002[0],datas1t002[2]),legend="$\Delta t$=0.02s", dashed);
draw(graph(datas1t005[0],datas1t005[2]),legend="$\Delta t$=0.05s", Dotted);
draw(graph(datas1t01[0], datas1t01[2]), legend="$\Delta t$=0.10s", dashdotted);
yequals(1,longdashed);
ylimits(1e-1,1e1);
xaxis("模型时间/s", BottomTop,LeftTicks);
yaxis("计算时间/$\Delta t$",LeftRight,RightTicks);
add(legend(perline=2, linelength=30),point(N),10N);