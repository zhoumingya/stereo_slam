% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 2649.167734903484870 ; 2642.256791357773182 ];

%-- Principal point:
cc = [ 524.282109188288359 ; 279.185473024814371 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.420059424790308 ; -0.008821785010652 ; 0.015551303099481 ; 0.000358508365529 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 35.497136574668524 ; 28.747883919896701 ];

%-- Principal point uncertainty:
cc_error = [ 56.707716057974899 ; 52.779396605198841 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.090528457706713 ; 0.688927737777278 ; 0.006115616734656 ; 0.005604856248755 ; 0.000000000000000 ];

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
omc_1 = [ 1.662498e+00 ; 2.005693e+00 ; -1.133073e+00 ];
Tc_1  = [ -2.709987e-02 ; -4.269287e-02 ; 9.013373e-01 ];
omc_error_1 = [ 1.092743e-02 ; 2.027520e-02 ; 2.993697e-02 ];
Tc_error_1  = [ 1.934789e-02 ; 1.790926e-02 ; 1.149693e-02 ];

%-- Image #2:
omc_2 = [ 2.026023e+00 ; 1.995383e+00 ; -2.102098e-01 ];
Tc_2  = [ -1.162023e-02 ; -1.816417e-02 ; 8.601669e-01 ];
omc_error_2 = [ 1.484158e-02 ; 1.663890e-02 ; 3.214804e-02 ];
Tc_error_2  = [ 1.840422e-02 ; 1.712140e-02 ; 1.107819e-02 ];

%-- Image #3:
omc_3 = [ 2.349295e+00 ; 1.421672e+00 ; 3.816418e-01 ];
Tc_3  = [ 1.471309e-02 ; 6.799919e-03 ; 8.573892e-01 ];
omc_error_3 = [ 2.120185e-02 ; 1.073191e-02 ; 2.945659e-02 ];
Tc_error_3  = [ 1.834486e-02 ; 1.710175e-02 ; 1.042123e-02 ];

%-- Image #4:
omc_4 = [ 2.119244e+00 ; 1.137440e+00 ; -7.146779e-02 ];
Tc_4  = [ 1.910024e-02 ; -1.539917e-02 ; 8.364068e-01 ];
omc_error_4 = [ 1.772347e-02 ; 1.341033e-02 ; 2.679729e-02 ];
Tc_error_4  = [ 1.791977e-02 ; 1.664768e-02 ; 1.134077e-02 ];

%-- Image #5:
omc_5 = [ -2.290343e+00 ; -1.615078e+00 ; 1.018055e+00 ];
Tc_5  = [ -5.512680e-03 ; 3.439697e-02 ; 9.921592e-01 ];
omc_error_5 = [ 2.104084e-02 ; 1.113065e-02 ; 3.392881e-02 ];
Tc_error_5  = [ 2.123924e-02 ; 1.980978e-02 ; 1.091227e-02 ];

%-- Image #6:
omc_6 = [ 2.684069e+00 ; 1.069627e+00 ; -4.186171e-01 ];
Tc_6  = [ 1.143510e-02 ; 5.021488e-02 ; 9.419280e-01 ];
omc_error_6 = [ 1.851078e-02 ; 9.403785e-03 ; 3.833922e-02 ];
Tc_error_6  = [ 2.015480e-02 ; 1.891557e-02 ; 1.259983e-02 ];

%-- Image #7:
omc_7 = [ 2.889756e+00 ; 3.844005e-01 ; -1.015206e+00 ];
Tc_7  = [ 1.623996e-02 ; 9.777297e-02 ; 1.003071e+00 ];
omc_error_7 = [ 2.229224e-02 ; 1.164104e-02 ; 3.485717e-02 ];
Tc_error_7  = [ 2.144360e-02 ; 2.001848e-02 ; 1.082468e-02 ];

