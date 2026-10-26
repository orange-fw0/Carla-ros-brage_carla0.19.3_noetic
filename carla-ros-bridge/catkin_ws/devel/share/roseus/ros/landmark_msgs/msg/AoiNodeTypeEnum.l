;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::AoiNodeTypeEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'AoiNodeTypeEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::AOINODETYPEENUM")
  (make-package "LANDMARK_MSGS::AOINODETYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude AoiNodeTypeEnum.msg.html


(intern "*AOI_TYPE_UNKNOWN*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_UNKNOWN* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_UNKNOWN* 0)
(intern "*AOI_TYPE_EMERGENCY_PARKING_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_EMERGENCY_PARKING_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_EMERGENCY_PARKING_AREA* 1)
(intern "*AOI_TYPE_EMERGENCY_ESCAPE_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_EMERGENCY_ESCAPE_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_EMERGENCY_ESCAPE_AREA* 2)
(intern "*AOI_TYPE_TOLLGATE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_TOLLGATE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_TOLLGATE* 3)
(intern "*AOI_TYPE_CHECK_POINT*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_CHECK_POINT* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_CHECK_POINT* 4)
(intern "*AOI_TYPE_SERVICE_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_SERVICE_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_SERVICE_AREA* 5)
(intern "*AOI_TYPE_CONSTRUCTION_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_CONSTRUCTION_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_CONSTRUCTION_AREA* 6)
(intern "*AOI_TYPE_INTERSECTION*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_INTERSECTION* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_INTERSECTION* 7)
(intern "*AOI_TYPE_BARRIER_GAP*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_BARRIER_GAP* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_BARRIER_GAP* 8)
(intern "*AOI_TYPE_STOPPING_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_STOPPING_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_STOPPING_AREA* 9)
(intern "*AOI_TYPE_ELEVATOR_ENTRANCE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_ELEVATOR_ENTRANCE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_ELEVATOR_ENTRANCE* 10)
(intern "*AOI_TYPE_FACILITY_ENTRANCE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_FACILITY_ENTRANCE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FACILITY_ENTRANCE* 11)
(intern "*AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE* 12)
(intern "*AOI_TYPE_FLOORS*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_FLOORS* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FLOORS* 13)
(intern "*AOI_TYPE_GARAGE_EXIT*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_GARAGE_EXIT* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_GARAGE_EXIT* 14)
(intern "*AOI_TYPE_GARAGE_ENTRANCE_EXIT*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_GARAGE_ENTRANCE_EXIT* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_GARAGE_ENTRANCE_EXIT* 15)
(intern "*AOI_TYPE_HILL*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_HILL* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_HILL* 16)
(intern "*AOI_TYPE_HUMAN_ACCESS*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_HUMAN_ACCESS* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_HUMAN_ACCESS* 17)
(intern "*AOI_TYPE_PARK_INTERSECTION*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_PARK_INTERSECTION* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_PARK_INTERSECTION* 18)
(intern "*AOI_TYPE_TOLL_GATE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_TOLL_GATE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_TOLL_GATE* 19)
(intern "*AOI_TYPE_SUB_REGION*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_SUB_REGION* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_SUB_REGION* 20)
(intern "*AOI_TYPE_MARKET_ENTRANCE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_MARKET_ENTRANCE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_MARKET_ENTRANCE* 21)
(intern "*AOI_TYPE_GARAGE_ENTRANCE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_GARAGE_ENTRANCE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_GARAGE_ENTRANCE* 22)
(intern "*AOI_TYPE_FACILITY_EXIT*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_FACILITY_EXIT* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FACILITY_EXIT* 23)
(intern "*AOI_TYPE_BUS_STOP*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_BUS_STOP* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_BUS_STOP* 24)
(intern "*AOI_TYPE_CHARGIINIG_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_CHARGIINIG_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_CHARGIINIG_AREA* 25)
(intern "*AOI_TYPE_ESCALATOR_ENTRANCE*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_ESCALATOR_ENTRANCE* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_ESCALATOR_ENTRANCE* 26)
(intern "*AOI_TYPE_DASH_UTURN_AREA*" (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(shadow '*AOI_TYPE_DASH_UTURN_AREA* (find-package "LANDMARK_MSGS::AOINODETYPEENUM"))
(defconstant landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_DASH_UTURN_AREA* 27)

(defun landmark_msgs::AoiNodeTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_UNKNOWN*)
        ((= const 1) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_EMERGENCY_PARKING_AREA*)
        ((= const 2) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_EMERGENCY_ESCAPE_AREA*)
        ((= const 3) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_TOLLGATE*)
        ((= const 4) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_CHECK_POINT*)
        ((= const 5) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_SERVICE_AREA*)
        ((= const 6) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_CONSTRUCTION_AREA*)
        ((= const 7) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_INTERSECTION*)
        ((= const 8) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_BARRIER_GAP*)
        ((= const 9) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_STOPPING_AREA*)
        ((= const 10) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_ELEVATOR_ENTRANCE*)
        ((= const 11) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FACILITY_ENTRANCE*)
        ((= const 12) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE*)
        ((= const 13) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FLOORS*)
        ((= const 14) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_GARAGE_EXIT*)
        ((= const 15) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_GARAGE_ENTRANCE_EXIT*)
        ((= const 16) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_HILL*)
        ((= const 17) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_HUMAN_ACCESS*)
        ((= const 18) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_PARK_INTERSECTION*)
        ((= const 19) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_TOLL_GATE*)
        ((= const 20) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_SUB_REGION*)
        ((= const 21) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_MARKET_ENTRANCE*)
        ((= const 22) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_GARAGE_ENTRANCE*)
        ((= const 23) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_FACILITY_EXIT*)
        ((= const 24) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_BUS_STOP*)
        ((= const 25) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_CHARGIINIG_AREA*)
        ((= const 26) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_ESCALATOR_ENTRANCE*)
        ((= const 27) 'landmark_msgs::AoiNodeTypeEnum::*AOI_TYPE_DASH_UTURN_AREA*)
        (t nil)))

(defclass landmark_msgs::AoiNodeTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::AoiNodeTypeEnum
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

(setf (get landmark_msgs::AoiNodeTypeEnum :md5sum-) "c6de3066781b9a65077179a9c754202a")
(setf (get landmark_msgs::AoiNodeTypeEnum :datatype-) "landmark_msgs/AoiNodeTypeEnum")
(setf (get landmark_msgs::AoiNodeTypeEnum :definition-)
      "uint8 AOI_TYPE_UNKNOWN = 0
uint8 AOI_TYPE_EMERGENCY_PARKING_AREA = 1
uint8 AOI_TYPE_EMERGENCY_ESCAPE_AREA = 2
uint8 AOI_TYPE_TOLLGATE = 3
uint8 AOI_TYPE_CHECK_POINT = 4
uint8 AOI_TYPE_SERVICE_AREA = 5
uint8 AOI_TYPE_CONSTRUCTION_AREA = 6
uint8 AOI_TYPE_INTERSECTION = 7
uint8 AOI_TYPE_BARRIER_GAP = 8
uint8 AOI_TYPE_STOPPING_AREA = 9
uint8 AOI_TYPE_ELEVATOR_ENTRANCE = 10
uint8 AOI_TYPE_FACILITY_ENTRANCE = 11
uint8 AOI_TYPE_FACILITY_EXIT_AND_ENTRANCE = 12
uint8 AOI_TYPE_FLOORS = 13
uint8 AOI_TYPE_GARAGE_EXIT = 14
uint8 AOI_TYPE_GARAGE_ENTRANCE_EXIT = 15
uint8 AOI_TYPE_HILL = 16
uint8 AOI_TYPE_HUMAN_ACCESS = 17
uint8 AOI_TYPE_PARK_INTERSECTION = 18
uint8 AOI_TYPE_TOLL_GATE = 19
uint8 AOI_TYPE_SUB_REGION = 20
uint8 AOI_TYPE_MARKET_ENTRANCE = 21
uint8 AOI_TYPE_GARAGE_ENTRANCE = 22
uint8 AOI_TYPE_FACILITY_EXIT = 23
uint8 AOI_TYPE_BUS_STOP = 24
uint8 AOI_TYPE_CHARGIINIG_AREA = 25
uint8 AOI_TYPE_ESCALATOR_ENTRANCE = 26
uint8 AOI_TYPE_DASH_UTURN_AREA = 27
uint8 value

")



(provide :landmark_msgs/AoiNodeTypeEnum "c6de3066781b9a65077179a9c754202a")


