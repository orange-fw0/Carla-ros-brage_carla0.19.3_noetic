;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::GroundLine3dPointTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'GroundLine3dPointTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE3DPOINTTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE3DPOINTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude GroundLine3dPointTypeEnum.msg.html


(intern "*GROUND_LINE_3D_POINT_TYPE_RULE*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE3DPOINTTYPEENUM"))
(shadow '*GROUND_LINE_3D_POINT_TYPE_RULE* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE3DPOINTTYPEENUM"))
(defconstant perception_interface_msgs::GroundLine3dPointTypeEnum::*GROUND_LINE_3D_POINT_TYPE_RULE* 0)
(intern "*GROUND_LINE_3D_POINT_TYPE_DD*" (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE3DPOINTTYPEENUM"))
(shadow '*GROUND_LINE_3D_POINT_TYPE_DD* (find-package "PERCEPTION_INTERFACE_MSGS::GROUNDLINE3DPOINTTYPEENUM"))
(defconstant perception_interface_msgs::GroundLine3dPointTypeEnum::*GROUND_LINE_3D_POINT_TYPE_DD* 1)

(defun perception_interface_msgs::GroundLine3dPointTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::GroundLine3dPointTypeEnum::*GROUND_LINE_3D_POINT_TYPE_RULE*)
        ((= const 1) 'perception_interface_msgs::GroundLine3dPointTypeEnum::*GROUND_LINE_3D_POINT_TYPE_DD*)
        (t nil)))

(defclass perception_interface_msgs::GroundLine3dPointTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::GroundLine3dPointTypeEnum
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

(setf (get perception_interface_msgs::GroundLine3dPointTypeEnum :md5sum-) "d798f75147f2a38a04470320ccdd5a64")
(setf (get perception_interface_msgs::GroundLine3dPointTypeEnum :datatype-) "perception_interface_msgs/GroundLine3dPointTypeEnum")
(setf (get perception_interface_msgs::GroundLine3dPointTypeEnum :definition-)
      "uint8 GROUND_LINE_3D_POINT_TYPE_RULE = 0
uint8 GROUND_LINE_3D_POINT_TYPE_DD = 1
uint8 value

")



(provide :perception_interface_msgs/GroundLine3dPointTypeEnum "d798f75147f2a38a04470320ccdd5a64")


