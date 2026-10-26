;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficBarrierTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficBarrierTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficBarrierTypeEnum.msg.html


(intern "*TRAFFIC_BARRIER_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_UNKNOWN* 0)
(intern "*TRAFFIC_BARRIER_TYPE_CONE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_CONE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONE* 1)
(intern "*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE* 2)
(intern "*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE* 3)
(intern "*TRAFFIC_BARRIER_TYPE_PARKING_LOCK*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_PARKING_LOCK* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_LOCK* 4)
(intern "*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN* 5)
(intern "*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET* 6)
(intern "*TRAFFIC_BARRIER_TYPE_DUSTBIN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_DUSTBIN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_DUSTBIN* 7)
(intern "*TRAFFIC_BARRIER_TYPE_BARRIER_STONE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_BARRIER_STONE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_BARRIER_STONE* 8)
(intern "*TRAFFIC_BARRIER_TYPE_WATER_BARRIER*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_WATER_BARRIER* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_WATER_BARRIER* 9)
(intern "*TRAFFIC_BARRIER_TYPE_PARKING_STOPPER*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_PARKING_STOPPER* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_STOPPER* 10)
(intern "*TRAFFIC_BARRIER_TYPE_UNMARKED*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_UNMARKED* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_UNMARKED* 11)
(intern "*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN* 12)
(intern "*TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER* 13)
(intern "*TRAFFIC_BARRIER_TYPE_PARKING_GATE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_PARKING_GATE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_GATE* 14)
(intern "*TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON* 15)
(intern "*TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF* 16)
(intern "*TRAFFIC_BARRIER_TYPE_EU_FENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_EU_FENCE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_EU_FENCE* 17)
(intern "*TRAFFIC_BARRIER_TYPE_US_CONE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_US_CONE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_US_CONE* 18)
(intern "*TRAFFIC_BARRIER_TYPE_PAPER_BOX*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_PAPER_BOX* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PAPER_BOX* 19)
(intern "*TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS* 20)
(intern "*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE* 21)
(intern "*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING* 22)
(intern "*TRAFFIC_BARRIER_TYPE_AVIOD*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_AVIOD* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_AVIOD* 23)
(intern "*TRAFFIC_BARRIER_TYPE_BRAKE*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_BRAKE* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_BRAKE* 24)
(intern "*TRAFFIC_BARRIER_TYPE_FAR*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_FAR* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_FAR* 25)
(intern "*TRAFFIC_BARRIER_TYPE_NEAR*" (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(shadow '*TRAFFIC_BARRIER_TYPE_NEAR* (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICBARRIERTYPEENUM"))
(defconstant perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_NEAR* 26)

(defun perception_interface_msgs::TrafficBarrierTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONE*)
        ((= const 2) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE*)
        ((= const 3) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE*)
        ((= const 4) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_LOCK*)
        ((= const 5) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_AFRAME_SIGN*)
        ((= const 6) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET*)
        ((= const 7) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_DUSTBIN*)
        ((= const 8) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_BARRIER_STONE*)
        ((= const 9) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_WATER_BARRIER*)
        ((= const 10) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_STOPPER*)
        ((= const 11) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_UNMARKED*)
        ((= const 12) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN*)
        ((= const 13) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER*)
        ((= const 14) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_GATE*)
        ((= const 15) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON*)
        ((= const 16) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF*)
        ((= const 17) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_EU_FENCE*)
        ((= const 18) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_US_CONE*)
        ((= const 19) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_PAPER_BOX*)
        ((= const 20) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS*)
        ((= const 21) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE*)
        ((= const 22) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING*)
        ((= const 23) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_AVIOD*)
        ((= const 24) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_BRAKE*)
        ((= const 25) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_FAR*)
        ((= const 26) 'perception_interface_msgs::TrafficBarrierTypeEnum::*TRAFFIC_BARRIER_TYPE_NEAR*)
        (t nil)))

(defclass perception_interface_msgs::TrafficBarrierTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::TrafficBarrierTypeEnum
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

(setf (get perception_interface_msgs::TrafficBarrierTypeEnum :md5sum-) "31db85895201704e77e307146acd3a05")
(setf (get perception_interface_msgs::TrafficBarrierTypeEnum :datatype-) "perception_interface_msgs/TrafficBarrierTypeEnum")
(setf (get perception_interface_msgs::TrafficBarrierTypeEnum :definition-)
      "uint8 TRAFFIC_BARRIER_TYPE_UNKNOWN = 0
uint8 TRAFFIC_BARRIER_TYPE_CONE = 1
uint8 TRAFFIC_BARRIER_TYPE_WARNING_TRIANGLE = 2
uint8 TRAFFIC_BARRIER_TYPE_BOLLARD_SLEEVE = 3
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK = 4
uint8 TRAFFIC_BARRIER_TYPE_AFRAME_SIGN = 5
uint8 TRAFFIC_BARRIER_TYPE_ANTICRASH_BUCKET = 6
uint8 TRAFFIC_BARRIER_TYPE_DUSTBIN = 7
uint8 TRAFFIC_BARRIER_TYPE_BARRIER_STONE = 8
uint8 TRAFFIC_BARRIER_TYPE_WATER_BARRIER = 9
uint8 TRAFFIC_BARRIER_TYPE_PARKING_STOPPER = 10
uint8 TRAFFIC_BARRIER_TYPE_UNMARKED = 11
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_SIGN = 12
uint8 TRAFFIC_BARRIER_TYPE_OBSTRUCTION_MARKER = 13
uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE = 14
uint8 TRAFFIC_BARRIER_TYPE_PARKING_GATE_ON = 15
uint8 TRAFFIC_BARRIER_TYPE_PARKING_LOCK_OFF = 16
uint8 TRAFFIC_BARRIER_TYPE_EU_FENCE = 17
uint8 TRAFFIC_BARRIER_TYPE_US_CONE = 18
uint8 TRAFFIC_BARRIER_TYPE_PAPER_BOX = 19
uint8 TRAFFIC_BARRIER_TYPE_CEMENT_BLOCKS = 20
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_FENCE = 21
uint8 TRAFFIC_BARRIER_TYPE_CONSTRUCTION_HOARDING = 22
uint8 TRAFFIC_BARRIER_TYPE_AVIOD = 23
uint8 TRAFFIC_BARRIER_TYPE_BRAKE = 24
uint8 TRAFFIC_BARRIER_TYPE_FAR = 25
uint8 TRAFFIC_BARRIER_TYPE_NEAR = 26
uint8 value

")



(provide :perception_interface_msgs/TrafficBarrierTypeEnum "31db85895201704e77e307146acd3a05")


