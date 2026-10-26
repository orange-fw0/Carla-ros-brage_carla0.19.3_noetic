;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::VectorElementTypeEnum)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'VectorElementTypeEnum (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM")
  (make-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude VectorElementTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*UNKNOWN* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*UNKNOWN* 0)
(intern "*GATE*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*GATE* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*GATE* 1)
(intern "*ARROW*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*ARROW* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*ARROW* 2)
(intern "*STOP_LINE*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*STOP_LINE* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*STOP_LINE* 3)
(intern "*DASH_LINE*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DASH_LINE* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DASH_LINE* 4)
(intern "*SPEED_BUMP*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*SPEED_BUMP* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*SPEED_BUMP* 5)
(intern "*ZWBRA_LINE*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*ZWBRA_LINE* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*ZWBRA_LINE* 6)
(intern "*DDLD_ROAD_BOUNDARY*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_ROAD_BOUNDARY* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_ROAD_BOUNDARY* 7)
(intern "*DDLD_LANE_BOUNDARY*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_LANE_BOUNDARY* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_LANE_BOUNDARY* 8)
(intern "*DDLD_STOP_LINE*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_STOP_LINE* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_STOP_LINE* 9)
(intern "*DDLD_CROSS_WALK*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_CROSS_WALK* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_CROSS_WALK* 10)
(intern "*DDLD_ROAD_MARK*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_ROAD_MARK* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_ROAD_MARK* 11)
(intern "*DDLD_TRAFFIC_SIGN*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_TRAFFIC_SIGN* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_TRAFFIC_SIGN* 12)
(intern "*DDLD_TRAFFIC_LIGHT*" (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(shadow '*DDLD_TRAFFIC_LIGHT* (find-package "SUBMAP_MSGS::VECTORELEMENTTYPEENUM"))
(defconstant submap_msgs::VectorElementTypeEnum::*DDLD_TRAFFIC_LIGHT* 13)

(defun submap_msgs::VectorElementTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'submap_msgs::VectorElementTypeEnum::*UNKNOWN*)
        ((= const 1) 'submap_msgs::VectorElementTypeEnum::*GATE*)
        ((= const 2) 'submap_msgs::VectorElementTypeEnum::*ARROW*)
        ((= const 3) 'submap_msgs::VectorElementTypeEnum::*STOP_LINE*)
        ((= const 4) 'submap_msgs::VectorElementTypeEnum::*DASH_LINE*)
        ((= const 5) 'submap_msgs::VectorElementTypeEnum::*SPEED_BUMP*)
        ((= const 6) 'submap_msgs::VectorElementTypeEnum::*ZWBRA_LINE*)
        ((= const 7) 'submap_msgs::VectorElementTypeEnum::*DDLD_ROAD_BOUNDARY*)
        ((= const 8) 'submap_msgs::VectorElementTypeEnum::*DDLD_LANE_BOUNDARY*)
        ((= const 9) 'submap_msgs::VectorElementTypeEnum::*DDLD_STOP_LINE*)
        ((= const 10) 'submap_msgs::VectorElementTypeEnum::*DDLD_CROSS_WALK*)
        ((= const 11) 'submap_msgs::VectorElementTypeEnum::*DDLD_ROAD_MARK*)
        ((= const 12) 'submap_msgs::VectorElementTypeEnum::*DDLD_TRAFFIC_SIGN*)
        ((= const 13) 'submap_msgs::VectorElementTypeEnum::*DDLD_TRAFFIC_LIGHT*)
        (t nil)))

(defclass submap_msgs::VectorElementTypeEnum
  :super ros::object
  :slots (_value _score ))

(defmethod submap_msgs::VectorElementTypeEnum
  (:init
   (&key
    ((:value __value) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _score (float __score))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get submap_msgs::VectorElementTypeEnum :md5sum-) "56240e7d54f815cdee95dc93b1995eb7")
(setf (get submap_msgs::VectorElementTypeEnum :datatype-) "submap_msgs/VectorElementTypeEnum")
(setf (get submap_msgs::VectorElementTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 GATE = 1
uint8 ARROW = 2
uint8 STOP_LINE = 3
uint8 DASH_LINE = 4
uint8 SPEED_BUMP = 5
uint8 ZWBRA_LINE = 6
uint8 DDLD_ROAD_BOUNDARY = 7
uint8 DDLD_LANE_BOUNDARY = 8
uint8 DDLD_STOP_LINE = 9
uint8 DDLD_CROSS_WALK = 10
uint8 DDLD_ROAD_MARK = 11
uint8 DDLD_TRAFFIC_SIGN = 12
uint8 DDLD_TRAFFIC_LIGHT = 13
uint8 value
float32 score

")



(provide :submap_msgs/VectorElementTypeEnum "56240e7d54f815cdee95dc93b1995eb7")


