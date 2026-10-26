;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'CamCalibDetailedErrorCodeEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM")
  (make-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))

(in-package "ROS")
;;//! \htmlinclude CamCalibDetailedErrorCodeEnum.msg.html


(intern "*NORMAL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*NORMAL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*NORMAL* 0)
(intern "*CALIB_READ_CONFIG_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_READ_CONFIG_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_READ_CONFIG_FAIL* 1)
(intern "*CALIB_CREATE_RESULT_FILE_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_CREATE_RESULT_FILE_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_CREATE_RESULT_FILE_FAIL* 2)
(intern "*CALIB_INIT_GROUND_PATTERN_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_INIT_GROUND_PATTERN_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_INIT_GROUND_PATTERN_FAIL* 3)
(intern "*CALIB_INIT_SURROUND_PATTERN_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_INIT_SURROUND_PATTERN_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_INIT_SURROUND_PATTERN_FAIL* 4)
(intern "*CALIB_READ_INIT_FILE_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_READ_INIT_FILE_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_READ_INIT_FILE_FAIL* 5)
(intern "*CALIB_IMAGE_SIZE_WRONG*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_IMAGE_SIZE_WRONG* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_IMAGE_SIZE_WRONG* 6)
(intern "*CALIB_IMAGE_CHANNEL_WRONG*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_IMAGE_CHANNEL_WRONG* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_IMAGE_CHANNEL_WRONG* 7)
(intern "*CALIB_FISHEYE_DETECT_TAG_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_FISHEYE_DETECT_TAG_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_FISHEYE_DETECT_TAG_FAIL* 8)
(intern "*CALIB_NORMAL_DETECT_TAG_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_NORMAL_DETECT_TAG_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_NORMAL_DETECT_TAG_FAIL* 9)
(intern "*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT* 10)
(intern "*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT* 11)
(intern "*CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT* 12)
(intern "*CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT* 13)
(intern "*CALIB_OUTPUT_FILE_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_OUTPUT_FILE_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_OUTPUT_FILE_FAIL* 14)
(intern "*EGO_INIT_FAILED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_INIT_FAILED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*EGO_INIT_FAILED* 1000)
(intern "*EGO_POSE_UNACCESSABLE*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_POSE_UNACCESSABLE* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*EGO_POSE_UNACCESSABLE* 1001)
(intern "*EGO_VISUAL_DISABLED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_VISUAL_DISABLED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*EGO_VISUAL_DISABLED* 1002)
(intern "*CAM_NEED_CALIB_NULL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_NEED_CALIB_NULL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_NEED_CALIB_NULL* 1003)
(intern "*CAM_UPDATE_PARAM_FAILED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_UPDATE_PARAM_FAILED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_UPDATE_PARAM_FAILED* 1004)
(intern "*CAM_SAVE_PARAM_FAILED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_SAVE_PARAM_FAILED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_SAVE_PARAM_FAILED* 1005)
(intern "*CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS* 1006)
(intern "*IMU_EXTRINSIC_UNFIXED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*IMU_EXTRINSIC_UNFIXED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*IMU_EXTRINSIC_UNFIXED* 1007)
(intern "*IMU_BIAS_UNESTIMATED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*IMU_BIAS_UNESTIMATED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*IMU_BIAS_UNESTIMATED* 1008)
(intern "*IMU_BIAS_UNFIXED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*IMU_BIAS_UNFIXED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*IMU_BIAS_UNFIXED* 1009)
(intern "*COV_INCREASE_ABNORMALLY*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*COV_INCREASE_ABNORMALLY* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*COV_INCREASE_ABNORMALLY* 1010)
(intern "*COV_NOT_DECREASE*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*COV_NOT_DECREASE* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*COV_NOT_DECREASE* 1011)
(intern "*COV_UNACCESSABLE*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*COV_UNACCESSABLE* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*COV_UNACCESSABLE* 1012)
(intern "*UNSTATIC_LAUNCH*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*UNSTATIC_LAUNCH* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*UNSTATIC_LAUNCH* 1013)
(intern "*MIN_MILEAGE_UNREACHED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*MIN_MILEAGE_UNREACHED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*MIN_MILEAGE_UNREACHED* 1014)
(intern "*MAX_MILEAGE_UNCONVERGED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*MAX_MILEAGE_UNCONVERGED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*MAX_MILEAGE_UNCONVERGED* 1015)
(intern "*INSUFFICIENT_TURNS*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*INSUFFICIENT_TURNS* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INSUFFICIENT_TURNS* 1016)
(intern "*LARGE_DEVIATION_IN_DESIGNED_ROTATION*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*LARGE_DEVIATION_IN_DESIGNED_ROTATION* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*LARGE_DEVIATION_IN_DESIGNED_ROTATION* 1500)
(intern "*LARGE_DEVIATION_CALIB_AND_VALIDATOR*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*LARGE_DEVIATION_CALIB_AND_VALIDATOR* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*LARGE_DEVIATION_CALIB_AND_VALIDATOR* 1501)
(intern "*CAM_SET_INIT_PARAM_FAILED*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_SET_INIT_PARAM_FAILED* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_SET_INIT_PARAM_FAILED* 2000)
(intern "*CAM_LOWER_FREQUENCY*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_LOWER_FREQUENCY* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_LOWER_FREQUENCY* 2001)
(intern "*CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE* 2002)
(intern "*CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE* 2003)
(intern "*SPEED_TOO_SLOW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*SPEED_TOO_SLOW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*SPEED_TOO_SLOW* 2100)
(intern "*ANGLE_TOO_BIG*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*ANGLE_TOO_BIG* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*ANGLE_TOO_BIG* 2101)
(intern "*INNER_CAMERA_MATCH_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*INNER_CAMERA_MATCH_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INNER_CAMERA_MATCH_TOO_FEW* 2102)
(intern "*INTER_CAMERA_MATCH_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*INTER_CAMERA_MATCH_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INTER_CAMERA_MATCH_TOO_FEW* 2103)
(intern "*KEYPOINTS_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*KEYPOINTS_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*KEYPOINTS_TOO_FEW* 2104)
(intern "*INIT_MATCH_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*INIT_MATCH_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INIT_MATCH_TOO_FEW* 2105)
(intern "*INIT_MAP_POINTS_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*INIT_MAP_POINTS_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INIT_MAP_POINTS_TOO_FEW* 2106)
(intern "*SFM_SCALE_DRIFT*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*SFM_SCALE_DRIFT* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*SFM_SCALE_DRIFT* 2107)
(intern "*FAIL_TO_ADD_FRAME*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*FAIL_TO_ADD_FRAME* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*FAIL_TO_ADD_FRAME* 2108)
(intern "*CONSTRUCTION_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*CONSTRUCTION_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CONSTRUCTION_TOO_FEW* 2109)
(intern "*FULL_BA_FAIL*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*FULL_BA_FAIL* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*FULL_BA_FAIL* 2110)
(intern "*RESULT_INCONSISTENT*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*RESULT_INCONSISTENT* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*RESULT_INCONSISTENT* 2111)
(intern "*WRONG_BUFFER_SIZE*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*WRONG_BUFFER_SIZE* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*WRONG_BUFFER_SIZE* 2112)
(intern "*ARRAY_OVERREACH*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*ARRAY_OVERREACH* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*ARRAY_OVERREACH* 2113)
(intern "*PATCHES_RESET*" (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(shadow '*PATCHES_RESET* (find-package "CALIB_INTERFACE_MSGS::CAMCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*PATCHES_RESET* 2114)

(defun calib_interface_msgs::CamCalibDetailedErrorCodeEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*NORMAL*)
        ((= const 1) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_READ_CONFIG_FAIL*)
        ((= const 2) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_CREATE_RESULT_FILE_FAIL*)
        ((= const 3) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_INIT_GROUND_PATTERN_FAIL*)
        ((= const 4) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_INIT_SURROUND_PATTERN_FAIL*)
        ((= const 5) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_READ_INIT_FILE_FAIL*)
        ((= const 6) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_IMAGE_SIZE_WRONG*)
        ((= const 7) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_IMAGE_CHANNEL_WRONG*)
        ((= const 8) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_FISHEYE_DETECT_TAG_FAIL*)
        ((= const 9) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_NORMAL_DETECT_TAG_FAIL*)
        ((= const 10) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT*)
        ((= const 11) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT*)
        ((= const 12) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT*)
        ((= const 13) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT*)
        ((= const 14) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CALIB_OUTPUT_FILE_FAIL*)
        ((= const 1000) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*EGO_INIT_FAILED*)
        ((= const 1001) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*EGO_POSE_UNACCESSABLE*)
        ((= const 1002) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*EGO_VISUAL_DISABLED*)
        ((= const 1003) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_NEED_CALIB_NULL*)
        ((= const 1004) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_UPDATE_PARAM_FAILED*)
        ((= const 1005) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_SAVE_PARAM_FAILED*)
        ((= const 1006) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS*)
        ((= const 1007) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*IMU_EXTRINSIC_UNFIXED*)
        ((= const 1008) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*IMU_BIAS_UNESTIMATED*)
        ((= const 1009) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*IMU_BIAS_UNFIXED*)
        ((= const 1010) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*COV_INCREASE_ABNORMALLY*)
        ((= const 1011) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*COV_NOT_DECREASE*)
        ((= const 1012) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*COV_UNACCESSABLE*)
        ((= const 1013) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*UNSTATIC_LAUNCH*)
        ((= const 1014) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*MIN_MILEAGE_UNREACHED*)
        ((= const 1015) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*MAX_MILEAGE_UNCONVERGED*)
        ((= const 1016) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INSUFFICIENT_TURNS*)
        ((= const 1500) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*LARGE_DEVIATION_IN_DESIGNED_ROTATION*)
        ((= const 1501) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*LARGE_DEVIATION_CALIB_AND_VALIDATOR*)
        ((= const 2000) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_SET_INIT_PARAM_FAILED*)
        ((= const 2001) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_LOWER_FREQUENCY*)
        ((= const 2002) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE*)
        ((= const 2003) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE*)
        ((= const 2100) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*SPEED_TOO_SLOW*)
        ((= const 2101) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*ANGLE_TOO_BIG*)
        ((= const 2102) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INNER_CAMERA_MATCH_TOO_FEW*)
        ((= const 2103) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INTER_CAMERA_MATCH_TOO_FEW*)
        ((= const 2104) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*KEYPOINTS_TOO_FEW*)
        ((= const 2105) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INIT_MATCH_TOO_FEW*)
        ((= const 2106) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*INIT_MAP_POINTS_TOO_FEW*)
        ((= const 2107) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*SFM_SCALE_DRIFT*)
        ((= const 2108) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*FAIL_TO_ADD_FRAME*)
        ((= const 2109) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*CONSTRUCTION_TOO_FEW*)
        ((= const 2110) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*FULL_BA_FAIL*)
        ((= const 2111) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*RESULT_INCONSISTENT*)
        ((= const 2112) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*WRONG_BUFFER_SIZE*)
        ((= const 2113) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*ARRAY_OVERREACH*)
        ((= const 2114) 'calib_interface_msgs::CamCalibDetailedErrorCodeEnum::*PATCHES_RESET*)
        (t nil)))

(defclass calib_interface_msgs::CamCalibDetailedErrorCodeEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::CamCalibDetailedErrorCodeEnum
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get calib_interface_msgs::CamCalibDetailedErrorCodeEnum :md5sum-) "2bccfbab3c74c563c50dbded9c0e7f03")
(setf (get calib_interface_msgs::CamCalibDetailedErrorCodeEnum :datatype-) "calib_interface_msgs/CamCalibDetailedErrorCodeEnum")
(setf (get calib_interface_msgs::CamCalibDetailedErrorCodeEnum :definition-)
      "uint16 NORMAL = 0
uint16 CALIB_READ_CONFIG_FAIL = 1
uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
uint16 CALIB_INIT_GROUND_PATTERN_FAIL = 3
uint16 CALIB_INIT_SURROUND_PATTERN_FAIL = 4
uint16 CALIB_READ_INIT_FILE_FAIL = 5
uint16 CALIB_IMAGE_SIZE_WRONG = 6
uint16 CALIB_IMAGE_CHANNEL_WRONG = 7
uint16 CALIB_FISHEYE_DETECT_TAG_FAIL = 8
uint16 CALIB_NORMAL_DETECT_TAG_FAIL = 9
uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_INIT = 10
uint16 CALIB_ABNORMAL_REPROJECTION_ERROR_OF_OPT = 11
uint16 CALIB_ABNORMAL_ROTATION_ERROR_WITH_INIT = 12
uint16 CALIB_ABNORMAL_TRANSLATION_ERROR_WITH_INIT = 13
uint16 CALIB_OUTPUT_FILE_FAIL = 14
uint16 EGO_INIT_FAILED = 1000
uint16 EGO_POSE_UNACCESSABLE = 1001
uint16 EGO_VISUAL_DISABLED = 1002
uint16 CAM_NEED_CALIB_NULL = 1003
uint16 CAM_UPDATE_PARAM_FAILED = 1004
uint16 CAM_SAVE_PARAM_FAILED = 1005
uint16 CAM_INSUFFICIENT_MATCHING_FEATURE_CROSS = 1006
uint16 IMU_EXTRINSIC_UNFIXED = 1007
uint16 IMU_BIAS_UNESTIMATED = 1008
uint16 IMU_BIAS_UNFIXED = 1009
uint16 COV_INCREASE_ABNORMALLY = 1010
uint16 COV_NOT_DECREASE = 1011
uint16 COV_UNACCESSABLE = 1012
uint16 UNSTATIC_LAUNCH = 1013
uint16 MIN_MILEAGE_UNREACHED = 1014
uint16 MAX_MILEAGE_UNCONVERGED = 1015
uint16 INSUFFICIENT_TURNS = 1016
uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1500
uint16 LARGE_DEVIATION_CALIB_AND_VALIDATOR = 1501
uint16 CAM_SET_INIT_PARAM_FAILED = 2000
uint16 CAM_LOWER_FREQUENCY = 2001
uint16 CAM_INSUFFICIENT_TRACKING_FEATURE_SINGLE = 2002
uint16 CAM_INSUFFICIENT_UPDATING_FEATURE_SINGLE = 2003
uint16 SPEED_TOO_SLOW = 2100
uint16 ANGLE_TOO_BIG = 2101
uint16 INNER_CAMERA_MATCH_TOO_FEW = 2102
uint16 INTER_CAMERA_MATCH_TOO_FEW = 2103
uint16 KEYPOINTS_TOO_FEW = 2104
uint16 INIT_MATCH_TOO_FEW = 2105
uint16 INIT_MAP_POINTS_TOO_FEW = 2106
uint16 SFM_SCALE_DRIFT = 2107
uint16 FAIL_TO_ADD_FRAME = 2108
uint16 CONSTRUCTION_TOO_FEW = 2109
uint16 FULL_BA_FAIL = 2110
uint16 RESULT_INCONSISTENT = 2111
uint16 WRONG_BUFFER_SIZE = 2112
uint16 ARRAY_OVERREACH = 2113
uint16 PATCHES_RESET = 2114
uint16 value

")



(provide :calib_interface_msgs/CamCalibDetailedErrorCodeEnum "2bccfbab3c74c563c50dbded9c0e7f03")