%-- Image #8:
omc_8 = [ 1.974022e+00 ; 1.646395e+00 ; -1.417735e+00 ];
Tc_8  = [ -4.772587e-02 ; 3.743348e-02 ; 1.039849e+00 ];
omc_error_8 = [ 1.319493e-02 ; 2.078110e-02 ; 3.099843e-02 ];
Tc_error_8  = [ 2.229428e-02 ; 2.082555e-02 ; 1.224432e-02 ];

%-- Image #9:
omc_9 = [ 1.978112e+00 ; 1.424715e+00 ; -8.290565e-01 ];
Tc_9  = [ 6.043461e-02 ; 2.026800e-02 ; 1.002861e+00 ];
omc_error_9 = [ 1.535149e-02 ; 1.601733e-02 ; 2.797431e-02 ];
Tc_error_9  = [ 2.143107e-02 ; 2.006094e-02 ; 1.303992e-02 ];

%-- Image #10:
omc_10 = [ 2.283445e+00 ; 1.975235e+00 ; -5.051095e-01 ];
Tc_10  = [ 3.078240e-02 ; 1.008235e-02 ; 1.047454e+00 ];
omc_error_10 = [ 1.750918e-02 ; 1.616499e-02 ; 3.939062e-02 ];
Tc_error_10  = [ 2.240592e-02 ; 2.093403e-02 ; 1.370357e-02 ];

%-- Image #11:
omc_11 = [ 1.882857e+00 ; 1.219336e+00 ; 4.747579e-01 ];
Tc_11  = [ 8.336887e-02 ; 4.470666e-03 ; 9.878992e-01 ];
omc_error_11 = [ 2.010154e-02 ; 1.449671e-02 ; 2.358808e-02 ];
Tc_error_11  = [ 2.115251e-02 ; 1.975891e-02 ; 1.295491e-02 ];

%-- Image #12:
omc_12 = [ 2.298963e+00 ; 1.487986e+00 ; -1.478298e-01 ];
Tc_12  = [ 1.195418e-02 ; 1.505781e-02 ; 1.022229e+00 ];
omc_error_12 = [ 1.694922e-02 ; 1.297425e-02 ; 3.190769e-02 ];
Tc_error_12  = [ 2.187555e-02 ; 2.042399e-02 ; 1.352206e-02 ];

%-- Image #13:
omc_13 = [ 1.437251e+00 ; 1.571320e+00 ; -3.869951e-01 ];
Tc_13  = [ -2.705828e-02 ; -8.933466e-03 ; 9.411314e-01 ];
omc_error_13 = [ 1.538069e-02 ; 1.817735e-02 ; 2.201929e-02 ];
Tc_error_13  = [ 2.012951e-02 ; 1.877175e-02 ; 1.249716e-02 ];

%-- Image #14:
omc_14 = [ 1.668326e+00 ; 1.807428e+00 ; -2.570596e-01 ];
Tc_14  = [ -4.560001e-02 ; 8.432757e-03 ; 9.292244e-01 ];
omc_error_14 = [ 1.396839e-02 ; 1.712838e-02 ; 2.474074e-02 ];
Tc_error_14  = [ 1.986991e-02 ; 1.858064e-02 ; 1.210271e-02 ];

%-- Image #15:
omc_15 = [ 1.798422e+00 ; 1.894170e+00 ; 2.733119e-02 ];
Tc_15  = [ -2.089007e-03 ; -7.891274e-03 ; 7.636371e-01 ];
omc_error_15 = [ 1.642766e-02 ; 1.592766e-02 ; 2.624016e-02 ];
Tc_error_15  = [ 1.632176e-02 ; 1.522611e-02 ; 9.498212e-03 ];

%-- Image #16:
omc_16 = [ 1.563005e+00 ; 1.451427e+00 ; -3.893262e-01 ];
Tc_16  = [ 3.487115e-03 ; -3.549944e-02 ; 7.648043e-01 ];
omc_error_16 = [ 1.634612e-02 ; 1.759214e-02 ; 2.251717e-02 ];
Tc_error_16  = [ 1.638607e-02 ; 1.517230e-02 ; 1.027781e-02 ];

