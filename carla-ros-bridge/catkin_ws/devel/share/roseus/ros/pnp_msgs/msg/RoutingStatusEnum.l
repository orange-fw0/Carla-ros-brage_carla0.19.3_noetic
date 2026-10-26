;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::RoutingStatusEnum)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'RoutingStatusEnum (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::ROUTINGSTATUSENUM")
  (make-package "PNP_MSGS::ROUTINGSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude RoutingStatusEnum.msg.html


(intern "*ROUTING_SUCCESS*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*ROUTING_SUCCESS* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*ROUTING_SUCCESS* 0)
(intern "*NO_ROUTING_FOUND*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*NO_ROUTING_FOUND* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*NO_ROUTING_FOUND* 1)
(intern "*NO_ROADS_NEARBY_VEHICLE*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*NO_ROADS_NEARBY_VEHICLE* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*NO_ROADS_NEARBY_VEHICLE* 2)
(intern "*NO_PARKING_LOT*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*NO_PARKING_LOT* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*NO_PARKING_LOT* 3)
(intern "*NO_PARKING_SPACE*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*NO_PARKING_SPACE* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*NO_PARKING_SPACE* 4)
(intern "*NO_ROADS_BOUNDED_SPACE*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*NO_ROADS_BOUNDED_SPACE* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*NO_ROADS_BOUNDED_SPACE* 5)
(intern "*TOO_SHORT_PATH*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*TOO_SHORT_PATH* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*TOO_SHORT_PATH* 6)
(intern "*TOO_LONG_PATH*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*TOO_LONG_PATH* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*TOO_LONG_PATH* 7)
(intern "*MAP_DATA_ERROR*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*MAP_DATA_ERROR* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*MAP_DATA_ERROR* 8)
(intern "*SYSTEM_ERROR*" (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(shadow '*SYSTEM_ERROR* (find-package "PNP_MSGS::ROUTINGSTATUSENUM"))
(defconstant pnp_msgs::RoutingStatusEnum::*SYSTEM_ERROR* 255)

(defun pnp_msgs::RoutingStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'pnp_msgs::RoutingStatusEnum::*ROUTING_SUCCESS*)
        ((= const 1) 'pnp_msgs::RoutingStatusEnum::*NO_ROUTING_FOUND*)
        ((= const 2) 'pnp_msgs::RoutingStatusEnum::*NO_ROADS_NEARBY_VEHICLE*)
        ((= const 3) 'pnp_msgs::RoutingStatusEnum::*NO_PARKING_LOT*)
        ((= const 4) 'pnp_msgs::RoutingStatusEnum::*NO_PARKING_SPACE*)
        ((= const 5) 'pnp_msgs::RoutingStatusEnum::*NO_ROADS_BOUNDED_SPACE*)
        ((= const 6) 'pnp_msgs::RoutingStatusEnum::*TOO_SHORT_PATH*)
        ((= const 7) 'pnp_msgs::RoutingStatusEnum::*TOO_LONG_PATH*)
        ((= const 8) 'pnp_msgs::RoutingStatusEnum::*MAP_DATA_ERROR*)
        ((= const 255) 'pnp_msgs::RoutingStatusEnum::*SYSTEM_ERROR*)
        (t nil)))

(defclass pnp_msgs::RoutingStatusEnum
  :super ros::object
  :slots (_status ))

(defmethod pnp_msgs::RoutingStatusEnum
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pnp_msgs::RoutingStatusEnum :md5sum-) "58197edd90dad1c617b67f7261354b9b")
(setf (get pnp_msgs::RoutingStatusEnum :datatype-) "pnp_msgs/RoutingStatusEnum")
(setf (get pnp_msgs::RoutingStatusEnum :definition-)
      "uint8 ROUTING_SUCCESS = 0
uint8 NO_ROUTING_FOUND = 1
uint8 NO_ROADS_NEARBY_VEHICLE = 2
uint8 NO_PARKING_LOT = 3
uint8 NO_PARKING_SPACE = 4
uint8 NO_ROADS_BOUNDED_SPACE = 5
uint8 TOO_SHORT_PATH = 6
uint8 TOO_LONG_PATH = 7
uint8 MAP_DATA_ERROR = 8
uint8 SYSTEM_ERROR = 255
uint8 status

")



(provide :pnp_msgs/RoutingStatusEnum "58197edd90dad1c617b67f7261354b9b")


