;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeHeightLimitEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeHeightLimitEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeHeightLimitEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0* 0)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1* 1)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2* 2)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3* 3)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4* 4)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5* 5)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6* 6)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7* 7)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8* 8)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9* 9)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE* 10)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID* 100)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN* 101)
(intern "*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(shadow '*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEHEIGHTLIMITENUM"))
(defconstant landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER* 255)

(defun landmark_msgs::TrafficSignNodeHeightLimitEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4*)
        ((= const 5) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5*)
        ((= const 6) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6*)
        ((= const 7) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7*)
        ((= const 8) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8*)
        ((= const 9) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9*)
        ((= const 10) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE*)
        ((= const 100) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID*)
        ((= const 101) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN*)
        ((= const 255) 'landmark_msgs::TrafficSignNodeHeightLimitEnum::*TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeHeightLimitEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeHeightLimitEnum
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

(setf (get landmark_msgs::TrafficSignNodeHeightLimitEnum :md5sum-) "c70d44238e615753de3c2440803129da")
(setf (get landmark_msgs::TrafficSignNodeHeightLimitEnum :datatype-) "landmark_msgs/TrafficSignNodeHeightLimitEnum")
(setf (get landmark_msgs::TrafficSignNodeHeightLimitEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_0 = 0
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_1 = 1
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_2 = 2
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_3 = 3
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_4 = 4
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_5 = 5
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_6 = 6
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_7 = 7
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_8 = 8
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_9 = 9
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_NONE = 10
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_HEIGHT_LIMIT_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeHeightLimitEnum "c70d44238e615753de3c2440803129da")


