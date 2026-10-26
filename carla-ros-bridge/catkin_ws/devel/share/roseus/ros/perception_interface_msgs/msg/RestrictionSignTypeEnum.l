;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::RestrictionSignTypeEnum)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'RestrictionSignTypeEnum (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM")
  (make-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude RestrictionSignTypeEnum.msg.html


(intern "*RESTRINCTION_SIGN_TYPE_UNKNOWN*" (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(shadow '*RESTRINCTION_SIGN_TYPE_UNKNOWN* (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(defconstant perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_UNKNOWN* 0)
(intern "*RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT*" (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(shadow '*RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT* (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(defconstant perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT* 1)
(intern "*RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT*" (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(shadow '*RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT* (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(defconstant perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT* 2)
(intern "*RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT*" (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(shadow '*RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT* (find-package "PERCEPTION_INTERFACE_MSGS::RESTRICTIONSIGNTYPEENUM"))
(defconstant perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT* 3)

(defun perception_interface_msgs::RestrictionSignTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_UNKNOWN*)
        ((= const 1) 'perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT*)
        ((= const 2) 'perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT*)
        ((= const 3) 'perception_interface_msgs::RestrictionSignTypeEnum::*RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT*)
        (t nil)))

(defclass perception_interface_msgs::RestrictionSignTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod perception_interface_msgs::RestrictionSignTypeEnum
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

(setf (get perception_interface_msgs::RestrictionSignTypeEnum :md5sum-) "be50291993090a3423538c4109fb9e0b")
(setf (get perception_interface_msgs::RestrictionSignTypeEnum :datatype-) "perception_interface_msgs/RestrictionSignTypeEnum")
(setf (get perception_interface_msgs::RestrictionSignTypeEnum :definition-)
      "uint8 RESTRINCTION_SIGN_TYPE_UNKNOWN = 0
uint8 RESTRINCTION_SIGN_TYPE_HEIGHT_LIMIT = 1
uint8 RESTRINCTION_SIGN_TYPE_WEIGHT_LIMIT = 2
uint8 RESTRINCTION_SIGN_TYPE_WIDTH_LIMIT = 3
uint8 value

")



(provide :perception_interface_msgs/RestrictionSignTypeEnum "be50291993090a3423538c4109fb9e0b")


