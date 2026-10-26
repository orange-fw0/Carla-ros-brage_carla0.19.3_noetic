;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::TrafficJamStatusEnum)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'TrafficJamStatusEnum (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM")
  (make-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude TrafficJamStatusEnum.msg.html


(intern "*UNKWON*" (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(shadow '*UNKWON* (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(defconstant tbt_msgs::TrafficJamStatusEnum::*UNKWON* 0)
(intern "*TRAFSTSFAST*" (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(shadow '*TRAFSTSFAST* (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(defconstant tbt_msgs::TrafficJamStatusEnum::*TRAFSTSFAST* 1)
(intern "*TRAFSTSSLOW*" (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(shadow '*TRAFSTSSLOW* (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(defconstant tbt_msgs::TrafficJamStatusEnum::*TRAFSTSSLOW* 2)
(intern "*TRAFSTSJAMED*" (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(shadow '*TRAFSTSJAMED* (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(defconstant tbt_msgs::TrafficJamStatusEnum::*TRAFSTSJAMED* 3)
(intern "*TRAFSTSJAMEDBAD*" (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(shadow '*TRAFSTSJAMEDBAD* (find-package "TBT_MSGS::TRAFFICJAMSTATUSENUM"))
(defconstant tbt_msgs::TrafficJamStatusEnum::*TRAFSTSJAMEDBAD* 4)

(defun tbt_msgs::TrafficJamStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'tbt_msgs::TrafficJamStatusEnum::*Unkwon*)
        ((= const 1) 'tbt_msgs::TrafficJamStatusEnum::*TrafStsFast*)
        ((= const 2) 'tbt_msgs::TrafficJamStatusEnum::*TrafStsSlow*)
        ((= const 3) 'tbt_msgs::TrafficJamStatusEnum::*TrafStsJamed*)
        ((= const 4) 'tbt_msgs::TrafficJamStatusEnum::*TrafStsJamedBad*)
        (t nil)))

(defclass tbt_msgs::TrafficJamStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod tbt_msgs::TrafficJamStatusEnum
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

(setf (get tbt_msgs::TrafficJamStatusEnum :md5sum-) "e75152fab0aede52221784c6c9cfbf4d")
(setf (get tbt_msgs::TrafficJamStatusEnum :datatype-) "tbt_msgs/TrafficJamStatusEnum")
(setf (get tbt_msgs::TrafficJamStatusEnum :definition-)
      "uint8 Unkwon = 0
uint8 TrafStsFast = 1
uint8 TrafStsSlow = 2
uint8 TrafStsJamed = 3
uint8 TrafStsJamedBad = 4
uint8 value

")



(provide :tbt_msgs/TrafficJamStatusEnum "e75152fab0aede52221784c6c9cfbf4d")


