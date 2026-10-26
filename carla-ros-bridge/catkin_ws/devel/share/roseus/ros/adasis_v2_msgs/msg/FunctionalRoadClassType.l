;; Auto-generated. Do not edit!


(when (boundp 'adasis_v2_msgs::FunctionalRoadClassType)
  (if (not (find-package "ADASIS_V2_MSGS"))
    (make-package "ADASIS_V2_MSGS"))
  (shadow 'FunctionalRoadClassType (find-package "ADASIS_V2_MSGS")))
(unless (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE")
  (make-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))

(in-package "ROS")
;;//! \htmlinclude FunctionalRoadClassType.msg.html


(intern "*UNKNOWN*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*UNKNOWN* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*UNKNOWN* 0)
(intern "*HIGH_WAY*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*HIGH_WAY* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*HIGH_WAY* 1)
(intern "*URBAN_EXPRESS_WAY*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*URBAN_EXPRESS_WAY* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*URBAN_EXPRESS_WAY* 2)
(intern "*NATIONAL_ROAD*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*NATIONAL_ROAD* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*NATIONAL_ROAD* 3)
(intern "*PROVINCE_OR_COUNTRY_ROAD*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*PROVINCE_OR_COUNTRY_ROAD* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*PROVINCE_OR_COUNTRY_ROAD* 4)
(intern "*URBAN_MAIN_ROAD*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*URBAN_MAIN_ROAD* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*URBAN_MAIN_ROAD* 5)
(intern "*OTHER_ROAD_OR_AVENUE*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*OTHER_ROAD_OR_AVENUE* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*OTHER_ROAD_OR_AVENUE* 6)
(intern "*NOT_APPLICABLE*" (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(shadow '*NOT_APPLICABLE* (find-package "ADASIS_V2_MSGS::FUNCTIONALROADCLASSTYPE"))
(defconstant adasis_v2_msgs::FunctionalRoadClassType::*NOT_APPLICABLE* 7)

(defun adasis_v2_msgs::FunctionalRoadClassType-to-symbol (const)
  (cond
        ((= const 0) 'adasis_v2_msgs::FunctionalRoadClassType::*UNKNOWN*)
        ((= const 1) 'adasis_v2_msgs::FunctionalRoadClassType::*HIGH_WAY*)
        ((= const 2) 'adasis_v2_msgs::FunctionalRoadClassType::*URBAN_EXPRESS_WAY*)
        ((= const 3) 'adasis_v2_msgs::FunctionalRoadClassType::*NATIONAL_ROAD*)
        ((= const 4) 'adasis_v2_msgs::FunctionalRoadClassType::*PROVINCE_OR_COUNTRY_ROAD*)
        ((= const 5) 'adasis_v2_msgs::FunctionalRoadClassType::*URBAN_MAIN_ROAD*)
        ((= const 6) 'adasis_v2_msgs::FunctionalRoadClassType::*OTHER_ROAD_OR_AVENUE*)
        ((= const 7) 'adasis_v2_msgs::FunctionalRoadClassType::*NOT_APPLICABLE*)
        (t nil)))

(defclass adasis_v2_msgs::FunctionalRoadClassType
  :super ros::object
  :slots (_value ))

(defmethod adasis_v2_msgs::FunctionalRoadClassType
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

(setf (get adasis_v2_msgs::FunctionalRoadClassType :md5sum-) "0c25d4b2779450dd40b9eff67c90eef4")
(setf (get adasis_v2_msgs::FunctionalRoadClassType :datatype-) "adasis_v2_msgs/FunctionalRoadClassType")
(setf (get adasis_v2_msgs::FunctionalRoadClassType :definition-)
      "uint8 UNKNOWN = 0
uint8 HIGH_WAY = 1
uint8 URBAN_EXPRESS_WAY = 2
uint8 NATIONAL_ROAD = 3
uint8 PROVINCE_OR_COUNTRY_ROAD = 4
uint8 URBAN_MAIN_ROAD = 5
uint8 OTHER_ROAD_OR_AVENUE = 6
uint8 NOT_APPLICABLE = 7
uint8 value

")



(provide :adasis_v2_msgs/FunctionalRoadClassType "0c25d4b2779450dd40b9eff67c90eef4")


