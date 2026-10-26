;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::CameraSourceEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'CameraSourceEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))

(in-package "ROS")
;;//! \htmlinclude CameraSourceEnum.msg.html


(intern "*CAMERA_SOURCE_FRONT_FAR*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_FAR* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_FAR* 0)
(intern "*CAMERA_SOURCE_FRONT_MID*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_MID* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_MID* 1)
(intern "*CAMERA_SOURCE_FRONT_WIDE*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_WIDE* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_WIDE* 2)
(intern "*CAMERA_SOURCE_LEFT_FRONT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_LEFT_FRONT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FRONT* 3)
(intern "*CAMERA_SOURCE_LEFT_REAR*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_LEFT_REAR* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_REAR* 4)
(intern "*CAMERA_SOURCE_REAR_MID*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_REAR_MID* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_MID* 5)
(intern "*CAMERA_SOURCE_REAR_MID_UP*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_REAR_MID_UP* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_MID_UP* 6)
(intern "*CAMERA_SOURCE_REAR_MID_DOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_REAR_MID_DOWN* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_MID_DOWN* 7)
(intern "*CAMERA_SOURCE_RIGHT_FRONT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_RIGHT_FRONT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FRONT* 8)
(intern "*CAMERA_SOURCE_RIGHT_REAR*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_RIGHT_REAR* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_REAR* 9)
(intern "*CAMERA_SOURCE_FRONT_FISHEYE*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_FISHEYE* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_FISHEYE* 10)
(intern "*CAMERA_SOURCE_LEFT_FISHEYE*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_LEFT_FISHEYE* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FISHEYE* 11)
(intern "*CAMERA_SOURCE_RIGHT_FISHEYE*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_RIGHT_FISHEYE* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FISHEYE* 12)
(intern "*CAMERA_SOURCE_REAR_FISHEYE*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_REAR_FISHEYE* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_FISHEYE* 13)
(intern "*CAMERA_SOURCE_FISHEYE*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FISHEYE* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FISHEYE* 14)
(intern "*CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT* 15)
(intern "*CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT* 16)
(intern "*CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT* 17)
(intern "*CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT* 18)
(intern "*CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT* 19)
(intern "*CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT* 20)
(intern "*CAMERA_SOURCE_LEFT_REAR_SUB_LEFT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_LEFT_REAR_SUB_LEFT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_REAR_SUB_LEFT* 21)
(intern "*CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT* 22)
(intern "*CAMERA_SOURCE_FRONT_MID_FAR*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_MID_FAR* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_MID_FAR* 23)
(intern "*CAMERA_SOURCE_FRONT_SUPER_FAR*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_FRONT_SUPER_FAR* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_SUPER_FAR* 24)
(intern "*CAMERA_SOURCE_BEV*" (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(shadow '*CAMERA_SOURCE_BEV* (find-package "PERCEPTION_INTERFACE_MSGS::CAMERASOURCEENUM"))
(defconstant perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_BEV* 25)

(defun perception_interface_msgs::CameraSourceEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_FAR*)
        ((= const 1) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_MID*)
        ((= const 2) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_WIDE*)
        ((= const 3) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FRONT*)
        ((= const 4) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_REAR*)
        ((= const 5) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_MID*)
        ((= const 6) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_MID_UP*)
        ((= const 7) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_MID_DOWN*)
        ((= const 8) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FRONT*)
        ((= const 9) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_REAR*)
        ((= const 10) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_FISHEYE*)
        ((= const 11) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FISHEYE*)
        ((= const 12) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FISHEYE*)
        ((= const 13) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_REAR_FISHEYE*)
        ((= const 14) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FISHEYE*)
        ((= const 15) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT*)
        ((= const 16) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT*)
        ((= const 17) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT*)
        ((= const 18) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT*)
        ((= const 19) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT*)
        ((= const 20) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT*)
        ((= const 21) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_LEFT_REAR_SUB_LEFT*)
        ((= const 22) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT*)
        ((= const 23) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_MID_FAR*)
        ((= const 24) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_FRONT_SUPER_FAR*)
        ((= const 25) 'perception_interface_msgs::CameraSourceEnum::*CAMERA_SOURCE_BEV*)
        (t nil)))

(defclass perception_interface_msgs::CameraSourceEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::CameraSourceEnum
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

(setf (get perception_interface_msgs::CameraSourceEnum :md5sum-) "f7c1c5eb952b9b4dd66efffb1d5138d2")
(setf (get perception_interface_msgs::CameraSourceEnum :datatype-) "perception_interface_msgs/CameraSourceEnum")
(setf (get perception_interface_msgs::CameraSourceEnum :definition-)
      "uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

")



(provide :perception_interface_msgs/CameraSourceEnum "f7c1c5eb952b9b4dd66efffb1d5138d2")


