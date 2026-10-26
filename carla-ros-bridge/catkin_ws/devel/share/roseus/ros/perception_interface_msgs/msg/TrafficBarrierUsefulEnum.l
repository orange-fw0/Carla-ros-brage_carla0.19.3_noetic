;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficBarrierUsefulEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficBarrierUsefulEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERUSEFULENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERUSEFULENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficBarrierUsefulEnum.msg.html


(intern "*TRAFFIC_BARRIER_UNUSEFUL*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERUSEFULENUM"))
(shadow '*TRAFFIC_BARRIER_UNUSEFUL* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERUSEFULENUM"))
(defconstant perception_interface_msgs::TrafficBarrierUsefulEnum::*TRAFFIC_BARRIER_UNUSEFUL* 0)
(intern "*TRAFFIC_BARRIER_USEFUL*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERUSEFULENUM"))
(shadow '*TRAFFIC_BARRIER_USEFUL* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERUSEFULENUM"))
(defconstant perception_interface_msgs::TrafficBarrierUsefulEnum::*TRAFFIC_BARRIER_USEFUL* 1)

(defun perception_interface_msgs::TrafficBarrierUsefulEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficBarrierUsefulEnum::*TRAFFIC_BARRIER_UNUSEFUL*)
        ((= const 1) 'perception_interface_msgs::TrafficBarrierUsefulEnum::*TRAFFIC_BARRIER_USEFUL*)
        (t nil)))

(defclass perception_interface_msgs::TrafficBarrierUsefulEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficBarrierUsefulEnum
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

(setf (get perception_interface_msgs::TrafficBarrierUsefulEnum :md5sum-) "d084c76485f8908ea5e6f58e7f2b0434")
(setf (get perception_interface_msgs::TrafficBarrierUsefulEnum :datatype-) "perception_interface_msgs/TrafficBarrierUsefulEnum")
(setf (get perception_interface_msgs::TrafficBarrierUsefulEnum :definition-)
      "uint8 TRAFFIC_BARRIER_UNUSEFUL = 0
uint8 TRAFFIC_BARRIER_USEFUL = 1
uint8 value

")



(provide :perception_interface_msgs/TrafficBarrierUsefulEnum "d084c76485f8908ea5e6f58e7f2b0434")


