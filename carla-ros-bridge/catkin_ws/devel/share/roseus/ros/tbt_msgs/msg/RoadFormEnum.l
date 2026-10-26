;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::RoadFormEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'RoadFormEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::ROADFORMENUM")
  (make-package "TBT_MSGS::ROADFORMENUM"))

(in-package "ROS")
;;//! \htmlinclude RoadFormEnum.msg.html


(intern "*FORMWAYDIVISEDLINK*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYDIVISEDLINK* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYDIVISEDLINK* 1)
(intern "*FORMWAYCROSSLINK*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYCROSSLINK* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYCROSSLINK* 2)
(intern "*FORMWAYJCT*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYJCT* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYJCT* 3)
(intern "*FORMWAYROUNDCIRCLE*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYROUNDCIRCLE* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYROUNDCIRCLE* 4)
(intern "*FORMWAYSERVICEROAD*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSERVICEROAD* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSERVICEROAD* 5)
(intern "*FORMWAYSLIPROAD*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSLIPROAD* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSLIPROAD* 6)
(intern "*FORMWAYSIDEROAD*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSIDEROAD* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSIDEROAD* 7)
(intern "*FORMWAYSLIPJCT*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSLIPJCT* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSLIPJCT* 8)
(intern "*FORMWAYEXITLINK*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYEXITLINK* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYEXITLINK* 9)
(intern "*FORMWAYENTRANCELINK*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYENTRANCELINK* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYENTRANCELINK* 10)
(intern "*FORMWAYTURNRIGHTLINEA*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYTURNRIGHTLINEA* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYTURNRIGHTLINEA* 11)
(intern "*FORMWAYTURNRIGHTLINEB*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYTURNRIGHTLINEB* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYTURNRIGHTLINEB* 12)
(intern "*FORMWAYTURNLEFTLINEA*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYTURNLEFTLINEA* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYTURNLEFTLINEA* 13)
(intern "*FORMWAYTURNLEFTLINEB*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYTURNLEFTLINEB* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYTURNLEFTLINEB* 14)
(intern "*FORMWAYCOMMONLINK*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYCOMMONLINK* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYCOMMONLINK* 15)
(intern "*FORMWAYTURNLEFTRIGHTLINE*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYTURNLEFTRIGHTLINE* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYTURNLEFTRIGHTLINE* 16)
(intern "*FORMWAYSERVICEJCTROAD*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSERVICEJCTROAD* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSERVICEJCTROAD* 53)
(intern "*FORMWAYSERVICESLIPROAD*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSERVICESLIPROAD* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSERVICESLIPROAD* 56)
(intern "*FORMWAYSERVICESLIPJCTROAD*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYSERVICESLIPJCTROAD* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYSERVICESLIPJCTROAD* 58)
(intern "*FORMWAYNULL*" (find-package "TBT_MSGS::ROADFORMENUM"))
(shadow '*FORMWAYNULL* (find-package "TBT_MSGS::ROADFORMENUM"))
(defconstant tbt_msgs::RoadFormEnum::*FORMWAYNULL* 255)

(defun tbt_msgs::RoadFormEnum-to-symbol (const)
  (cond
        ((= const 1) 'tbt_msgs::RoadFormEnum::*FormwayDivisedLink*)
        ((= const 2) 'tbt_msgs::RoadFormEnum::*FormwayCrossLink*)
        ((= const 3) 'tbt_msgs::RoadFormEnum::*FormwayJCT*)
        ((= const 4) 'tbt_msgs::RoadFormEnum::*FormwayRoundCircle*)
        ((= const 5) 'tbt_msgs::RoadFormEnum::*FormwayServiceRoad*)
        ((= const 6) 'tbt_msgs::RoadFormEnum::*FormwaySlipRoad*)
        ((= const 7) 'tbt_msgs::RoadFormEnum::*FormwaySideRoad*)
        ((= const 8) 'tbt_msgs::RoadFormEnum::*FormwaySlipJCT*)
        ((= const 9) 'tbt_msgs::RoadFormEnum::*FormwayExitLink*)
        ((= const 10) 'tbt_msgs::RoadFormEnum::*FormwayEntranceLink*)
        ((= const 11) 'tbt_msgs::RoadFormEnum::*FormwayTurnRightLineA*)
        ((= const 12) 'tbt_msgs::RoadFormEnum::*FormwayTurnRightLineB*)
        ((= const 13) 'tbt_msgs::RoadFormEnum::*FormwayTurnLeftLineA*)
        ((= const 14) 'tbt_msgs::RoadFormEnum::*FormwayTurnLeftLineB*)
        ((= const 15) 'tbt_msgs::RoadFormEnum::*FormwayCommonLink*)
        ((= const 16) 'tbt_msgs::RoadFormEnum::*FormwayTurnLeftRightLine*)
        ((= const 53) 'tbt_msgs::RoadFormEnum::*FormwayServiceJCTRoad*)
        ((= const 56) 'tbt_msgs::RoadFormEnum::*FormwayServiceSlipRoad*)
        ((= const 58) 'tbt_msgs::RoadFormEnum::*FormwayServiceSlipJCTRoad*)
        ((= const 255) 'tbt_msgs::RoadFormEnum::*FormwayNULL*)
        (t nil)))

(defclass tbt_msgs::RoadFormEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::RoadFormEnum
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

(setf (get tbt_msgs::RoadFormEnum :md5sum-) "20007d61d8d9173318afdf0d9bf7206f")
(setf (get tbt_msgs::RoadFormEnum :datatype-) "tbt_msgs/RoadFormEnum")
(setf (get tbt_msgs::RoadFormEnum :definition-)
      "uint8 FormwayDivisedLink = 1
uint8 FormwayCrossLink = 2
uint8 FormwayJCT = 3
uint8 FormwayRoundCircle = 4
uint8 FormwayServiceRoad = 5
uint8 FormwaySlipRoad = 6
uint8 FormwaySideRoad = 7
uint8 FormwaySlipJCT = 8
uint8 FormwayExitLink = 9
uint8 FormwayEntranceLink = 10
uint8 FormwayTurnRightLineA = 11
uint8 FormwayTurnRightLineB = 12
uint8 FormwayTurnLeftLineA = 13
uint8 FormwayTurnLeftLineB = 14
uint8 FormwayCommonLink = 15
uint8 FormwayTurnLeftRightLine = 16
uint8 FormwayServiceJCTRoad = 53
uint8 FormwayServiceSlipRoad = 56
uint8 FormwayServiceSlipJCTRoad = 58
uint8 FormwayNULL = 255
uint8 value

")



(provide :tbt_msgs/RoadFormEnum "20007d61d8d9173318afdf0d9bf7206f")


