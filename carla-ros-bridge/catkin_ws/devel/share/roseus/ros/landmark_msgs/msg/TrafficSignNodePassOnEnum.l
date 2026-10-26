;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodePassOnEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodePassOnEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodePassOnEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_PASSON_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PASSON_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(defconstant landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_LEFT* 0)
(intern "*TRAFFIC_SIGN_NODE_PASSON_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PASSON_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(defconstant landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_RIGHT* 1)
(intern "*TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(defconstant landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT* 2)
(intern "*TRAFFIC_SIGN_NODE_PASSON_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PASSON_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(defconstant landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_INVALID* 100)
(intern "*TRAFFIC_SIGN_NODE_PASSON_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PASSON_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(defconstant landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_UNKNOWN* 101)
(intern "*TRAFFIC_SIGN_NODE_PASSON_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_PASSON_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEPASSONENUM"))
(defconstant landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_OTHER* 255)

(defun landmark_msgs::TrafficSignNodePassOnEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_LEFT*)
        ((= const 1) 'landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_RIGHT*)
        ((= const 2) 'landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT*)
        ((= const 100) 'landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_INVALID*)
        ((= const 101) 'landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_UNKNOWN*)
        ((= const 255) 'landmark_msgs::TrafficSignNodePassOnEnum::*TRAFFIC_SIGN_NODE_PASSON_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodePassOnEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodePassOnEnum
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

(setf (get landmark_msgs::TrafficSignNodePassOnEnum :md5sum-) "74f812117cbfa95b4d18bcc7e414ba93")
(setf (get landmark_msgs::TrafficSignNodePassOnEnum :datatype-) "landmark_msgs/TrafficSignNodePassOnEnum")
(setf (get landmark_msgs::TrafficSignNodePassOnEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_PASSON_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_PASSON_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_PASSON_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_PASSON_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_PASSON_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodePassOnEnum "74f812117cbfa95b4d18bcc7e414ba93")


