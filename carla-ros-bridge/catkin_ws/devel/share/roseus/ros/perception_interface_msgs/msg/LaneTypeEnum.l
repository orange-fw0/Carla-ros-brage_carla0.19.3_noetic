;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::LaneTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'LaneTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude LaneTypeEnum.msg.html


(intern "*LANE_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(shadow '*LANE_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(defconstant perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_UNKNOWN* 0)
(intern "*LANE_TYPE_DASHED*" (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(shadow '*LANE_TYPE_DASHED* (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(defconstant perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_DASHED* 1)
(intern "*LANE_TYPE_SOLID*" (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(shadow '*LANE_TYPE_SOLID* (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(defconstant perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_SOLID* 2)
(intern "*LANE_TYPE_DOUBLE_SOLID*" (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(shadow '*LANE_TYPE_DOUBLE_SOLID* (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(defconstant perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_DOUBLE_SOLID* 3)
(intern "*LANE_TYPE_DOUBLE_DASHED_SOLID*" (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(shadow '*LANE_TYPE_DOUBLE_DASHED_SOLID* (find-package "PERCEPTION_INTERFACE_MSGS::LANETYPEENUM"))
(defconstant perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_DOUBLE_DASHED_SOLID* 4)

(defun perception_interface_msgs::LaneTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_DASHED*)
        ((= const 2) 'perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_SOLID*)
        ((= const 3) 'perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_DOUBLE_SOLID*)
        ((= const 4) 'perception_interface_msgs::LaneTypeEnum::*LANE_TYPE_DOUBLE_DASHED_SOLID*)
        (t nil)))

(defclass perception_interface_msgs::LaneTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::LaneTypeEnum
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

(setf (get perception_interface_msgs::LaneTypeEnum :md5sum-) "b6f5acaf2ae3320b7007fccd24b248b9")
(setf (get perception_interface_msgs::LaneTypeEnum :datatype-) "perception_interface_msgs/LaneTypeEnum")
(setf (get perception_interface_msgs::LaneTypeEnum :definition-)
      "uint8 LANE_TYPE_UNKNOWN = 0
uint8 LANE_TYPE_DASHED = 1
uint8 LANE_TYPE_SOLID = 2
uint8 LANE_TYPE_DOUBLE_SOLID = 3
uint8 LANE_TYPE_DOUBLE_DASHED_SOLID = 4
uint8 value

")



(provide :perception_interface_msgs/LaneTypeEnum "b6f5acaf2ae3320b7007fccd24b248b9")


