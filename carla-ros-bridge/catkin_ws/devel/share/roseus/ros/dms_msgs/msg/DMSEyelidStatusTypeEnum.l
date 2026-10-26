;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEyelidStatusTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEyelidStatusTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEYELIDSTATUSTYPEENUM")
  (make-package "DMS_MSGS::DMSEYELIDSTATUSTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude DMSEyelidStatusTypeEnum.msg.html


(intern "*DMS_EYELID_STATE_OPEN*" (find-package "DMS_MSGS::DMSEYELIDSTATUSTYPEENUM"))
(shadow '*DMS_EYELID_STATE_OPEN* (find-package "DMS_MSGS::DMSEYELIDSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSEyelidStatusTypeEnum::*DMS_EYELID_STATE_OPEN* 0)
(intern "*DMS_EYELID_STATE_CLOSED*" (find-package "DMS_MSGS::DMSEYELIDSTATUSTYPEENUM"))
(shadow '*DMS_EYELID_STATE_CLOSED* (find-package "DMS_MSGS::DMSEYELIDSTATUSTYPEENUM"))
(defconstant dms_msgs::DMSEyelidStatusTypeEnum::*DMS_EYELID_STATE_CLOSED* 1)

(defun dms_msgs::DMSEyelidStatusTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEyelidStatusTypeEnum::*DMS_EYELID_STATE_OPEN*)
        ((= const 1) 'dms_msgs::DMSEyelidStatusTypeEnum::*DMS_EYELID_STATE_CLOSED*)
        (t nil)))

(defclass dms_msgs::DMSEyelidStatusTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::DMSEyelidStatusTypeEnum
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

(setf (get dms_msgs::DMSEyelidStatusTypeEnum :md5sum-) "266faf450bce9abe13ab45b19fcd7783")
(setf (get dms_msgs::DMSEyelidStatusTypeEnum :datatype-) "dms_msgs/DMSEyelidStatusTypeEnum")
(setf (get dms_msgs::DMSEyelidStatusTypeEnum :definition-)
      "uint8 DMS_EYELID_STATE_OPEN = 0
uint8 DMS_EYELID_STATE_CLOSED = 1
uint8 value

")



(provide :dms_msgs/DMSEyelidStatusTypeEnum "266faf450bce9abe13ab45b19fcd7783")