%-- Image #17:
omc_17 = [ 1.500705e+00 ; 1.588630e+00 ; 8.241153e-01 ];
Tc_17  = [ -6.959829e-03 ; -1.162411e-02 ; 7.441050e-01 ];
omc_error_17 = [ 1.958404e-02 ; 1.601927e-02 ; 2.223674e-02 ];
Tc_error_17  = [ 1.592518e-02 ; 1.487883e-02 ; 9.685206e-03 ];

%-- Image #18:
omc_18 = [ NaN ; NaN ; NaN ];
Tc_18  = [ NaN ; NaN ; NaN ];
omc_error_18 = [ NaN ; NaN ; NaN ];
Tc_error_18  = [ NaN ; NaN ; NaN ];

%-- Image #19:
omc_19 = [ 1.856350e+00 ; 1.834587e+00 ; 3.437282e-01 ];
Tc_19  = [ 5.019576e-02 ; 5.503072e-03 ; 8.177907e-01 ];
omc_error_19 = [ 1.942609e-02 ; 1.463298e-02 ; 2.659424e-02 ];
Tc_error_19  = [ 1.747649e-02 ; 1.633818e-02 ; 1.016739e-02 ];

%-- Image #20:
omc_20 = [ 1.816582e+00 ; 1.770891e+00 ; 3.582081e-01 ];
Tc_20  = [ 6.498957e-02 ; -6.589099e-03 ; 8.544835e-01 ];
omc_error_20 = [ 1.935144e-02 ; 1.504200e-02 ; 2.583598e-02 ];
Tc_error_20  = [ 1.827920e-02 ; 1.707381e-02 ; 1.073856e-02 ];

%-- Image #21:
omc_21 = [ 1.571454e+00 ; 1.213068e+00 ; -1.398134e-01 ];
Tc_21  = [ 7.866983e-02 ; -4.148195e-02 ; 8.498855e-01 ];
omc_error_21 = [ 1.833108e-02 ; 1.703915e-02 ; 2.096951e-02 ];
Tc_error_21  = [ 1.824708e-02 ; 1.690660e-02 ; 1.162842e-02 ];

%-- Image #22:
omc_22 = [ 1.984776e+00 ; 1.716850e+00 ; -2.973240e-01 ];
Tc_22  = [ -3.720464e-03 ; -7.573851e-03 ; 7.690649e-01 ];
omc_error_22 = [ 1.472360e-02 ; 1.534256e-02 ; 2.835094e-02 ];
Tc_error_22  = [ 1.645606e-02 ; 1.531467e-02 ; 1.009322e-02 ];

%-- Image #23:
omc_23 = [ 1.601572e+00 ; 1.653888e+00 ; 4.437059e-01 ];
Tc_23  = [ 4.126762e-02 ; -1.198328e-02 ; 7.393387e-01 ];
omc_error_23 = [ 1.894885e-02 ; 1.599743e-02 ; 2.304618e-02 ];
Tc_error_23  = [ 1.580019e-02 ; 1.477258e-02 ; 9.491257e-03 ];

%-- Image #24:
omc_24 = [ 1.692473e+00 ; 1.769976e+00 ; 3.070247e-01 ];
Tc_24  = [ -5.638135e-02 ; 8.830775e-04 ; 9.029853e-01 ];
omc_error_24 = [ 1.739996e-02 ; 1.555373e-02 ; 2.366879e-02 ];
Tc_error_24  = [ 1.936154e-02 ; 1.806143e-02 ; 1.129567e-02 ];

%-- Image #25:
omc_25 = [ 2.004954e+00 ; 1.908779e+00 ; -9.929827e-02 ];
Tc_25  = [ 1.270902e-02 ; -4.513085e-03 ; 9.994755e-01 ];
omc_error_25 = [ 1.609375e-02 ; 1.598546e-02 ; 3.051232e-02 ];
Tc_error_25  = [ 2.137756e-02 ; 1.993360e-02 ; 1.266002e-02 ];

