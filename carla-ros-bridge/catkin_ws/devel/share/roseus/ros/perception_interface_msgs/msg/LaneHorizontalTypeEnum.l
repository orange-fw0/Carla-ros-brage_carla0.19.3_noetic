;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LaneHorizontalTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LaneHorizontalTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneHorizontalTypeEnum.msg.html


(intern "*LANE_HORIZENTAL_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(shadow '*LANE_HORIZENTAL_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(defconstant perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_UNKNOWN* 0)
(intern "*LANE_HORIZENTAL_TYPE_STOP_LINE*" (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(shadow '*LANE_HORIZENTAL_TYPE_STOP_LINE* (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(defconstant perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_STOP_LINE* 1)
(intern "*LANE_HORIZENTAL_TYPE_ZEBRA_LINE*" (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(shadow '*LANE_HORIZENTAL_TYPE_ZEBRA_LINE* (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(defconstant perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_ZEBRA_LINE* 2)
(intern "*LANE_HORIZENTAL_TYPE_SPEED_BUMP*" (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(shadow '*LANE_HORIZENTAL_TYPE_SPEED_BUMP* (find-package "PERCEPTION_INTERFACE_MSGS::LANEHORIZONTALTYPEENUM"))
(defconstant perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_SPEED_BUMP* 3)

(defun perception_interface_msgs::LaneHorizontalTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_STOP_LINE*)
        ((= const 2) 'perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_ZEBRA_LINE*)
        ((= const 3) 'perception_interface_msgs::LaneHorizontalTypeEnum::*LANE_HORIZENTAL_TYPE_SPEED_BUMP*)
        (t nil)))

(defclass perception_interface_msgs::LaneHorizontalTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::LaneHorizontalTypeEnum
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

(setf (get perception_interface_msgs::LaneHorizontalTypeEnum :md5sum-) "cb80404395a8ff2246618e9ee59c656f")
(setf (get perception_interface_msgs::LaneHorizontalTypeEnum :datatype-) "perception_interface_msgs/LaneHorizontalTypeEnum")
(setf (get perception_interface_msgs::LaneHorizontalTypeEnum :definition-)
      "uint8 LANE_HORIZENTAL_TYPE_UNKNOWN = 0
uint8 LANE_HORIZENTAL_TYPE_STOP_LINE = 1
uint8 LANE_HORIZENTAL_TYPE_ZEBRA_LINE = 2
uint8 LANE_HORIZENTAL_TYPE_SPEED_BUMP = 3
uint8 value

")



(provide :perception_interface_msgs/LaneHorizontalTypeEnum "cb80404395a8ff2246618e9ee59c656f")


