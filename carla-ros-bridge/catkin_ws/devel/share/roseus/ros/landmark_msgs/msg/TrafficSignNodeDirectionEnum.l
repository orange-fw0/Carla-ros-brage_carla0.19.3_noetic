;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficSignNodeDirectionEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficSignNodeDirectionEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM")
  (make-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignNodeDirectionEnum.msg.html


(intern "*TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN* 0)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_FRONT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_FRONT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_FRONT* 1)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_BACK*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_BACK* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_BACK* 3)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_LEFT* 4)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_RIGHT* 5)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT* 6)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT* 7)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_X*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_X* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_X* 8)
(intern "*TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE*" (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(shadow '*TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE* (find-package "LANDMARK_MSGS::TRAFFICSIGNNODEDIRECTIONENUM"))
(defconstant landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE* 9)

(defun landmark_msgs::TrafficSignNodeDirectionEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN*)
        ((= const 1) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_FRONT*)
        ((= const 3) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_BACK*)
        ((= const 4) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_LEFT*)
        ((= const 5) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_RIGHT*)
        ((= const 6) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT*)
        ((= const 7) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT*)
        ((= const 8) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_X*)
        ((= const 9) 'landmark_msgs::TrafficSignNodeDirectionEnum::*TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE*)
        (t nil)))

(defclass landmark_msgs::TrafficSignNodeDirectionEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::TrafficSignNodeDirectionEnum
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

(setf (get landmark_msgs::TrafficSignNodeDirectionEnum :md5sum-) "a534a7c9e1ee7b5730c62c6cf5a7e150")
(setf (get landmark_msgs::TrafficSignNodeDirectionEnum :datatype-) "landmark_msgs/TrafficSignNodeDirectionEnum")
(setf (get landmark_msgs::TrafficSignNodeDirectionEnum :definition-)
      "uint8 TRAFFIC_SIGN_NODE_DIRECTION_UNKNOWN = 0
uint8 TRAFFIC_SIGN_NODE_DIRECTION_FRONT = 1
uint8 TRAFFIC_SIGN_NODE_DIRECTION_BACK = 3
uint8 TRAFFIC_SIGN_NODE_DIRECTION_LEFT = 4
uint8 TRAFFIC_SIGN_NODE_DIRECTION_RIGHT = 5
uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_LEFT = 6
uint8 TRAFFIC_SIGN_NODE_DIRECTION_U_RIGHT = 7
uint8 TRAFFIC_SIGN_NODE_DIRECTION_X = 8
uint8 TRAFFIC_SIGN_NODE_DIRECTION_MUTABLE = 9
uint8 value

")



(provide :landmark_msgs/TrafficSignNodeDirectionEnum "a534a7c9e1ee7b5730c62c6cf5a7e150")


