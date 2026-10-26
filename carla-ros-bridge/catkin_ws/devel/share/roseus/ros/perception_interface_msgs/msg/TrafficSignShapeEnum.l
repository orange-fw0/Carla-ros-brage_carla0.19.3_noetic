;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSignShapeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSignShapeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignShapeEnum.msg.html


(intern "*TRAFFIC_SIGN_SHAPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_SHAPE_BACKGROUND*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_BACKGROUND* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_BACKGROUND* 1)
(intern "*TRAFFIC_SIGN_SHAPE_HEXAGON*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_HEXAGON* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_HEXAGON* 2)
(intern "*TRAFFIC_SIGN_SHAPE_DIAMOND*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_DIAMOND* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_DIAMOND* 3)
(intern "*TRAFFIC_SIGN_SHAPE_RECTANGLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_RECTANGLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_RECTANGLE* 4)
(intern "*TRAFFIC_SIGN_SHAPE_TRIANGLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TRIANGLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_TRIANGLE* 5)
(intern "*TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE* 6)
(intern "*TRAFFIC_SIGN_SHAPE_POLYGON*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_POLYGON* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_POLYGON* 7)
(intern "*TRAFFIC_SIGN_SHAPE_CIRCLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_CIRCLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNSHAPEENUM"))
(defconstant perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_CIRCLE* 8)

(defun perception_interface_msgs::TrafficSignShapeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_BACKGROUND*)
        ((= const 2) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_HEXAGON*)
        ((= const 3) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_DIAMOND*)
        ((= const 4) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_RECTANGLE*)
        ((= const 5) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_TRIANGLE*)
        ((= const 6) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE*)
        ((= const 7) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_POLYGON*)
        ((= const 8) 'perception_interface_msgs::TrafficSignShapeEnum::*TRAFFIC_SIGN_SHAPE_CIRCLE*)
        (t nil)))

(defclass perception_interface_msgs::TrafficSignShapeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficSignShapeEnum
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

(setf (get perception_interface_msgs::TrafficSignShapeEnum :md5sum-) "431f0c16990575d9ef25ed37f5d6dcf5")
(setf (get perception_interface_msgs::TrafficSignShapeEnum :datatype-) "perception_interface_msgs/TrafficSignShapeEnum")
(setf (get perception_interface_msgs::TrafficSignShapeEnum :definition-)
      "uint8 TRAFFIC_SIGN_SHAPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_SHAPE_BACKGROUND = 1
uint8 TRAFFIC_SIGN_SHAPE_HEXAGON = 2
uint8 TRAFFIC_SIGN_SHAPE_DIAMOND = 3
uint8 TRAFFIC_SIGN_SHAPE_RECTANGLE = 4
uint8 TRAFFIC_SIGN_SHAPE_TRIANGLE = 5
uint8 TRAFFIC_SIGN_SHAPE_INVERTED_TRIANGLE = 6
uint8 TRAFFIC_SIGN_SHAPE_POLYGON = 7
uint8 TRAFFIC_SIGN_SHAPE_CIRCLE = 8
uint8 value

")



(provide :perception_interface_msgs/TrafficSignShapeEnum "431f0c16990575d9ef25ed37f5d6dcf5")


