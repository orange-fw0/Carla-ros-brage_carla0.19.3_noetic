;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::PlacTotalErrorCodeEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'PlacTotalErrorCodeEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM")
  (make-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))

(in-package "ROS")
;;//! \htmlinclude PlacTotalErrorCodeEnum.msg.html


(intern "*CALIB_NORMAL*" (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(shadow '*CALIB_NORMAL* (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_NORMAL* 0)
(intern "*CALIB_INIT_ERROR*" (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(shadow '*CALIB_INIT_ERROR* (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_INIT_ERROR* 1)
(intern "*CALIB_FISHEYE_ERROR*" (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(shadow '*CALIB_FISHEYE_ERROR* (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_FISHEYE_ERROR* 2)
(intern "*CALIB_NORMAL_ERROR*" (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(shadow '*CALIB_NORMAL_ERROR* (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_NORMAL_ERROR* 3)
(intern "*CALIB_OPT_ERROR*" (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(shadow '*CALIB_OPT_ERROR* (find-package "CALIB_INTERFACE_MSGS::PLACTOTALERRORCODEENUM"))
(defconstant calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_OPT_ERROR* 4)

(defun calib_interface_msgs::PlacTotalErrorCodeEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_NORMAL*)
        ((= const 1) 'calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_INIT_ERROR*)
        ((= const 2) 'calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_FISHEYE_ERROR*)
        ((= const 3) 'calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_NORMAL_ERROR*)
        ((= const 4) 'calib_interface_msgs::PlacTotalErrorCodeEnum::*CALIB_OPT_ERROR*)
        (t nil)))

(defclass calib_interface_msgs::PlacTotalErrorCodeEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::PlacTotalErrorCodeEnum
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

(setf (get calib_interface_msgs::PlacTotalErrorCodeEnum :md5sum-) "10363d941d80e22a3aa5dea0814122cb")
(setf (get calib_interface_msgs::PlacTotalErrorCodeEnum :datatype-) "calib_interface_msgs/PlacTotalErrorCodeEnum")
(setf (get calib_interface_msgs::PlacTotalErrorCodeEnum :definition-)
      "uint8 CALIB_NORMAL = 0
uint8 CALIB_INIT_ERROR = 1
uint8 CALIB_FISHEYE_ERROR = 2
uint8 CALIB_NORMAL_ERROR = 3
uint8 CALIB_OPT_ERROR = 4
uint8 value

")



(provide :calib_interface_msgs/PlacTotalErrorCodeEnum "10363d941d80e22a3aa5dea0814122cb")


