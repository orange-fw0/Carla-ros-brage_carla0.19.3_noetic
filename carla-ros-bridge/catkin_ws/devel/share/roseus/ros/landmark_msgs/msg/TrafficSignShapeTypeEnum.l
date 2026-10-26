;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignShapeTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignShapeTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignShapeTypeEnum.msg.html


(intern "*TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE* 1)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND* 2)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE* 3)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE* 4)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE* 5)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE* 6)
(intern "*TRAFFIC_SIGN_SHAPE_TYPE_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(shadow '*TRAFFIC_SIGN_SHAPE_TYPE_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNSHAPETYPEENUM"))
(defconstant landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_OTHER* 7)

(defun landmark_msgs::TrafficSignShapeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE*)
        ((= const 2) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND*)
        ((= const 3) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE*)
        ((= const 4) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE*)
        ((= const 5) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE*)
        ((= const 6) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE*)
        ((= const 7) 'landmark_msgs::TrafficSignShapeTypeEnum::*TRAFFIC_SIGN_SHAPE_TYPE_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignShapeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignShapeTypeEnum
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

(setf (get landmark_msgs::TrafficSignShapeTypeEnum :md5sum-) "8bf54da8eb36e30faf550fd112e6ae73")
(setf (get landmark_msgs::TrafficSignShapeTypeEnum :datatype-) "landmark_msgs/TrafficSignShapeTypeEnum")
(setf (get landmark_msgs::TrafficSignShapeTypeEnum :definition-)
      "uint8 TRAFFIC_SIGN_SHAPE_TYPE_UNKNOWN = 0
uint8 TRAFFIC_SIGN_SHAPE_TYPE_RECTANGLE = 1
uint8 TRAFFIC_SIGN_SHAPE_TYPE_DIAMOND = 2
uint8 TRAFFIC_SIGN_SHAPE_TYPE_TRIANGLE = 3
uint8 TRAFFIC_SIGN_SHAPE_TYPE_INVERTED_TRIANGLE = 4
uint8 TRAFFIC_SIGN_SHAPE_TYPE_CIRCLE = 5
uint8 TRAFFIC_SIGN_SHAPE_TYPE_OCTANGLE = 6
uint8 TRAFFIC_SIGN_SHAPE_TYPE_OTHER = 7
uint8 value

")



(provide :landmark_msgs/TrafficSignShapeTypeEnum "8bf54da8eb36e30faf550fd112e6ae73")


