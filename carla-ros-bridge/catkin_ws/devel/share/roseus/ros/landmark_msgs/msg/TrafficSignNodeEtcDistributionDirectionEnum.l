;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeEtcDistributionDirectionEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeEtcDistributionDirectionEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE* 1)
(intern "*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT* 2)
(intern "*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT* 3)
(intern "*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEETCDISTRIBUTIONDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT* 4)

(defun landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE*)
        ((= const 2) 'landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum::*TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum
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

(setf (get landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum :md5sum-) "93e6647c5db4ea45526e3f0ee17ff86a")
(setf (get landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum :datatype-) "landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum")
(setf (get landmark_msgs::TrafficSignNodeEtcDistributionDirectionEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_NONE = 1
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_FRONT = 2
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_LEFT = 3
uint8 TRAFFIC_SIGN_NODE_ETC_DISTRIBUTION_DIRECTION_RIGHT = 4
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeEtcDistributionDirectionEnum "93e6647c5db4ea45526e3f0ee17ff86a")


