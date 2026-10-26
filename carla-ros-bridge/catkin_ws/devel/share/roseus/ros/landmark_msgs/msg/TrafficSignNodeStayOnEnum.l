;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeStayOnEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeStayOnEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeStayOnEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_STAYON_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_STAYON_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(defconstant landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_LEFT* 0)
(intern "*TRAFFIC_SIGN_NODE_STAYON_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_STAYON_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(defconstant landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_RIGHT* 1)
(intern "*TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(defconstant landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT* 2)
(intern "*TRAFFIC_SIGN_NODE_STAYON_INVALID*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_STAYON_INVALID* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(defconstant landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_INVALID* 100)
(intern "*TRAFFIC_SIGN_NODE_STAYON_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_STAYON_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(defconstant landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_UNKNOWN* 101)
(intern "*TRAFFIC_SIGN_NODE_STAYON_OTHER*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_STAYON_OTHER* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODESTAYONENUM"))
(defconstant landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_OTHER* 255)

(defun landmark_msgs::TrafficSignNodeStayOnEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_LEFT*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_RIGHT*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT*)
        ((= const 100) 'landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_INVALID*)
        ((= const 101) 'landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_UNKNOWN*)
        ((= const 255) 'landmark_msgs::TrafficSignNodeStayOnEnum::*TRAFFIC_SIGN_NODE_STAYON_OTHER*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeStayOnEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeStayOnEnum
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

(setf (get landmark_msgs::TrafficSignNodeStayOnEnum :md5sum-) "8cae315ffb7c3707a9d5ad8f0d98c2e7")
(setf (get landmark_msgs::TrafficSignNodeStayOnEnum :datatype-) "landmark_msgs/TrafficSignNodeStayOnEnum")
(setf (get landmark_msgs::TrafficSignNodeStayOnEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT = 0
uint8 TRAFFIC_SIGN_NODE_STAYON_RIGHT = 1
uint8 TRAFFIC_SIGN_NODE_STAYON_LEFT_RIGHT = 2
uint8 TRAFFIC_SIGN_NODE_STAYON_INVALID = 100
uint8 TRAFFIC_SIGN_NODE_STAYON_UNKNOWN = 101
uint8 TRAFFIC_SIGN_NODE_STAYON_OTHER = 255
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeStayOnEnum "8cae315ffb7c3707a9d5ad8f0d98c2e7")


