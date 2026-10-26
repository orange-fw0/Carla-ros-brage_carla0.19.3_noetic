;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LaneColorEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LaneColorEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneColorEnum.msg.html


(intern "*LANE_COLOR_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(shadow '*LANE_COLOR_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(defconstant perception_interface_msgs::LaneColorEnum::*LANE_COLOR_UNKNOWN* 0)
(intern "*LANE_COLOR_WHITE*" (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(shadow '*LANE_COLOR_WHITE* (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(defconstant perception_interface_msgs::LaneColorEnum::*LANE_COLOR_WHITE* 1)
(intern "*LANE_COLOR_YELLOW*" (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(shadow '*LANE_COLOR_YELLOW* (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(defconstant perception_interface_msgs::LaneColorEnum::*LANE_COLOR_YELLOW* 2)
(intern "*LANE_COLOR_RED*" (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(shadow '*LANE_COLOR_RED* (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(defconstant perception_interface_msgs::LaneColorEnum::*LANE_COLOR_RED* 3)
(intern "*LANE_COLOR_BLUE*" (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(shadow '*LANE_COLOR_BLUE* (find-package "PERCEPTION_INTERFACE_MSGS::LANECOLORENUM"))
(defconstant perception_interface_msgs::LaneColorEnum::*LANE_COLOR_BLUE* 4)

(defun perception_interface_msgs::LaneColorEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::LaneColorEnum::*LANE_COLOR_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::LaneColorEnum::*LANE_COLOR_WHITE*)
        ((= const 2) 'perception_interface_msgs::LaneColorEnum::*LANE_COLOR_YELLOW*)
        ((= const 3) 'perception_interface_msgs::LaneColorEnum::*LANE_COLOR_RED*)
        ((= const 4) 'perception_interface_msgs::LaneColorEnum::*LANE_COLOR_BLUE*)
        (t nil)))

(defclass perception_interface_msgs::LaneColorEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::LaneColorEnum
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

(setf (get perception_interface_msgs::LaneColorEnum :md5sum-) "6891bd0acaabe6e6f5f1074f0b129b91")
(setf (get perception_interface_msgs::LaneColorEnum :datatype-) "perception_interface_msgs/LaneColorEnum")
(setf (get perception_interface_msgs::LaneColorEnum :definition-)
      "uint8 LANE_COLOR_UNKNOWN = 0
uint8 LANE_COLOR_WHITE = 1
uint8 LANE_COLOR_YELLOW = 2
uint8 LANE_COLOR_RED = 3
uint8 LANE_COLOR_BLUE = 4
uint8 value

")



(provide :perception_interface_msgs/LaneColorEnum "6891bd0acaabe6e6f5f1074f0b129b91")


