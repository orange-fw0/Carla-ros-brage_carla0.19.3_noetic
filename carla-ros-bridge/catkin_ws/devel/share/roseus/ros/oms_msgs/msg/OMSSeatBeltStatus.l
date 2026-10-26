;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSSeatBeltStatus)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSSeatBeltStatus (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSSEATBELTSTATUS")
  (make-package "OMS_MSGS::OMSSEATBELTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude OMSSeatBeltStatus.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(defconstant oms_msgs::OMSSeatBeltStatus::*UNAVAILABLE* 0)
(intern "*BUCKLE_UP*" (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(shadow '*BUCKLE_UP* (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(defconstant oms_msgs::OMSSeatBeltStatus::*BUCKLE_UP* 1)
(intern "*UNBUCKLE*" (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(shadow '*UNBUCKLE* (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(defconstant oms_msgs::OMSSeatBeltStatus::*UNBUCKLE* 2)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSSEATBELTSTATUS"))
(defconstant oms_msgs::OMSSeatBeltStatus::*UNCERTAIN* 3)

(defun oms_msgs::OMSSeatBeltStatus-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSSeatBeltStatus::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSSeatBeltStatus::*BUCKLE_UP*)
        ((= const 2) 'oms_msgs::OMSSeatBeltStatus::*UNBUCKLE*)
        ((= const 3) 'oms_msgs::OMSSeatBeltStatus::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSSeatBeltStatus
  :super ros::object
  :slots (_value _score ))

(defmethod oms_msgs::OMSSeatBeltStatus
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

(setf (get oms_msgs::OMSSeatBeltStatus :md5sum-) "4e581bd539b4f10b905bace158bdebf0")
(setf (get oms_msgs::OMSSeatBeltStatus :datatype-) "oms_msgs/OMSSeatBeltStatus")
(setf (get oms_msgs::OMSSeatBeltStatus :definition-)
      "uint8 UNAVAILABLE = 0
uint8 BUCKLE_UP = 1
uint8 UNBUCKLE = 2
uint8 UNCERTAIN = 3
uint8 value
float32 score

")



(provide :oms_msgs/OMSSeatBeltStatus "4e581bd539b4f10b905bace158bdebf0")


