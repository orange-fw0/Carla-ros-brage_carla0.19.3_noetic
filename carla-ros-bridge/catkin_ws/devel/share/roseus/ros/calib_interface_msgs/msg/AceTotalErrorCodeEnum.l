;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::AceTotalErrorCodeEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'AceTotalErrorCodeEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM")
  (make-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))

(in-package "ROS")
;;//! \htmlinclude AceTotalErrorCodeEnum.msg.html


(intern "*ACE_OK*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*ACE_OK* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK* 0)
(intern "*CAMERA_CALIB_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*CAMERA_CALIB_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*CAMERA_CALIB_FAILED* 1)
(intern "*CAMERA_OFFCALIB_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*CAMERA_OFFCALIB_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*CAMERA_OFFCALIB_FAILED* 2)
(intern "*IMU_CALIB_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_CALIB_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_CALIB_FAILED* 3)
(intern "*LIDAR_CALIB_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*LIDAR_CALIB_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_CALIB_FAILED* 4)
(intern "*LIDAR_OFFCALIB_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*LIDAR_OFFCALIB_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_OFFCALIB_FAILED* 5)
(intern "*ACE_INIT_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*ACE_INIT_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_INIT_FAILED* 9)
(intern "*TRIGGER_SAVE_DATA*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*TRIGGER_SAVE_DATA* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*TRIGGER_SAVE_DATA* 10)
(intern "*ACE_OK_NO_ACTION*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*ACE_OK_NO_ACTION* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NO_ACTION* 11)
(intern "*ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS* 12)
(intern "*ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS* 13)
(intern "*ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE* 14)
(intern "*READ_CONFIG_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*READ_CONFIG_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*READ_CONFIG_FAILED* 20)
(intern "*READ_CALIBRATION_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*READ_CALIBRATION_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*READ_CALIBRATION_FAILED* 21)
(intern "*OUTPUT_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*OUTPUT_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*OUTPUT_FAILED* 22)
(intern "*IMU_ACC_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_ACC_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_ACC_ERROR* 23)
(intern "*IMU_ACC_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_ACC_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_ACC_LOSS_FRAME* 24)
(intern "*IMU_ACC_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_ACC_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_ACC_DISORDER* 25)
(intern "*IMU_GYRO_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_GYRO_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_GYRO_ERROR* 26)
(intern "*IMU_GYRO_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_GYRO_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_GYRO_LOSS_FRAME* 27)
(intern "*IMU_GYRO_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMU_GYRO_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_GYRO_DISORDER* 28)
(intern "*GNSS_DATA_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*GNSS_DATA_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*GNSS_DATA_ERROR* 29)
(intern "*GNSS_DATA_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*GNSS_DATA_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*GNSS_DATA_LOSS_FRAME* 30)
(intern "*GNSS_DATA_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*GNSS_DATA_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*GNSS_DATA_DISORDER* 31)
(intern "*IMAGE_DATA_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMAGE_DATA_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMAGE_DATA_ERROR* 32)
(intern "*IMAGE_DATA_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMAGE_DATA_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMAGE_DATA_LOSS_FRAME* 33)
(intern "*IMAGE_DATA_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*IMAGE_DATA_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*IMAGE_DATA_DISORDER* 34)
(intern "*VISTA_DATA_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*VISTA_DATA_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*VISTA_DATA_ERROR* 35)
(intern "*VISTA_DATA_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*VISTA_DATA_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*VISTA_DATA_LOSS_FRAME* 36)
(intern "*VISTA_DATA_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*VISTA_DATA_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*VISTA_DATA_DISORDER* 37)
(intern "*WHEEL_SPEED_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_SPEED_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_SPEED_ERROR* 38)
(intern "*WHEEL_SPEED_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_SPEED_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_SPEED_LOSS_FRAME* 39)
(intern "*WHEEL_SPEED_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_SPEED_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_SPEED_DISORDER* 40)
(intern "*WHEEL_ANGLE_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_ANGLE_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_ANGLE_ERROR* 41)
(intern "*WHEEL_ANGLE_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_ANGLE_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_ANGLE_LOSS_FRAME* 42)
(intern "*WHEEL_ANGLE_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_ANGLE_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_ANGLE_DISORDER* 43)
(intern "*LIDAR_DATA_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*LIDAR_DATA_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_DATA_ERROR* 44)
(intern "*LIDAR_DATA_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*LIDAR_DATA_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_DATA_LOSS_FRAME* 45)
(intern "*LIDAR_DATA_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*LIDAR_DATA_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_DATA_DISORDER* 46)
(intern "*WHEEL_PULSE_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_PULSE_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_PULSE_ERROR* 47)
(intern "*WHEEL_PULSE_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_PULSE_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_PULSE_LOSS_FRAME* 48)
(intern "*WHEEL_PULSE_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*WHEEL_PULSE_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_PULSE_DISORDER* 49)
(intern "*SUSPENSION_DATA_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*SUSPENSION_DATA_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*SUSPENSION_DATA_ERROR* 50)
(intern "*SUSPENSION_CHANGED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*SUSPENSION_CHANGED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*SUSPENSION_CHANGED* 51)
(intern "*EGOPOSE_DATA_ERROR*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*EGOPOSE_DATA_ERROR* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*EGOPOSE_DATA_ERROR* 52)
(intern "*EGOPOSE_DATA_LOSS_FRAME*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*EGOPOSE_DATA_LOSS_FRAME* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*EGOPOSE_DATA_LOSS_FRAME* 53)
(intern "*EGOPOSE_DATA_DISORDER*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*EGOPOSE_DATA_DISORDER* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*EGOPOSE_DATA_DISORDER* 54)
(intern "*FILE_ACCESS_FAILED*" (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(shadow '*FILE_ACCESS_FAILED* (find-package "CALIB_INTERFACE_MSGS::ACETOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::AceTotalErrorCodeEnum::*FILE_ACCESS_FAILED* 55)

(defun calib_interface_msgs::AceTotalErrorCodeEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK*)
        ((= const 1) 'calib_interface_msgs::AceTotalErrorCodeEnum::*CAMERA_CALIB_FAILED*)
        ((= const 2) 'calib_interface_msgs::AceTotalErrorCodeEnum::*CAMERA_OFFCALIB_FAILED*)
        ((= const 3) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_CALIB_FAILED*)
        ((= const 4) 'calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_CALIB_FAILED*)
        ((= const 5) 'calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_OFFCALIB_FAILED*)
        ((= const 9) 'calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_INIT_FAILED*)
        ((= const 10) 'calib_interface_msgs::AceTotalErrorCodeEnum::*TRIGGER_SAVE_DATA*)
        ((= const 11) 'calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NO_ACTION*)
        ((= const 12) 'calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS*)
        ((= const 13) 'calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS*)
        ((= const 14) 'calib_interface_msgs::AceTotalErrorCodeEnum::*ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE*)
        ((= const 20) 'calib_interface_msgs::AceTotalErrorCodeEnum::*READ_CONFIG_FAILED*)
        ((= const 21) 'calib_interface_msgs::AceTotalErrorCodeEnum::*READ_CALIBRATION_FAILED*)
        ((= const 22) 'calib_interface_msgs::AceTotalErrorCodeEnum::*OUTPUT_FAILED*)
        ((= const 23) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_ACC_ERROR*)
        ((= const 24) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_ACC_LOSS_FRAME*)
        ((= const 25) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_ACC_DISORDER*)
        ((= const 26) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_GYRO_ERROR*)
        ((= const 27) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_GYRO_LOSS_FRAME*)
        ((= const 28) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMU_GYRO_DISORDER*)
        ((= const 29) 'calib_interface_msgs::AceTotalErrorCodeEnum::*GNSS_DATA_ERROR*)
        ((= const 30) 'calib_interface_msgs::AceTotalErrorCodeEnum::*GNSS_DATA_LOSS_FRAME*)
        ((= const 31) 'calib_interface_msgs::AceTotalErrorCodeEnum::*GNSS_DATA_DISORDER*)
        ((= const 32) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMAGE_DATA_ERROR*)
        ((= const 33) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMAGE_DATA_LOSS_FRAME*)
        ((= const 34) 'calib_interface_msgs::AceTotalErrorCodeEnum::*IMAGE_DATA_DISORDER*)
        ((= const 35) 'calib_interface_msgs::AceTotalErrorCodeEnum::*VISTA_DATA_ERROR*)
        ((= const 36) 'calib_interface_msgs::AceTotalErrorCodeEnum::*VISTA_DATA_LOSS_FRAME*)
        ((= const 37) 'calib_interface_msgs::AceTotalErrorCodeEnum::*VISTA_DATA_DISORDER*)
        ((= const 38) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_SPEED_ERROR*)
        ((= const 39) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_SPEED_LOSS_FRAME*)
        ((= const 40) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_SPEED_DISORDER*)
        ((= const 41) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_ANGLE_ERROR*)
        ((= const 42) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_ANGLE_LOSS_FRAME*)
        ((= const 43) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_ANGLE_DISORDER*)
        ((= const 44) 'calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_DATA_ERROR*)
        ((= const 45) 'calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_DATA_LOSS_FRAME*)
        ((= const 46) 'calib_interface_msgs::AceTotalErrorCodeEnum::*LIDAR_DATA_DISORDER*)
        ((= const 47) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_PULSE_ERROR*)
        ((= const 48) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_PULSE_LOSS_FRAME*)
        ((= const 49) 'calib_interface_msgs::AceTotalErrorCodeEnum::*WHEEL_PULSE_DISORDER*)
        ((= const 50) 'calib_interface_msgs::AceTotalErrorCodeEnum::*SUSPENSION_DATA_ERROR*)
        ((= const 51) 'calib_interface_msgs::AceTotalErrorCodeEnum::*SUSPENSION_CHANGED*)
        ((= const 52) 'calib_interface_msgs::AceTotalErrorCodeEnum::*EGOPOSE_DATA_ERROR*)
        ((= const 53) 'calib_interface_msgs::AceTotalErrorCodeEnum::*EGOPOSE_DATA_LOSS_FRAME*)
        ((= const 54) 'calib_interface_msgs::AceTotalErrorCodeEnum::*EGOPOSE_DATA_DISORDER*)
        ((= const 55) 'calib_interface_msgs::AceTotalErrorCodeEnum::*FILE_ACCESS_FAILED*)
        (t nil)))

(defclass calib_interface_msgs::AceTotalErrorCodeEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::AceTotalErrorCodeEnum
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

(setf (get calib_interface_msgs::AceTotalErrorCodeEnum :md5sum-) "c4aaca6981ae03a7f2695eceadd38b6d")
(setf (get calib_interface_msgs::AceTotalErrorCodeEnum :datatype-) "calib_interface_msgs/AceTotalErrorCodeEnum")
(setf (get calib_interface_msgs::AceTotalErrorCodeEnum :definition-)
      "uint8 ACE_OK = 0
uint8 CAMERA_CALIB_FAILED = 1
uint8 CAMERA_OFFCALIB_FAILED = 2
uint8 IMU_CALIB_FAILED = 3
uint8 LIDAR_CALIB_FAILED = 4
uint8 LIDAR_OFFCALIB_FAILED = 5
uint8 ACE_INIT_FAILED = 9
uint8 TRIGGER_SAVE_DATA = 10
uint8 ACE_OK_NO_ACTION = 11
uint8 ACE_OK_NEED_TO_UPDATE_PARAM_WITHOUT_SUPRESS = 12
uint8 ACE_OK_NEED_TO_UPDATE_PARAM_WITH_SUPRESS = 13
uint8 ACE_OK_NEED_TO_UPDATE_PARAM_FORCE_AFTERSALE = 14
uint8 READ_CONFIG_FAILED = 20
uint8 READ_CALIBRATION_FAILED = 21
uint8 OUTPUT_FAILED = 22
uint8 IMU_ACC_ERROR = 23
uint8 IMU_ACC_LOSS_FRAME = 24
uint8 IMU_ACC_DISORDER = 25
uint8 IMU_GYRO_ERROR = 26
uint8 IMU_GYRO_LOSS_FRAME = 27
uint8 IMU_GYRO_DISORDER = 28
uint8 GNSS_DATA_ERROR = 29
uint8 GNSS_DATA_LOSS_FRAME = 30
uint8 GNSS_DATA_DISORDER = 31
uint8 IMAGE_DATA_ERROR = 32
uint8 IMAGE_DATA_LOSS_FRAME = 33
uint8 IMAGE_DATA_DISORDER = 34
uint8 VISTA_DATA_ERROR = 35
uint8 VISTA_DATA_LOSS_FRAME = 36
uint8 VISTA_DATA_DISORDER = 37
uint8 WHEEL_SPEED_ERROR = 38
uint8 WHEEL_SPEED_LOSS_FRAME = 39
uint8 WHEEL_SPEED_DISORDER = 40
uint8 WHEEL_ANGLE_ERROR = 41
uint8 WHEEL_ANGLE_LOSS_FRAME = 42
uint8 WHEEL_ANGLE_DISORDER = 43
uint8 LIDAR_DATA_ERROR = 44
uint8 LIDAR_DATA_LOSS_FRAME = 45
uint8 LIDAR_DATA_DISORDER = 46
uint8 WHEEL_PULSE_ERROR = 47
uint8 WHEEL_PULSE_LOSS_FRAME = 48
uint8 WHEEL_PULSE_DISORDER = 49
uint8 SUSPENSION_DATA_ERROR = 50
uint8 SUSPENSION_CHANGED = 51
uint8 EGOPOSE_DATA_ERROR = 52
uint8 EGOPOSE_DATA_LOSS_FRAME = 53
uint8 EGOPOSE_DATA_DISORDER = 54
uint8 FILE_ACCESS_FAILED = 55
uint8 value

")



(provide :calib_interface_msgs/AceTotalErrorCodeEnum "c4aaca6981ae03a7f2695eceadd38b6d")


