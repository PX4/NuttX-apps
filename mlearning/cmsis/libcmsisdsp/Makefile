############################################################################
# apps/mlearning/cmsis/libcmsisdsp/Makefile
#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.  The
# ASF licenses this file to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance with the
# License.  You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
# License for the specific language governing permissions and limitations
# under the License.
#
############################################################################

include $(APPDIR)/Make.defs

ifeq ($(CONFIG_EXTERNALS_CMSIS_DSP_ARM_MATH_MATRIX_CHECK),y)
CFLAGS += -DARM_MATH_MATRIX_CHECK
endif
ifeq ($(CONFIG_EXTERNALS_CMSIS_DSP_ARM_MATH_ROUNDING),y)
CFLAGS += -DARM_MATH_ROUNDING
endif

CFLAGS += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" $(APPDIR)/mlearning/cmsis/CMSIS_5/CMSIS/DSP/PrivateInclude/}
CXXFLAGS += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" $(APPDIR)/mlearning/cmsis/CMSIS_5/CMSIS/DSP/PrivateInclude/}

CMSIS5_DSP := ../CMSIS_5/CMSIS/DSP/Source
CSRCS += $(CMSIS5_DSP)/SVMFunctions/SVMFunctions.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_rbf_init_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_polynomial_predict_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_linear_init_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_linear_init_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_polynomial_init_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_sigmoid_init_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_sigmoid_predict_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_rbf_predict_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_linear_predict_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_rbf_predict_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/SVMFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_polynomial_predict_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_sigmoid_predict_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_polynomial_init_f16.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_rbf_init_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_linear_predict_f32.c
CSRCS += $(CMSIS5_DSP)/SVMFunctions/arm_svm_sigmoid_init_f32.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_spline_interp_f32.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_spline_interp_init_f32.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_bilinear_interp_q31.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_bilinear_interp_q7.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_linear_interp_f32.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_bilinear_interp_q15.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/InterpolationFunctions.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/InterpolationFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_linear_interp_q7.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_bilinear_interp_f32.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_linear_interp_q31.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_linear_interp_q15.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_bilinear_interp_f16.c
CSRCS += $(CMSIS5_DSP)/InterpolationFunctions/arm_linear_interp_f16.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/FastMathFunctions.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_sqrt_q15.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_sin_q31.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_sin_f32.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_vlog_f32.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_sqrt_q31.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_cos_q15.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_sin_q15.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_vinverse_f16.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_vexp_f16.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_cos_q31.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_cos_f32.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_divide_q15.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_vlog_f16.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/FastMathFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/FastMathFunctions/arm_vexp_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_opt_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df2T_init_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_iir_lattice_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_fast_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_iir_lattice_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_opt_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_iir_lattice_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_interpolate_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_lattice_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_opt_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_fast_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_fast_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_interpolate_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_fast_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_fast_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_interpolate_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_fast_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_iir_lattice_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_norm_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_levinson_durbin_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df2T_f64.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_lattice_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_stereo_df2T_init_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_fast_opt_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_norm_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_fast_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_norm_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/FilteringFunctions.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_interpolate_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_fast_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_opt_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_lattice_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_32x64_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_init_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_levinson_durbin_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_opt_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_iir_lattice_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df2T_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_fast_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_lattice_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_init_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_levinson_durbin_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_init_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_init_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_stereo_df2T_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_norm_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_fast_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_norm_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df2T_init_f64.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_fast_opt_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_lattice_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_iir_lattice_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_fast_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df2T_f16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_interpolate_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_lattice_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_opt_q7.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_decimate_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/FilteringFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_interpolate_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df2T_init_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_correlate_fast_opt_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_biquad_cascade_df1_32x64_init_q31.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_fir_sparse_f32.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_fast_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_lms_norm_init_q15.c
CSRCS += $(CMSIS5_DSP)/FilteringFunctions/arm_conv_partial_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_scale_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_abs_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_negate_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_negate_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_sub_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_offset_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_xor_u8.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_sub_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_scale_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_clip_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_scale_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_clip_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_add_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_scale_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_mult_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_sub_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_xor_u16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_negate_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_offset_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_sub_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_not_u8.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_dot_prod_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_shift_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_not_u32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/BasicMathFunctions.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_shift_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_shift_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_add_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_and_u16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_offset_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_mult_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_mult_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_negate_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_add_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_and_u32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_dot_prod_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_dot_prod_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_offset_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_dot_prod_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_abs_q7.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_or_u32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_offset_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_and_u8.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_sub_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_or_u8.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_clip_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/BasicMathFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_abs_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_xor_u32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_negate_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_dot_prod_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_not_u16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_add_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_mult_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_clip_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_or_u16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_abs_q31.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_add_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_mult_f16.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_clip_f32.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_abs_q15.c
CSRCS += $(CMSIS5_DSP)/BasicMathFunctions/arm_scale_f32.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/ControllerFunctions.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_pid_reset_f32.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_sin_cos_q31.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_pid_init_q31.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_sin_cos_f32.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_pid_init_q15.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_pid_init_f32.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_pid_reset_q15.c
CSRCS += $(CMSIS5_DSP)/ControllerFunctions/arm_pid_reset_q31.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_weighted_sum_f16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/SupportFunctions.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q31_to_float.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_float_to_f16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_fill_q31.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q31_to_q15.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q15_to_f16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q15_to_float.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_copy_f16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_fill_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_weighted_sum_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_bubble_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q31_to_q7.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_copy_q31.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_fill_q7.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_copy_q7.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_insertion_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/SupportFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_barycenter_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_sort_init_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_copy_q15.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_fill_f16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_float_to_q31.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_bitonic_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_merge_sort_init_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_float_to_q7.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_barycenter_f16.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q15_to_q31.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_f16_to_float.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_merge_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_copy_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_fill_q15.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q7_to_q31.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_selection_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_float_to_q15.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_heap_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q7_to_float.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q7_to_q15.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_quick_sort_f32.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_f16_to_q15.c
CSRCS += $(CMSIS5_DSP)/SupportFunctions/arm_q15_to_q7.c
CSRCS += $(CMSIS5_DSP)/CommonTables/arm_common_tables.c
CSRCS += $(CMSIS5_DSP)/CommonTables/arm_mve_tables_f16.c
CSRCS += $(CMSIS5_DSP)/CommonTables/arm_mve_tables.c
CSRCS += $(CMSIS5_DSP)/CommonTables/CommonTablesF16.c
CSRCS += $(CMSIS5_DSP)/CommonTables/arm_const_structs.c
CSRCS += $(CMSIS5_DSP)/CommonTables/arm_common_tables_f16.c
CSRCS += $(CMSIS5_DSP)/CommonTables/CommonTables.c
CSRCS += $(CMSIS5_DSP)/CommonTables/arm_const_structs_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_braycurtis_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_chebyshev_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_cosine_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_canberra_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_cosine_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_cityblock_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_canberra_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_dice_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_boolean_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_jensenshannon_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_correlation_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_russellrao_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_braycurtis_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_minkowski_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_chebyshev_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_sokalmichener_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_sokalsneath_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_rogerstanimoto_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_hamming_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_kulsinski_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_jensenshannon_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_euclidean_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_cityblock_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/DistanceFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_yule_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_jaccard_distance.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_euclidean_distance_f32.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_minkowski_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/arm_correlation_distance_f16.c
CSRCS += $(CMSIS5_DSP)/DistanceFunctions/DistanceFunctions.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmax_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_rms_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_std_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_var_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_var_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_min_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_power_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_min_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_power_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_std_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmin_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_rms_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmax_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_entropy_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_mean_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_mean_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_std_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_mean_q7.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_logsumexp_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_std_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_power_q7.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_kullback_leibler_f64.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_no_idx_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_q7.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/StatisticsFunctions.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_logsumexp_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_rms_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_rms_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_logsumexp_dot_prod_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_mean_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmin_q7.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_min_q7.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmax_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmin_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_logsumexp_dot_prod_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_var_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_kullback_leibler_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmin_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_min_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_kullback_leibler_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmin_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmax_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_entropy_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_var_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_power_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_power_q31.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_no_idx_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_mean_f32.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_absmax_q7.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_entropy_f64.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_max_f16.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/arm_min_q15.c
CSRCS += $(CMSIS5_DSP)/StatisticsFunctions/StatisticsFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_ldlt_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_add_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_solve_lower_triangular_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_inverse_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_trans_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_inverse_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_init_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_solve_lower_triangular_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/MatrixFunctions.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_vec_mult_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/MatrixFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_trans_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_trans_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_vec_mult_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_sub_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_trans_q7.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_trans_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_mult_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_trans_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_trans_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_scale_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_vec_mult_q7.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_ldlt_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_solve_lower_triangular_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_mult_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_fast_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_trans_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_solve_upper_triangular_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_solve_upper_triangular_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_mult_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_mult_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cholesky_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_trans_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_vec_mult_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_scale_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cmplx_trans_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_sub_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_sub_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_inverse_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_solve_upper_triangular_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_add_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_init_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_init_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_add_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_sub_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_init_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_fast_q31.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_scale_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_scale_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cholesky_f64.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_cholesky_f32.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_vec_mult_f16.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_sub_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_add_q15.c
CSRCS += $(CMSIS5_DSP)/MatrixFunctions/arm_mat_mult_q7.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/QuaternionMathFunctions.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_rotation2quaternion_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion_normalize_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion_product_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion_product_single_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion_inverse_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion_norm_f32.c
CSRCS += $(CMSIS5_DSP)/QuaternionMathFunctions/arm_quaternion2rotation_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_bitreversal2.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_init_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/TransformFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_dct4_init_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_dct4_init_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_init_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_init_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_dct4_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_init_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_init_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_f64.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_init_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_dct4_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_dct4_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_init_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_dct4_init_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_init_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_fast_init_f64.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_init_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_fast_f64.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_init_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_init_f64.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_fast_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix8_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_bitreversal.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_init_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_init_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix4_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/TransformFunctions.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_init_q31.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix2_init_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_fast_init_f32.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_bitreversal_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_init_q15.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_fast_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_cfft_radix8_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_fast_init_f16.c
CSRCS += $(CMSIS5_DSP)/TransformFunctions/arm_rfft_q15.c
CSRCS += $(CMSIS5_DSP)/BayesFunctions/BayesFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/BayesFunctions/arm_gaussian_naive_bayes_predict_f32.c
CSRCS += $(CMSIS5_DSP)/BayesFunctions/arm_gaussian_naive_bayes_predict_f16.c
CSRCS += $(CMSIS5_DSP)/BayesFunctions/BayesFunctions.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_squared_f16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_squared_q15.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_squared_q31.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_cmplx_f32.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_conj_q15.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_real_f32.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_q15.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_dot_prod_f32.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_cmplx_f16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_cmplx_q31.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_q31.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_real_q15.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_dot_prod_q15.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_conj_f16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_conj_f32.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_squared_f32.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_cmplx_q15.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_dot_prod_q31.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/ComplexMathFunctions.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_f16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/ComplexMathFunctionsF16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_real_f16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_dot_prod_f16.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_conj_q31.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mult_real_q31.c
CSRCS += $(CMSIS5_DSP)/ComplexMathFunctions/arm_cmplx_mag_f32.c

CFLAGS += -ffast-math -Wno-shadow

BIN := libarm_math$(LIBEXT)

include $(APPDIR)/Application.mk