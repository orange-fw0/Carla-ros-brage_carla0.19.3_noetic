;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'CamOffcalibDetailedErrorCodeEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM")
  (make-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))

(in-package "ROS")
;;//! \htmlinclude CamOffcalibDetailedErrorCodeEnum.msg.html


(intern "*NORMAL*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*NORMAL* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*NORMAL* 0)
(intern "*EGO_INIT_FAILED*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_INIT_FAILED* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_INIT_FAILED* 1)
(intern "*NEED_CHECKED_CAM_NUM_ZERO*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*NEED_CHECKED_CAM_NUM_ZERO* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*NEED_CHECKED_CAM_NUM_ZERO* 2)
(intern "*EGO_POSE_CAM_VALID_UNACCESSABLE*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_POSE_CAM_VALID_UNACCESSABLE* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_POSE_CAM_VALID_UNACCESSABLE* 10)
(intern "*EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE* 11)
(intern "*EGO_STATE_CAM_VALID_FREQ_TOO_LOW*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_STATE_CAM_VALID_FREQ_TOO_LOW* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_STATE_CAM_VALID_FREQ_TOO_LOW* 12)
(intern "*EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW* 13)
(intern "*CAM_VALID_VISUAL_FEATURE_INFO_NULL*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_VALID_VISUAL_FEATURE_INFO_NULL* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_VISUAL_FEATURE_INFO_NULL* 50)
(intern "*CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW* 51)
(intern "*CAM_VALID_VTRACKFRAMEBUFFER_FILL*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_VALID_VTRACKFRAMEBUFFER_FILL* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_VTRACKFRAMEBUFFER_FILL* 52)
(intern "*CAM_VALID_STATEBUFFER_FILL*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_VALID_STATEBUFFER_FILL* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_STATEBUFFER_FILL* 53)
(intern "*CAM_VALID_VALID_FEATURE_NUM_TOO_FEW*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_VALID_VALID_FEATURE_NUM_TOO_FEW* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_VALID_FEATURE_NUM_TOO_FEW* 54)
(intern "*CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL* 100)
(intern "*CROSS_CAM_VALID_STATEBUFFER_FILL*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*CROSS_CAM_VALID_STATEBUFFER_FILL* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CROSS_CAM_VALID_STATEBUFFER_FILL* 101)
(intern "*UPDATE_CAM_ID_OUT_OF_RANGE*" (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*UPDATE_CAM_ID_OUT_OF_RANGE* (find-package "CALIB_INTERFACE_MSGS::CAMOFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*UPDATE_CAM_ID_OUT_OF_RANGE* 150)

(defun calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*NORMAL*)
        ((= const 1) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_INIT_FAILED*)
        ((= const 2) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*NEED_CHECKED_CAM_NUM_ZERO*)
        ((= const 10) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_POSE_CAM_VALID_UNACCESSABLE*)
        ((= const 11) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE*)
        ((= const 12) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_STATE_CAM_VALID_FREQ_TOO_LOW*)
        ((= const 13) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW*)
        ((= const 50) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_VISUAL_FEATURE_INFO_NULL*)
        ((= const 51) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW*)
        ((= const 52) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_VTRACKFRAMEBUFFER_FILL*)
        ((= const 53) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_STATEBUFFER_FILL*)
        ((= const 54) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CAM_VALID_VALID_FEATURE_NUM_TOO_FEW*)
        ((= const 100) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL*)
        ((= const 101) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*CROSS_CAM_VALID_STATEBUFFER_FILL*)
        ((= const 150) 'calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum::*UPDATE_CAM_ID_OUT_OF_RANGE*)
        (t nil)))

(defclass calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum
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

(setf (get calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum :md5sum-) "4b5556d863cfb070992d7616e29c644b")
(setf (get calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum :datatype-) "calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum")
(setf (get calib_interface_msgs::CamOffcalibDetailedErrorCodeEnum :definition-)
      "uint16 NORMAL = 0
uint16 EGO_INIT_FAILED = 1
uint16 NEED_CHECKED_CAM_NUM_ZERO = 2
uint16 EGO_POSE_CAM_VALID_UNACCESSABLE = 10
uint16 EGO_POSE_CROSS_CAM_VALID_UNACCESSABLE = 11
uint16 EGO_STATE_CAM_VALID_FREQ_TOO_LOW = 12
uint16 EGO_STATE_CROSS_CAM_VALID_FREQ_TOO_LOW = 13
uint16 CAM_VALID_VISUAL_FEATURE_INFO_NULL = 50
uint16 CAM_VALID_LONG_TIME_VISUAL_FEATURE_NUM_TOO_FEW = 51
uint16 CAM_VALID_VTRACKFRAMEBUFFER_FILL = 52
uint16 CAM_VALID_STATEBUFFER_FILL = 53
uint16 CAM_VALID_VALID_FEATURE_NUM_TOO_FEW = 54
uint16 CROSS_CAM_VALID_VTRACKFRAMEBUFFER_FILL = 100
uint16 CROSS_CAM_VALID_STATEBUFFER_FILL = 101
uint16 UPDATE_CAM_ID_OUT_OF_RANGE = 150
uint16 value

")



(provide :calib_interface_msgs/CamOffcalibDetailedErrorCodeEnum "4b5556d863cfb070992d7616e29c644b")


