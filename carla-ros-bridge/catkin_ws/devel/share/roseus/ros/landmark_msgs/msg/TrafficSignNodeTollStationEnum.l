;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeTollStationEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeTollStationEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeTollStationEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC* 0)
(intern "*TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL* 1)
(intern "*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL* 2)
(intern "*TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID* 100)
(intern "*TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN* 101)
(intern "*TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODETOLLSTATIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER* 255)

(defun landmark_msgs::TrafficSignNodeTollStationEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL*)
        ((= const 100) 'landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID*)
        ((= const 101) 'landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN*)
        ((= const 255) 'landmark_msgs::TrafficSignNodeTollStationEnum::*TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeTollStationEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeTollStationEnum
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

(setf (get landmark_msgs::TrafficSignNodeTollStationEnum :md5sum-) "1117f5193a66aeae40d3516f214b635c")
(setf (get landmark_msgs::TrafficSignNodeTollStationEnum :datatype-) "landmark_msgs/TrafficSignNodeTollStationEnum")
(setf (get landmark_msgs::TrafficSignNodeTollStationEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC = 0
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_MANUAL = 1
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_ETC_MANUAL = 2
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_TOLLSTATION_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeTollStationEnum "1117f5193a66aeae40d3516f214b635c")


