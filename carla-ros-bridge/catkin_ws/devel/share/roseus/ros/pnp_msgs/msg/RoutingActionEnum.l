;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::RoutingActionEnum)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'RoutingActionEnum (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::ROUTINGACTIONENUM")
  (make-package "PNP_MSGS::ROUTINGACTIONENUM"))

(in-package "ROS")
;;//! \htmlinclude RoutingActionEnum.msg.html


(intern "*PARKING_ENTER*" (find-package "PNP_MSGS::ROUTINGACTIONENUM"))
(shadow '*PARKING_ENTER* (find-package "PNP_MSGS::ROUTINGACTIONENUM"))
(defconstant pnp_msgs::RoutingActionEnum::*PARKING_ENTER* 0)
(intern "*PARKING_EXIT*" (find-package "PNP_MSGS::ROUTINGACTIONENUM"))
(shadow '*PARKING_EXIT* (find-package "PNP_MSGS::ROUTINGACTIONENUM"))
(defconstant pnp_msgs::RoutingActionEnum::*PARKING_EXIT* 1)

(defun pnp_msgs::RoutingActionEnum-to-symbol (const)
  (cond
        ((= const 0) 'pnp_msgs::RoutingActionEnum::*PARKING_ENTER*)
        ((= const 1) 'pnp_msgs::RoutingActionEnum::*PARKING_EXIT*)
        (t nil)))

(defclass pnp_msgs::RoutingActionEnum
  :super ros::object
  :slots (_value ))

(defmethod pnp_msgs::RoutingActionEnum
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

(setf (get pnp_msgs::RoutingActionEnum :md5sum-) "ad352bc04bcc879b7a17b7ce86bf3bef")
(setf (get pnp_msgs::RoutingActionEnum :datatype-) "pnp_msgs/RoutingActionEnum")
(setf (get pnp_msgs::RoutingActionEnum :definition-)
      "uint8 PARKING_ENTER = 0
uint8 PARKING_EXIT = 1
uint8 value

")



(provide :pnp_msgs/RoutingActionEnum "ad352bc04bcc879b7a17b7ce86bf3bef")


