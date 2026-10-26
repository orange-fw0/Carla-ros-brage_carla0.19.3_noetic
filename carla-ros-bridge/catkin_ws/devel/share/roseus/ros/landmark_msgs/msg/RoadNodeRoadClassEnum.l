;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::RoadNodeRoadClassEnum)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'RoadNodeRoadClassEnum (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM")
  (make-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadNodeRoadClassEnum.msg.html


(intern "*ROAD_CLASS_UNKNOWN*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*ROAD_CLASS_UNKNOWN* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*ROAD_CLASS_UNKNOWN* 0)
(intern "*HIGHWAY*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*HIGHWAY* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*HIGHWAY* 1)
(intern "*URBAN*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*URBAN* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*URBAN* 2)
(intern "*CITY_EXPRESSWAY*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*CITY_EXPRESSWAY* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*CITY_EXPRESSWAY* 3)
(intern "*STATE_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*STATE_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*STATE_ROAD* 4)
(intern "*PROVINCIAL_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*PROVINCIAL_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*PROVINCIAL_ROAD* 5)
(intern "*MAIN_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*MAIN_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*MAIN_ROAD* 6)
(intern "*SECONDARY_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*SECONDARY_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*SECONDARY_ROAD* 7)
(intern "*NORMAL_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*NORMAL_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*NORMAL_ROAD* 8)
(intern "*COUNTY_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*COUNTY_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*COUNTY_ROAD* 9)
(intern "*COUNTRY_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*COUNTRY_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*COUNTRY_ROAD* 10)
(intern "*INTERNAL_ROAD*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*INTERNAL_ROAD* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*INTERNAL_ROAD* 11)
(intern "*OTHERS*" (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(shadow '*OTHERS* (find-package "LANDMARK_MSGS::ROADNODEROADCLASSENUM"))
(defconstant landmark_msgs::RoadNodeRoadClassEnum::*OTHERS* 99)

(defun landmark_msgs::RoadNodeRoadClassEnum-to-symbol (const)
  (cond
        ((= const 0) 'landmark_msgs::RoadNodeRoadClassEnum::*ROAD_CLASS_UNKNOWN*)
        ((= const 1) 'landmark_msgs::RoadNodeRoadClassEnum::*HIGHWAY*)
        ((= const 2) 'landmark_msgs::RoadNodeRoadClassEnum::*URBAN*)
        ((= const 3) 'landmark_msgs::RoadNodeRoadClassEnum::*CITY_EXPRESSWAY*)
        ((= const 4) 'landmark_msgs::RoadNodeRoadClassEnum::*STATE_ROAD*)
        ((= const 5) 'landmark_msgs::RoadNodeRoadClassEnum::*PROVINCIAL_ROAD*)
        ((= const 6) 'landmark_msgs::RoadNodeRoadClassEnum::*MAIN_ROAD*)
        ((= const 7) 'landmark_msgs::RoadNodeRoadClassEnum::*SECONDARY_ROAD*)
        ((= const 8) 'landmark_msgs::RoadNodeRoadClassEnum::*NORMAL_ROAD*)
        ((= const 9) 'landmark_msgs::RoadNodeRoadClassEnum::*COUNTY_ROAD*)
        ((= const 10) 'landmark_msgs::RoadNodeRoadClassEnum::*COUNTRY_ROAD*)
        ((= const 11) 'landmark_msgs::RoadNodeRoadClassEnum::*INTERNAL_ROAD*)
        ((= const 99) 'landmark_msgs::RoadNodeRoadClassEnum::*OTHERS*)
        (t nil)))

(defclass landmark_msgs::RoadNodeRoadClassEnum
  :super ros::object
  :slots (_value ))

(defmethod landmark_msgs::RoadNodeRoadClassEnum
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

(setf (get landmark_msgs::RoadNodeRoadClassEnum :md5sum-) "1904da43f4202d5a315d1867284cfca2")
(setf (get landmark_msgs::RoadNodeRoadClassEnum :datatype-) "landmark_msgs/RoadNodeRoadClassEnum")
(setf (get landmark_msgs::RoadNodeRoadClassEnum :definition-)
      "uint8 ROAD_CLASS_UNKNOWN = 0
uint8 HIGHWAY = 1
uint8 URBAN = 2
uint8 CITY_EXPRESSWAY = 3
uint8 STATE_ROAD = 4
uint8 PROVINCIAL_ROAD = 5
uint8 MAIN_ROAD = 6
uint8 SECONDARY_ROAD = 7
uint8 NORMAL_ROAD = 8
uint8 COUNTY_ROAD = 9
uint8 COUNTRY_ROAD = 10
uint8 INTERNAL_ROAD = 11
uint8 OTHERS = 99
uint8 value

")



(provide :landmark_msgs/RoadNodeRoadClassEnum "1904da43f4202d5a315d1867284cfca2")


