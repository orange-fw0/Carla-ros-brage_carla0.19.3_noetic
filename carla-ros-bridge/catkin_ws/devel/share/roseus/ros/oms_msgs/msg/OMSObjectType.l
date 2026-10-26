;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSObjectType)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSObjectType (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSOBJECTTYPE")
  (make-package "OMS_MSGS::OMSOBJECTTYPE"))

(in-package "ROS")
;;//! \htmlinclude OMSObjectType.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*UNAVAILABLE* 0)
(intern "*COMPUTER*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*COMPUTER* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*COMPUTER* 1)
(intern "*PAD*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*PAD* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*PAD* 2)
(intern "*WALLET*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*WALLET* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*WALLET* 3)
(intern "*BACKPACK*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*BACKPACK* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*BACKPACK* 4)
(intern "*HANDBAG*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*HANDBAG* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*HANDBAG* 5)
(intern "*PHONE*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*PHONE* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*PHONE* 6)
(intern "*CHILD_SEAT_HARD*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*CHILD_SEAT_HARD* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*CHILD_SEAT_HARD* 7)
(intern "*CHILD_SEAT_SOFT*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*CHILD_SEAT_SOFT* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*CHILD_SEAT_SOFT* 8)
(intern "*CHILD_SEAT_BASKET*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*CHILD_SEAT_BASKET* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*CHILD_SEAT_BASKET* 9)
(intern "*CHILD_SEAT_UNUSUAL*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*CHILD_SEAT_UNUSUAL* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*CHILD_SEAT_UNUSUAL* 10)
(intern "*CAT*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*CAT* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*CAT* 11)
(intern "*DOG*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*DOG* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*DOG* 12)
(intern "*RESERVED1*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*RESERVED1* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*RESERVED1* 13)
(intern "*RESERVED2*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*RESERVED2* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*RESERVED2* 14)
(intern "*RESERVED3*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*RESERVED3* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*RESERVED3* 15)
(intern "*RESERVED4*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*RESERVED4* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*RESERVED4* 16)
(intern "*RESERVED5*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*RESERVED5* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*RESERVED5* 17)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSOBJECTTYPE"))
(defconstant oms_msgs::OMSObjectType::*UNCERTAIN* 18)

(defun oms_msgs::OMSObjectType-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSObjectType::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSObjectType::*COMPUTER*)
        ((= const 2) 'oms_msgs::OMSObjectType::*PAD*)
        ((= const 3) 'oms_msgs::OMSObjectType::*WALLET*)
        ((= const 4) 'oms_msgs::OMSObjectType::*BACKPACK*)
        ((= const 5) 'oms_msgs::OMSObjectType::*HANDBAG*)
        ((= const 6) 'oms_msgs::OMSObjectType::*PHONE*)
        ((= const 7) 'oms_msgs::OMSObjectType::*CHILD_SEAT_HARD*)
        ((= const 8) 'oms_msgs::OMSObjectType::*CHILD_SEAT_SOFT*)
        ((= const 9) 'oms_msgs::OMSObjectType::*CHILD_SEAT_BASKET*)
        ((= const 10) 'oms_msgs::OMSObjectType::*CHILD_SEAT_UNUSUAL*)
        ((= const 11) 'oms_msgs::OMSObjectType::*CAT*)
        ((= const 12) 'oms_msgs::OMSObjectType::*DOG*)
        ((= const 13) 'oms_msgs::OMSObjectType::*RESERVED1*)
        ((= const 14) 'oms_msgs::OMSObjectType::*RESERVED2*)
        ((= const 15) 'oms_msgs::OMSObjectType::*RESERVED3*)
        ((= const 16) 'oms_msgs::OMSObjectType::*RESERVED4*)
        ((= const 17) 'oms_msgs::OMSObjectType::*RESERVED5*)
        ((= const 18) 'oms_msgs::OMSObjectType::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSObjectType
  :super ros::object
  :slots (_value _score ))

(defmethod oms_msgs::OMSObjectType
  (:init
   (&key
    ((:value __value) 0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _score (float __score))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get oms_msgs::OMSObjectType :md5sum-) "a643d2bc103096035a5c6a2eae13a0be")
(setf (get oms_msgs::OMSObjectType :datatype-) "oms_msgs/OMSObjectType")
(setf (get oms_msgs::OMSObjectType :definition-)
      "uint8 UNAVAILABLE = 0
uint8 COMPUTER = 1
uint8 PAD = 2
uint8 WALLET = 3
uint8 BACKPACK = 4
uint8 HANDBAG = 5
uint8 PHONE = 6
uint8 CHILD_SEAT_HARD = 7
uint8 CHILD_SEAT_SOFT = 8
uint8 CHILD_SEAT_BASKET = 9
uint8 CHILD_SEAT_UNUSUAL = 10
uint8 CAT = 11
uint8 DOG = 12
uint8 RESERVED1 = 13
uint8 RESERVED2 = 14
uint8 RESERVED3 = 15
uint8 RESERVED4 = 16
uint8 RESERVED5 = 17
uint8 UNCERTAIN = 18
uint8 value
float32 score

")



(provide :oms_msgs/OMSObjectType "a643d2bc103096035a5c6a2eae13a0be")


