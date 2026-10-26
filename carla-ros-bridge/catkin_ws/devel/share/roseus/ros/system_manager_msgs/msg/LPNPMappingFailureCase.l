;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LPNPMappingFailureCase)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LPNPMappingFailureCase (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE")
  (make-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))

(in-package "ROS")
;;//! \htmlinclude LPNPMappingFailureCase.msg.html


(intern "*FAILURE_UNDEFINED_CASE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_UNDEFINED_CASE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_UNDEFINED_CASE* 0)
(intern "*FAILUER_BACK_UP_AT_THE_BEGINNING*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILUER_BACK_UP_AT_THE_BEGINNING* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILUER_BACK_UP_AT_THE_BEGINNING* 1)
(intern "*FAILURE_TOO_SHORT_TRAVERL_DISTANCE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_TOO_SHORT_TRAVERL_DISTANCE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TOO_SHORT_TRAVERL_DISTANCE* 2)
(intern "*FAILURE_TOO_LONG_BACK_UP_DISTANCE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_TOO_LONG_BACK_UP_DISTANCE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TOO_LONG_BACK_UP_DISTANCE* 3)
(intern "*FAILURE_STEEP_SLOP*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_STEEP_SLOP* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_STEEP_SLOP* 4)
(intern "*FAILURE_HEAD_IN_PARKING*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_HEAD_IN_PARKING* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_HEAD_IN_PARKING* 5)
(intern "*FAILURE_NOT_PARKED_IN_PARKING_SLOT*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_NOT_PARKED_IN_PARKING_SLOT* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_NOT_PARKED_IN_PARKING_SLOT* 6)
(intern "*FAILURE_ROUTE_REPEAT*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_ROUTE_REPEAT* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_ROUTE_REPEAT* 7)
(intern "*FAILURE_LACK_ELEMENT*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_LACK_ELEMENT* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_LACK_ELEMENT* 8)
(intern "*FAILURE_SILENT_MAPPING_TOO_LONG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SILENT_MAPPING_TOO_LONG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SILENT_MAPPING_TOO_LONG* 9)
(intern "*FAILURE_USER_MAPPING_TOO_LONG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_USER_MAPPING_TOO_LONG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_USER_MAPPING_TOO_LONG* 10)
(intern "*FAILURE_USER_MAPPING_TIME_TOO_LONG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_USER_MAPPING_TIME_TOO_LONG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_USER_MAPPING_TIME_TOO_LONG* 11)
(intern "*FAILURE_TRAJ_SEG_LENGTH_TOO_LONG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_TRAJ_SEG_LENGTH_TOO_LONG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TRAJ_SEG_LENGTH_TOO_LONG* 12)
(intern "*FAILURE_VERIFY_MAP_TIME_TOO_LONG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_VERIFY_MAP_TIME_TOO_LONG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_VERIFY_MAP_TIME_TOO_LONG* 13)
(intern "*FAILURE_BAD_REFERENCE_POINT*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_BAD_REFERENCE_POINT* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_BAD_REFERENCE_POINT* 14)
(intern "*FAILURE_DB_WRITE_ERROR*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_DB_WRITE_ERROR* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_DB_WRITE_ERROR* 15)
(intern "*FAILURE_SILENTMAPPING_LACK_SLOPE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SILENTMAPPING_LACK_SLOPE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SILENTMAPPING_LACK_SLOPE* 16)
(intern "*FAILURE_TRAJECTORY_SMOOTH_ERROR*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_TRAJECTORY_SMOOTH_ERROR* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TRAJECTORY_SMOOTH_ERROR* 17)
(intern "*FAILURE_ROAD_POINT_LESS*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_ROAD_POINT_LESS* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_ROAD_POINT_LESS* 18)
(intern "*FAILURE_TRAJECTORY_TURN_AROUND*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_TRAJECTORY_TURN_AROUND* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TRAJECTORY_TURN_AROUND* 19)
(intern "*FAILURE_ABORT_MAPPING*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_ABORT_MAPPING* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_ABORT_MAPPING* 20)
(intern "*FAILURE_MODULE_PAUSE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_MODULE_PAUSE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_MODULE_PAUSE* 21)
(intern "*FAILURE_NOT_SAVE_FOR_TOO_LONG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_NOT_SAVE_FOR_TOO_LONG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_NOT_SAVE_FOR_TOO_LONG* 22)
(intern "*FAILURE_SPAMAP_ALLOC*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_ALLOC* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_ALLOC* 100)
(intern "*FAILURE_SPAMAP_NON_CREATED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_NON_CREATED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NON_CREATED* 101)
(intern "*FAILURE_SPAMAP_NULL_PARAM*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_NULL_PARAM* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NULL_PARAM* 102)
(intern "*FAILURE_SPAMAP_NOT_SUPPORTED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_NOT_SUPPORTED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NOT_SUPPORTED* 103)
(intern "*FAILURE_SPAMAP_UNSUPPROT_CMD*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_UNSUPPROT_CMD* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNSUPPROT_CMD* 104)
(intern "*FAILURE_SPAMAP_CAMEAR_NUM*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_CAMEAR_NUM* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CAMEAR_NUM* 105)
(intern "*FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL* 106)
(intern "*FAILURE_SPAMAP_STITCH_IMG_IS_NULL*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_STITCH_IMG_IS_NULL* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_STITCH_IMG_IS_NULL* 107)
(intern "*FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL* 108)
(intern "*FAILURE_SPAMAP_REJECTED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_REJECTED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_REJECTED* 109)
(intern "*FAILURE_SPAMAP_NO_MAP_INFO_FOUND*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_NO_MAP_INFO_FOUND* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NO_MAP_INFO_FOUND* 110)
(intern "*FAILURE_SPAMAP_INTERNAL*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INTERNAL* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INTERNAL* 111)
(intern "*FAILURE_SPAMAP_UNKNOWN*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_UNKNOWN* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNKNOWN* 112)
(intern "*FAILURE_SPAMAP_CHANGED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_CHANGED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CHANGED* 113)
(intern "*FAILURE_SPAMAP_LOAD_CAMERA_PARAMS*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_LOAD_CAMERA_PARAMS* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_LOAD_CAMERA_PARAMS* 114)
(intern "*FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG* 115)
(intern "*FAILURE_SPAMAP_INVALID_CONFIG*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_CONFIG* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_CONFIG* 116)
(intern "*FAILURE_SPAMAP_INIT_EGO*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INIT_EGO* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INIT_EGO* 117)
(intern "*FAILURE_SPAMAP_EGO_LOST*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_EGO_LOST* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_EGO_LOST* 118)
(intern "*FAILURE_SPAMAP_CREATE_SPAMAPPER*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_CREATE_SPAMAPPER* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CREATE_SPAMAPPER* 119)
(intern "*FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER* 120)
(intern "*FAILURE_SPAMAP_INVALID_POI_TYPE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_POI_TYPE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_POI_TYPE* 121)
(intern "*FAILURE_SPAMAP_INVALID_SPA_HANDLE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_SPA_HANDLE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_SPA_HANDLE* 122)
(intern "*FAILURE_SPAMAP_SAVE_MAP*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_SAVE_MAP* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_SAVE_MAP* 123)
(intern "*FAILURE_SPAMAP_INVALID_MAP*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_MAP* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_MAP* 124)
(intern "*FAILURE_SPAMAP_UNVERIFIED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_UNVERIFIED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNVERIFIED* 125)
(intern "*FAILURE_SPAMAP_VERIFY_FAILED*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_VERIFY_FAILED* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_VERIFY_FAILED* 126)
(intern "*FAILURE_SPAMAP_LOAD_PARAM*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_LOAD_PARAM* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_LOAD_PARAM* 127)
(intern "*FAILURE_SPAMAP_INVALID_CAMERA*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_CAMERA* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_CAMERA* 128)
(intern "*FAILURE_SPAMAP_INVERSE_STAMP_WHEEL*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVERSE_STAMP_WHEEL* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVERSE_STAMP_WHEEL* 129)
(intern "*FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER* 130)
(intern "*FAILURE_SPAMAP_UNSUPPORTED_TASK*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_UNSUPPORTED_TASK* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNSUPPORTED_TASK* 131)
(intern "*FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE* 132)
(intern "*FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE*" (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(shadow '*FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE* (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPPINGFAILURECASE"))
(defconstant system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE* 133)

(defun system_manager_msgs::LPNPMappingFailureCase-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_UNDEFINED_CASE*)
        ((= const 1) 'system_manager_msgs::LPNPMappingFailureCase::*FAILUER_BACK_UP_AT_THE_BEGINNING*)
        ((= const 2) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TOO_SHORT_TRAVERL_DISTANCE*)
        ((= const 3) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TOO_LONG_BACK_UP_DISTANCE*)
        ((= const 4) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_STEEP_SLOP*)
        ((= const 5) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_HEAD_IN_PARKING*)
        ((= const 6) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_NOT_PARKED_IN_PARKING_SLOT*)
        ((= const 7) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_ROUTE_REPEAT*)
        ((= const 8) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_LACK_ELEMENT*)
        ((= const 9) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SILENT_MAPPING_TOO_LONG*)
        ((= const 10) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_USER_MAPPING_TOO_LONG*)
        ((= const 11) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_USER_MAPPING_TIME_TOO_LONG*)
        ((= const 12) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TRAJ_SEG_LENGTH_TOO_LONG*)
        ((= const 13) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_VERIFY_MAP_TIME_TOO_LONG*)
        ((= const 14) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_BAD_REFERENCE_POINT*)
        ((= const 15) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_DB_WRITE_ERROR*)
        ((= const 16) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SILENTMAPPING_LACK_SLOPE*)
        ((= const 17) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TRAJECTORY_SMOOTH_ERROR*)
        ((= const 18) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_ROAD_POINT_LESS*)
        ((= const 19) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_TRAJECTORY_TURN_AROUND*)
        ((= const 20) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_ABORT_MAPPING*)
        ((= const 21) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_MODULE_PAUSE*)
        ((= const 22) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_NOT_SAVE_FOR_TOO_LONG*)
        ((= const 100) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_ALLOC*)
        ((= const 101) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NON_CREATED*)
        ((= const 102) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NULL_PARAM*)
        ((= const 103) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NOT_SUPPORTED*)
        ((= const 104) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNSUPPROT_CMD*)
        ((= const 105) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CAMEAR_NUM*)
        ((= const 106) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL*)
        ((= const 107) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_STITCH_IMG_IS_NULL*)
        ((= const 108) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL*)
        ((= const 109) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_REJECTED*)
        ((= const 110) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_NO_MAP_INFO_FOUND*)
        ((= const 111) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INTERNAL*)
        ((= const 112) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNKNOWN*)
        ((= const 113) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CHANGED*)
        ((= const 114) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_LOAD_CAMERA_PARAMS*)
        ((= const 115) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG*)
        ((= const 116) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_CONFIG*)
        ((= const 117) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INIT_EGO*)
        ((= const 118) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_EGO_LOST*)
        ((= const 119) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_CREATE_SPAMAPPER*)
        ((= const 120) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER*)
        ((= const 121) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_POI_TYPE*)
        ((= const 122) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_SPA_HANDLE*)
        ((= const 123) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_SAVE_MAP*)
        ((= const 124) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_MAP*)
        ((= const 125) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNVERIFIED*)
        ((= const 126) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_VERIFY_FAILED*)
        ((= const 127) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_LOAD_PARAM*)
        ((= const 128) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_CAMERA*)
        ((= const 129) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVERSE_STAMP_WHEEL*)
        ((= const 130) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER*)
        ((= const 131) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_UNSUPPORTED_TASK*)
        ((= const 132) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE*)
        ((= const 133) 'system_manager_msgs::LPNPMappingFailureCase::*FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE*)
        (t nil)))

(defclass system_manager_msgs::LPNPMappingFailureCase
  :super ros::object
  :slots (_value ))

(defmethod system_manager_msgs::LPNPMappingFailureCase
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
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::LPNPMappingFailureCase :md5sum-) "6614f737e73d75f58b4b32dc54559ef4")
(setf (get system_manager_msgs::LPNPMappingFailureCase :datatype-) "system_manager_msgs/LPNPMappingFailureCase")
(setf (get system_manager_msgs::LPNPMappingFailureCase :definition-)
      "uint8 FAILURE_UNDEFINED_CASE = 0
uint8 FAILUER_BACK_UP_AT_THE_BEGINNING = 1
uint8 FAILURE_TOO_SHORT_TRAVERL_DISTANCE = 2
uint8 FAILURE_TOO_LONG_BACK_UP_DISTANCE = 3
uint8 FAILURE_STEEP_SLOP = 4
uint8 FAILURE_HEAD_IN_PARKING = 5
uint8 FAILURE_NOT_PARKED_IN_PARKING_SLOT = 6
uint8 FAILURE_ROUTE_REPEAT = 7
uint8 FAILURE_LACK_ELEMENT = 8
uint8 FAILURE_SILENT_MAPPING_TOO_LONG = 9
uint8 FAILURE_USER_MAPPING_TOO_LONG = 10
uint8 FAILURE_USER_MAPPING_TIME_TOO_LONG = 11
uint8 FAILURE_TRAJ_SEG_LENGTH_TOO_LONG = 12
uint8 FAILURE_VERIFY_MAP_TIME_TOO_LONG = 13
uint8 FAILURE_BAD_REFERENCE_POINT = 14
uint8 FAILURE_DB_WRITE_ERROR = 15
uint8 FAILURE_SILENTMAPPING_LACK_SLOPE = 16
uint8 FAILURE_TRAJECTORY_SMOOTH_ERROR = 17
uint8 FAILURE_ROAD_POINT_LESS = 18
uint8 FAILURE_TRAJECTORY_TURN_AROUND = 19
uint8 FAILURE_ABORT_MAPPING = 20
uint8 FAILURE_MODULE_PAUSE = 21
uint8 FAILURE_NOT_SAVE_FOR_TOO_LONG = 22
uint8 FAILURE_SPAMAP_ALLOC = 100
uint8 FAILURE_SPAMAP_NON_CREATED = 101
uint8 FAILURE_SPAMAP_NULL_PARAM = 102
uint8 FAILURE_SPAMAP_NOT_SUPPORTED = 103
uint8 FAILURE_SPAMAP_UNSUPPROT_CMD = 104
uint8 FAILURE_SPAMAP_CAMEAR_NUM = 105
uint8 FAILURE_SPAMAP_CAMEAR_IMG_IS_NULL = 106
uint8 FAILURE_SPAMAP_STITCH_IMG_IS_NULL = 107
uint8 FAILURE_SPAMAP_PARAM_INOUT_BUFF_TOOSMALL = 108
uint8 FAILURE_SPAMAP_REJECTED = 109
uint8 FAILURE_SPAMAP_NO_MAP_INFO_FOUND = 110
uint8 FAILURE_SPAMAP_INTERNAL = 111
uint8 FAILURE_SPAMAP_UNKNOWN = 112
uint8 FAILURE_SPAMAP_CHANGED = 113
uint8 FAILURE_SPAMAP_LOAD_CAMERA_PARAMS = 114
uint8 FAILURE_SPAMAP_LOAD_ALGORITHM_CONFIG = 115
uint8 FAILURE_SPAMAP_INVALID_CONFIG = 116
uint8 FAILURE_SPAMAP_INIT_EGO = 117
uint8 FAILURE_SPAMAP_EGO_LOST = 118
uint8 FAILURE_SPAMAP_CREATE_SPAMAPPER = 119
uint8 FAILURE_SPAMAP_INIT_SEMANTIC_MAPPER = 120
uint8 FAILURE_SPAMAP_INVALID_POI_TYPE = 121
uint8 FAILURE_SPAMAP_INVALID_SPA_HANDLE = 122
uint8 FAILURE_SPAMAP_SAVE_MAP = 123
uint8 FAILURE_SPAMAP_INVALID_MAP = 124
uint8 FAILURE_SPAMAP_UNVERIFIED = 125
uint8 FAILURE_SPAMAP_VERIFY_FAILED = 126
uint8 FAILURE_SPAMAP_LOAD_PARAM = 127
uint8 FAILURE_SPAMAP_INVALID_CAMERA = 128
uint8 FAILURE_SPAMAP_INVERSE_STAMP_WHEEL = 129
uint8 FAILURE_SPAMAP_EMPTY_WHEEL_ENCODER = 130
uint8 FAILURE_SPAMAP_UNSUPPORTED_TASK = 131
uint8 FAILURE_SPAMAP_INVALID_TRAJECTORY_TYPE = 132
uint8 FAILURE_SPAMAP_INVALID_FINAL_MAP_STATE = 133
uint8 value

")



(provide :system_manager_msgs/LPNPMappingFailureCase "6614f737e73d75f58b4b32dc54559ef4")


