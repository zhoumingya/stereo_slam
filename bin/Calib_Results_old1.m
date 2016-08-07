% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 2631.655380068704744 ; 2630.557825562078051 ];

%-- Principal point:
cc = [ 497.446398501222347 ; 279.199976349933252 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.426712133689151 ; -0.289637044060283 ; 0.014109761254167 ; -0.000100164648422 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 33.529351511706970 ; 27.274312801274206 ];

%-- Principal point uncertainty:
cc_error = [ 54.003566336827618 ; 49.435908965491244 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.105626433344616 ; 2.840860350016767 ; 0.005727203439628 ; 0.002619919961256 ; 0.000000000000000 ];

%-- Image size:
nx = 1280;
ny = 720;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 25;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 1.667947e+00 ; 1.993462e+00 ; -1.114052e+00 ];
Tc_1  = [ -1.029176e-01 ; -4.195479e-02 ; 9.054817e-01 ];
omc_error_1 = [ 9.507914e-03 ; 1.957959e-02 ; 2.843430e-02 ];
Tc_error_1  = [ 1.865481e-02 ; 1.698349e-02 ; 1.123346e-02 ];

%-- Image #2:
omc_2 = [ 2.020600e+00 ; 1.981838e+00 ; -1.925647e-01 ];
Tc_2  = [ -8.671489e-02 ; -1.740799e-02 ; 8.636412e-01 ];
omc_error_2 = [ 1.354844e-02 ; 1.651261e-02 ; 3.063291e-02 ];
Tc_error_2  = [ 1.770545e-02 ; 1.621102e-02 ; 1.079282e-02 ];

%-- Image #3:
omc_3 = [ 2.339305e+00 ; 1.410640e+00 ; 3.991090e-01 ];
Tc_3  = [ -6.013041e-02 ; 7.547948e-03 ; 8.614811e-01 ];
omc_error_3 = [ 2.012133e-02 ; 1.063792e-02 ; 2.745242e-02 ];
Tc_error_3  = [ 1.768920e-02 ; 1.618572e-02 ; 9.947686e-03 ];

%-- Image #4:
omc_4 = [ 2.115575e+00 ; 1.125235e+00 ; -5.366775e-02 ];
Tc_4  = [ -5.540593e-02 ; -1.464360e-02 ; 8.404065e-01 ];
omc_error_4 = [ 1.642946e-02 ; 1.313474e-02 ; 2.538000e-02 ];
Tc_error_4  = [ 1.724050e-02 ; 1.575529e-02 ; 1.081883e-02 ];

%-- Image #5:
omc_5 = [ -2.306638e+00 ; -1.618643e+00 ; 9.991946e-01 ];
Tc_5  = [ -8.260941e-02 ; 3.539142e-02 ; 9.967267e-01 ];
omc_error_5 = [ 2.029071e-02 ; 1.078042e-02 ; 3.180678e-02 ];
Tc_error_5  = [ 2.051623e-02 ; 1.875658e-02 ; 1.057955e-02 ];

%-- Image #6:
omc_6 = [ 2.684429e+00 ; 1.062504e+00 ; -3.881478e-01 ];
Tc_6  = [ -6.471998e-02 ; 5.112455e-02 ; 9.463899e-01 ];
omc_error_6 = [ 1.682503e-02 ; 9.574818e-03 ; 3.628504e-02 ];
Tc_error_6  = [ 1.944886e-02 ; 1.789292e-02 ; 1.185986e-02 ];

%-- Image #7:
omc_7 = [ 2.899222e+00 ; 3.803229e-01 ; -9.907252e-01 ];
Tc_7  = [ -6.088860e-02 ; 9.875701e-02 ; 1.007981e+00 ];
omc_error_7 = [ 2.022828e-02 ; 1.171477e-02 ; 3.341107e-02 ];
Tc_error_7  = [ 2.072853e-02 ; 1.894835e-02 ; 1.038051e-02 ];

