;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::RoadClassEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'RoadClassEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::ROADCLASSENUM")
  (make-package "TBT_MSGS::ROADCLASSENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadClassEnum.msg.html


(intern "*ROADCLASSFREEWAY*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSFREEWAY* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSFREEWAY* 0)
(intern "*ROADCLASSNATIONALROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSNATIONALROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSNATIONALROAD* 1)
(intern "*ROADCLASSPROVINCEROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSPROVINCEROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSPROVINCEROAD* 2)
(intern "*ROADCLASSCOUNTYROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSCOUNTYROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSCOUNTYROAD* 3)
(intern "*ROADCLASSRURALROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSRURALROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSRURALROAD* 4)
(intern "*ROADCLASSINCOUNTYROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSINCOUNTYROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSINCOUNTYROAD* 5)
(intern "*ROADCLASSCITYSPEEDWAY*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSCITYSPEEDWAY* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSCITYSPEEDWAY* 6)
(intern "*ROADCLASSMAINROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSMAINROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSMAINROAD* 7)
(intern "*ROADCLASSSECONDARYROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSSECONDARYROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSSECONDARYROAD* 8)
(intern "*ROADCLASSCOMMONROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSCOMMONROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSCOMMONROAD* 9)
(intern "*ROADCLASSNONNAVIROAD*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSNONNAVIROAD* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSNONNAVIROAD* 10)
(intern "*ROADCLASSNULL*" (find-package "TBT_MSGS::ROADCLASSENUM"))
(shadow '*ROADCLASSNULL* (find-package "TBT_MSGS::ROADCLASSENUM"))
(defconstant tbt_msgs::RoadClassEnum::*ROADCLASSNULL* 255)

(defun tbt_msgs::RoadClassEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::RoadClassEnum::*RoadClassFreeway*)
        ((= const 1) 'tbt_msgs::RoadClassEnum::*RoadClassNationalRoad*)
        ((= const 2) 'tbt_msgs::RoadClassEnum::*RoadClassProvinceRoad*)
        ((= const 3) 'tbt_msgs::RoadClassEnum::*RoadClassCountyRoad*)
        ((= const 4) 'tbt_msgs::RoadClassEnum::*RoadClassRuralRoad*)
        ((= const 5) 'tbt_msgs::RoadClassEnum::*RoadClassInCountyRoad*)
        ((= const 6) 'tbt_msgs::RoadClassEnum::*RoadClassCitySpeedway*)
        ((= const 7) 'tbt_msgs::RoadClassEnum::*RoadClassMainRoad*)
        ((= const 8) 'tbt_msgs::RoadClassEnum::*RoadClassSecondaryRoad*)
        ((= const 9) 'tbt_msgs::RoadClassEnum::*RoadClassCommonRoad*)
        ((= const 10) 'tbt_msgs::RoadClassEnum::*RoadClassNonNaviRoad*)
        ((= const 255) 'tbt_msgs::RoadClassEnum::*RoadClassNULL*)
        (t nil)))

(defclass tbt_msgs::RoadClassEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::RoadClassEnum
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

(setf (get tbt_msgs::RoadClassEnum :md5sum-) "7b9ef10b9bc99068fa6af9f589ee5ca1")
(setf (get tbt_msgs::RoadClassEnum :datatype-) "tbt_msgs/RoadClassEnum")
(setf (get tbt_msgs::RoadClassEnum :definition-)
      "uint8 RoadClassFreeway = 0
uint8 RoadClassNationalRoad = 1
uint8 RoadClassProvinceRoad = 2
uint8 RoadClassCountyRoad = 3
uint8 RoadClassRuralRoad = 4
uint8 RoadClassInCountyRoad = 5
uint8 RoadClassCitySpeedway = 6
uint8 RoadClassMainRoad = 7
uint8 RoadClassSecondaryRoad = 8
uint8 RoadClassCommonRoad = 9
uint8 RoadClassNonNaviRoad = 10
uint8 RoadClassNULL = 255
uint8 value

")



(provide :tbt_msgs/RoadClassEnum "7b9ef10b9bc99068fa6af9f589ee5ca1")


