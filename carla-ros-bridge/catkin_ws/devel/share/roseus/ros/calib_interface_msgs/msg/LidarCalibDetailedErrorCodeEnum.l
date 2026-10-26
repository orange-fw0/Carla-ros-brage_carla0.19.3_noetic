;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'LidarCalibDetailedErrorCodeEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM")
  (make-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))

(in-package "ROS")
;;//! \htmlinclude LidarCalibDetailedErrorCodeEnum.msg.html


(intern "*NORMAL*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*NORMAL* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*NORMAL* 0)
(intern "*CALIB_READ_CONFIG_FAIL*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_READ_CONFIG_FAIL* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_READ_CONFIG_FAIL* 1)
(intern "*CALIB_CREATE_RESULT_FILE_FAIL*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_CREATE_RESULT_FILE_FAIL* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_CREATE_RESULT_FILE_FAIL* 2)
(intern "*LIDAR_NEED_CALIB_NULL*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LIDAR_NEED_CALIB_NULL* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_NEED_CALIB_NULL* 3)
(intern "*EGO_POSE_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*EGO_POSE_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*EGO_POSE_LOSS_FRAME* 4)
(intern "*BAD_ENVIRONMENT_FOR_CALIB*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*BAD_ENVIRONMENT_FOR_CALIB* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*BAD_ENVIRONMENT_FOR_CALIB* 5)
(intern "*VEHICLE_SPEED_TOO_FAST*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*VEHICLE_SPEED_TOO_FAST* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*VEHICLE_SPEED_TOO_FAST* 6)
(intern "*VEHICLE_YAW_RATE_TOO_LARGE*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*VEHICLE_YAW_RATE_TOO_LARGE* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*VEHICLE_YAW_RATE_TOO_LARGE* 7)
(intern "*MAX_MILEAGE_CALIB_UNSUCCESS*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*MAX_MILEAGE_CALIB_UNSUCCESS* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*MAX_MILEAGE_CALIB_UNSUCCESS* 8)
(intern "*CALIB_TIMEOUT*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_TIMEOUT* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_TIMEOUT* 9)
(intern "*CAM_RESOLUTION_MISMATCH*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_RESOLUTION_MISMATCH* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CAM_RESOLUTION_MISMATCH* 51)
(intern "*CAM_VIEW_OCCLUSION*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*CAM_VIEW_OCCLUSION* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CAM_VIEW_OCCLUSION* 52)
(intern "*IMAGE_INSUFFICIENT_EDGES*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*IMAGE_INSUFFICIENT_EDGES* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*IMAGE_INSUFFICIENT_EDGES* 53)
(intern "*LIDAR_INSUFFICIENT_EDGE_POINTS*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LIDAR_INSUFFICIENT_EDGE_POINTS* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_INSUFFICIENT_EDGE_POINTS* 54)
(intern "*CALIB_CONTINUOUS_UNCONVERGENCE*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*CALIB_CONTINUOUS_UNCONVERGENCE* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_CONTINUOUS_UNCONVERGENCE* 55)
(intern "*LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES* 56)
(intern "*INSUFFICIENT_TURNS*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*INSUFFICIENT_TURNS* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*INSUFFICIENT_TURNS* 57)
(intern "*SOLVER_POSE_REFINE_EXCEPTION*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*SOLVER_POSE_REFINE_EXCEPTION* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*SOLVER_POSE_REFINE_EXCEPTION* 58)
(intern "*SOLVER_PAIRWISE_REFINE_EXCEPTION*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*SOLVER_PAIRWISE_REFINE_EXCEPTION* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*SOLVER_PAIRWISE_REFINE_EXCEPTION* 59)
(intern "*SOLVER_GLOBAL_REFINE_EXCEPTION*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*SOLVER_GLOBAL_REFINE_EXCEPTION* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*SOLVER_GLOBAL_REFINE_EXCEPTION* 60)
(intern "*INIT_CALIB_OUT_OF_ODD*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*INIT_CALIB_OUT_OF_ODD* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*INIT_CALIB_OUT_OF_ODD* 1001)
(intern "*LIDAR_LOWER_FREQUENCY*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LIDAR_LOWER_FREQUENCY* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_LOWER_FREQUENCY* 1002)
(intern "*LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION* 1003)
(intern "*LIDAR_POINT_MISSING_FIELD_INFO*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LIDAR_POINT_MISSING_FIELD_INFO* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_POINT_MISSING_FIELD_INFO* 1004)
(intern "*LARGE_DEVIATION_IN_DESIGNED_ROTATION*" (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(shadow '*LARGE_DEVIATION_IN_DESIGNED_ROTATION* (find-package "CALIB_INTERFACE_MSGS::LIDARCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LARGE_DEVIATION_IN_DESIGNED_ROTATION* 1005)

(defun calib_interface_msgs::LidarCalibDetailedErrorCodeEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*NORMAL*)
        ((= const 1) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_READ_CONFIG_FAIL*)
        ((= const 2) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_CREATE_RESULT_FILE_FAIL*)
        ((= const 3) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_NEED_CALIB_NULL*)
        ((= const 4) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*EGO_POSE_LOSS_FRAME*)
        ((= const 5) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*BAD_ENVIRONMENT_FOR_CALIB*)
        ((= const 6) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*VEHICLE_SPEED_TOO_FAST*)
        ((= const 7) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*VEHICLE_YAW_RATE_TOO_LARGE*)
        ((= const 8) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*MAX_MILEAGE_CALIB_UNSUCCESS*)
        ((= const 9) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_TIMEOUT*)
        ((= const 51) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CAM_RESOLUTION_MISMATCH*)
        ((= const 52) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CAM_VIEW_OCCLUSION*)
        ((= const 53) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*IMAGE_INSUFFICIENT_EDGES*)
        ((= const 54) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_INSUFFICIENT_EDGE_POINTS*)
        ((= const 55) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*CALIB_CONTINUOUS_UNCONVERGENCE*)
        ((= const 56) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES*)
        ((= const 57) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*INSUFFICIENT_TURNS*)
        ((= const 58) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*SOLVER_POSE_REFINE_EXCEPTION*)
        ((= const 59) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*SOLVER_PAIRWISE_REFINE_EXCEPTION*)
        ((= const 60) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*SOLVER_GLOBAL_REFINE_EXCEPTION*)
        ((= const 1001) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*INIT_CALIB_OUT_OF_ODD*)
        ((= const 1002) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_LOWER_FREQUENCY*)
        ((= const 1003) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION*)
        ((= const 1004) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LIDAR_POINT_MISSING_FIELD_INFO*)
        ((= const 1005) 'calib_interface_msgs::LidarCalibDetailedErrorCodeEnum::*LARGE_DEVIATION_IN_DESIGNED_ROTATION*)
        (t nil)))

(defclass calib_interface_msgs::LidarCalibDetailedErrorCodeEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::LidarCalibDetailedErrorCodeEnum
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

(setf (get calib_interface_msgs::LidarCalibDetailedErrorCodeEnum :md5sum-) "68a3ac06366b62b605c538732b115fef")
(setf (get calib_interface_msgs::LidarCalibDetailedErrorCodeEnum :datatype-) "calib_interface_msgs/LidarCalibDetailedErrorCodeEnum")
(setf (get calib_interface_msgs::LidarCalibDetailedErrorCodeEnum :definition-)
      "uint16 NORMAL = 0
uint16 CALIB_READ_CONFIG_FAIL = 1
uint16 CALIB_CREATE_RESULT_FILE_FAIL = 2
uint16 LIDAR_NEED_CALIB_NULL = 3
uint16 EGO_POSE_LOSS_FRAME = 4
uint16 BAD_ENVIRONMENT_FOR_CALIB = 5
uint16 VEHICLE_SPEED_TOO_FAST = 6
uint16 VEHICLE_YAW_RATE_TOO_LARGE = 7
uint16 MAX_MILEAGE_CALIB_UNSUCCESS = 8
uint16 CALIB_TIMEOUT = 9
uint16 CAM_RESOLUTION_MISMATCH = 51
uint16 CAM_VIEW_OCCLUSION = 52
uint16 IMAGE_INSUFFICIENT_EDGES = 53
uint16 LIDAR_INSUFFICIENT_EDGE_POINTS = 54
uint16 CALIB_CONTINUOUS_UNCONVERGENCE = 55
uint16 LIDAR_INSUFFICIENT_GEOMETRIC_FEATURES = 56
uint16 INSUFFICIENT_TURNS = 57
uint16 SOLVER_POSE_REFINE_EXCEPTION = 58
uint16 SOLVER_PAIRWISE_REFINE_EXCEPTION = 59
uint16 SOLVER_GLOBAL_REFINE_EXCEPTION = 60
uint16 INIT_CALIB_OUT_OF_ODD = 1001
uint16 LIDAR_LOWER_FREQUENCY = 1002
uint16 LIDAR_MOTION_DISTORTION_CORRECTION_EXCEPTION = 1003
uint16 LIDAR_POINT_MISSING_FIELD_INFO = 1004
uint16 LARGE_DEVIATION_IN_DESIGNED_ROTATION = 1005
uint16 value

")



(provide :calib_interface_msgs/LidarCalibDetailedErrorCodeEnum "68a3ac06366b62b605c538732b115fef")