%-- Image #8:
omc_8 = [ 1.982488e+00 ; 1.638458e+00 ; -1.396625e+00 ];
Tc_8  = [ -1.257488e-01 ; 3.846309e-02 ; 1.043669e+00 ];
omc_error_8 = [ 1.178935e-02 ; 1.992350e-02 ; 2.948319e-02 ];
Tc_error_8  = [ 2.150292e-02 ; 1.972510e-02 ; 1.208357e-02 ];

%-- Image #9:
omc_9 = [ 1.981478e+00 ; 1.413382e+00 ; -8.095001e-01 ];
Tc_9  = [ -1.666981e-02 ; 2.119673e-02 ; 1.008108e+00 ];
omc_error_9 = [ 1.397488e-02 ; 1.552483e-02 ; 2.667717e-02 ];
Tc_error_9  = [ 2.068320e-02 ; 1.896621e-02 ; 1.228632e-02 ];

%-- Image #10:
omc_10 = [ 2.281208e+00 ; 1.965124e+00 ; -4.768544e-01 ];
Tc_10  = [ -4.721883e-02 ; 1.107971e-02 ; 1.052133e+00 ];
omc_error_10 = [ 1.530396e-02 ; 1.555164e-02 ; 3.684543e-02 ];
Tc_error_10  = [ 2.160447e-02 ; 1.979388e-02 ; 1.281137e-02 ];

%-- Image #11:
omc_11 = [ 1.874909e+00 ; 1.206294e+00 ; 4.872915e-01 ];
Tc_11  = [ 6.370281e-03 ; 5.386869e-03 ; 9.929736e-01 ];
omc_error_11 = [ 1.892319e-02 ; 1.386070e-02 ; 2.231692e-02 ];
Tc_error_11  = [ 2.037169e-02 ; 1.866002e-02 ; 1.200199e-02 ];

%-- Image #12:
omc_12 = [ 2.293352e+00 ; 1.476371e+00 ; -1.250634e-01 ];
Tc_12  = [ -6.559867e-02 ; 1.603631e-02 ; 1.025428e+00 ];
omc_error_12 = [ 1.575498e-02 ; 1.293294e-02 ; 3.042353e-02 ];
Tc_error_12  = [ 2.102563e-02 ; 1.929912e-02 ; 1.290230e-02 ];

%-- Image #13:
omc_13 = [ 1.437191e+00 ; 1.556493e+00 ; -3.752944e-01 ];
Tc_13  = [ -1.034357e-01 ; -7.960778e-03 ; 9.439746e-01 ];
omc_error_13 = [ 1.405499e-02 ; 1.756913e-02 ; 2.096245e-02 ];
Tc_error_13  = [ 1.934721e-02 ; 1.776399e-02 ; 1.197999e-02 ];

%-- Image #14:
omc_14 = [ 1.665699e+00 ; 1.792581e+00 ; -2.424310e-01 ];
Tc_14  = [ -1.217246e-01 ; 9.406508e-03 ; 9.316981e-01 ];
omc_error_14 = [ 1.270843e-02 ; 1.660133e-02 ; 2.333812e-02 ];
Tc_error_14  = [ 1.910447e-02 ; 1.758907e-02 ; 1.171312e-02 ];

%-- Image #15:
omc_15 = [ 1.792661e+00 ; 1.879319e+00 ; 4.215859e-02 ];
Tc_15  = [ -7.547641e-02 ; -7.052358e-03 ; 7.672393e-01 ];
omc_error_15 = [ 1.513986e-02 ; 1.549790e-02 ; 2.435671e-02 ];
Tc_error_15  = [ 1.574382e-02 ; 1.442590e-02 ; 9.091163e-03 ];

%-- Image #16:
omc_16 = [ 1.563181e+00 ; 1.436577e+00 ; -3.765578e-01 ];
Tc_16  = [ -7.000245e-02 ; -3.464568e-02 ; 7.686724e-01 ];
omc_error_16 = [ 1.489348e-02 ; 1.703997e-02 ; 2.140913e-02 ];
Tc_error_16  = [ 1.577171e-02 ; 1.438043e-02 ; 9.869655e-03 ];

