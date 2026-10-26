;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeParkingSubTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeParkingSubTypeEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID* 0)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN* 1)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI* 2)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS* 3)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS* 4)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED* 5)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL* 6)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE* 7)
(intern "*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPARKINGSUBTYPEENUM"))
(defconstant landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER* 255)

(defun landmark_msgs::TrafficSignNodeParkingSubTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS*)
        ((= const 5) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED*)
        ((= const 6) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL*)
        ((= const 7) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE*)
        ((= const 255) 'landmark_msgs::TrafficSignNodeParkingSubTypeEnum::*TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeParkingSubTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeParkingSubTypeEnum
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

(setf (get landmark_msgs::TrafficSignNodeParkingSubTypeEnum :md5sum-) "e26d49858709c0d277e042ca328873e6")
(setf (get landmark_msgs::TrafficSignNodeParkingSubTypeEnum :datatype-) "landmark_msgs/TrafficSignNodeParkingSubTypeEnum")
(setf (get landmark_msgs::TrafficSignNodeParkingSubTypeEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_TAXI = 2
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_SCHOOLBUS = 3
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_BUS = 4
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_DISABLED = 5
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_FEMAIL = 6
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_CHARGE = 7
uint8 TRAFFIC_SIGN_NODE_PARKING_SUBTYPE_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeParkingSubTypeEnum "e26d49858709c0d277e042ca328873e6")


