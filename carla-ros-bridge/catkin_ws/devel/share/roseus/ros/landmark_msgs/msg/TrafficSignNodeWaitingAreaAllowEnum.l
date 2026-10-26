;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeWaitingAreaAllowEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeWaitingAreaAllowEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(defconstant landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID* 0)
(intern "*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(defconstant landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN* 1)
(intern "*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(defconstant landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES* 2)
(intern "*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(shadow '*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEWAITINGAREAALLOWENUM"))
(defconstant landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO* 3)

(defun landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum::*TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum
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

(setf (get landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum :md5sum-) "fbe6d87a898613232e50685646523269")
(setf (get landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum :datatype-) "landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum")
(setf (get landmark_msgs::TrafficSignNodeWaitingAreaAllowEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_INVALID = 0
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_UNKNOWN = 1
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_YES = 2
uint8 TRAFFIC_SIGN_NODE_WAITING_AREA_ALLOW_NO = 3
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeWaitingAreaAllowEnum "fbe6d87a898613232e50685646523269")