%-- Image #17:
omc_17 = [ 1.490813e+00 ; 1.573757e+00 ; 8.310882e-01 ];
Tc_17  = [ -8.008695e-02 ; -1.079625e-02 ; 7.482198e-01 ];
omc_error_17 = [ 1.817342e-02 ; 1.506265e-02 ; 2.120535e-02 ];
Tc_error_17  = [ 1.543435e-02 ; 1.411415e-02 ; 9.290944e-03 ];

%-- Image #18:
omc_18 = [ NaN ; NaN ; NaN ];
Tc_18  = [ NaN ; NaN ; NaN ];
omc_error_18 = [ NaN ; NaN ; NaN ];
Tc_error_18  = [ NaN ; NaN ; NaN ];

%-- Image #19:
omc_19 = [ 1.848123e+00 ; 1.820411e+00 ; 3.542506e-01 ];
Tc_19  = [ -2.418776e-02 ; 6.357656e-03 ; 8.228725e-01 ];
omc_error_19 = [ 1.821509e-02 ; 1.419152e-02 ; 2.480180e-02 ];
Tc_error_19  = [ 1.686941e-02 ; 1.545910e-02 ; 9.579358e-03 ];

%-- Image #20:
omc_20 = [ 1.808202e+00 ; 1.756404e+00 ; 3.696462e-01 ];
Tc_20  = [ -1.000905e-02 ; -5.744839e-03 ; 8.592236e-01 ];
omc_error_20 = [ 1.812163e-02 ; 1.452504e-02 ; 2.419228e-02 ];
Tc_error_20  = [ 1.761796e-02 ; 1.613596e-02 ; 1.005677e-02 ];

%-- Image #21:
omc_21 = [ 1.569596e+00 ; 1.198487e+00 ; -1.274914e-01 ];
Tc_21  = [ 3.824253e-03 ; -4.066442e-02 ; 8.550921e-01 ];
omc_error_21 = [ 1.697881e-02 ; 1.639897e-02 ; 2.004017e-02 ];
Tc_error_21  = [ 1.756630e-02 ; 1.597985e-02 ; 1.083180e-02 ];

%-- Image #22:
omc_22 = [ 1.981555e+00 ; 1.703097e+00 ; -2.789084e-01 ];
Tc_22  = [ -7.730388e-02 ; -6.728626e-03 ; 7.727977e-01 ];
omc_error_22 = [ 1.324363e-02 ; 1.506351e-02 ; 2.666133e-02 ];
Tc_error_22  = [ 1.584404e-02 ; 1.451611e-02 ; 9.778535e-03 ];

%-- Image #23:
omc_23 = [ 1.593688e+00 ; 1.638828e+00 ; 4.533663e-01 ];
Tc_23  = [ -3.182216e-02 ; -1.122528e-02 ; 7.438999e-01 ];
omc_error_23 = [ 1.757593e-02 ; 1.526083e-02 ; 2.166871e-02 ];
Tc_error_23  = [ 1.525859e-02 ; 1.398360e-02 ; 8.934004e-03 ];

%-- Image #24:
omc_24 = [ 1.684767e+00 ; 1.754253e+00 ; 3.186155e-01 ];
Tc_24  = [ -1.319591e-01 ; 1.828527e-03 ; 9.049208e-01 ];
omc_error_24 = [ 1.617729e-02 ; 1.495685e-02 ; 2.220099e-02 ];
Tc_error_24  = [ 1.867754e-02 ; 1.709622e-02 ; 1.091358e-02 ];

%-- Image #25:
omc_25 = [ 1.997297e+00 ; 1.894175e+00 ; -8.200333e-02 ];
Tc_25  = [ -6.463810e-02 ; -3.555961e-03 ; 1.002755e+00 ];
omc_error_25 = [ 1.493672e-02 ; 1.576678e-02 ; 2.909396e-02 ];
Tc_error_25  = [ 2.055911e-02 ; 1.883583e-02 ; 1.204871e-02 ];

