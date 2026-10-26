;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAAcceleration)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAAcceleration (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATION")
  (make-package "MLA_LOCALIZATION_MSGS::MLAACCELERATION"))

(in-package "ROS")
;;//! \htmlinclude MLAAcceleration.msg.html


(intern "*MLA_ACC_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATION"))
(shadow '*MLA_ACC_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATION"))
(defconstant mla_localization_msgs::MLAAcceleration::*MLA_ACC_GLOBAL* 1)
(intern "*MLA_ACC_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATION"))
(shadow '*MLA_ACC_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATION"))
(defconstant mla_localization_msgs::MLAAcceleration::*MLA_ACC_LOCAL* 2)

(defun mla_localization_msgs::MLAAcceleration-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAAcceleration::*MLA_ACC_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAAcceleration::*MLA_ACC_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAAcceleration
  :super ros::object
  :slots (_available _acceleration_global _acceleration_local ))

(defmethod mla_localization_msgs::MLAAcceleration
  (:init
   (&key
    ((:available __available) 0)
    ((:acceleration_global __acceleration_global) (instance mla_localization_msgs::MLAAccGlobal :init))
    ((:acceleration_local __acceleration_local) (instance mla_localization_msgs::MLAAccLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _acceleration_global __acceleration_global)
   (setq _acceleration_local __acceleration_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:acceleration_global
   (&rest __acceleration_global)
   (if (keywordp (car __acceleration_global))
       (send* _acceleration_global __acceleration_global)
     (progn
       (if __acceleration_global (setq _acceleration_global (car __acceleration_global)))
       _acceleration_global)))
  (:acceleration_local
   (&rest __acceleration_local)
   (if (keywordp (car __acceleration_local))
       (send* _acceleration_local __acceleration_local)
     (progn
       (if __acceleration_local (setq _acceleration_local (car __acceleration_local)))
       _acceleration_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAAccGlobal _acceleration_global
    (send _acceleration_global :serialization-length)
    ;; mla_localization_msgs/MLAAccLocal _acceleration_local
    (send _acceleration_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAAccGlobal _acceleration_global
       (send _acceleration_global :serialize s)
     ;; mla_localization_msgs/MLAAccLocal _acceleration_local
       (send _acceleration_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAAccGlobal _acceleration_global
     (send _acceleration_global :deserialize buf ptr-) (incf ptr- (send _acceleration_global :serialization-length))
   ;; mla_localization_msgs/MLAAccLocal _acceleration_local
     (send _acceleration_local :deserialize buf ptr-) (incf ptr- (send _acceleration_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAAcceleration :md5sum-) "5c2d7300b72ce1f52af26dbb1242c4cf")
(setf (get mla_localization_msgs::MLAAcceleration :datatype-) "mla_localization_msgs/MLAAcceleration")
(setf (get mla_localization_msgs::MLAAcceleration :definition-)
      "uint8 MLA_ACC_GLOBAL = 1
uint8 MLA_ACC_LOCAL = 2
uint8 available
mla_localization_msgs/MLAAccGlobal acceleration_global
mla_localization_msgs/MLAAccLocal acceleration_local

================================================================================
MSG: mla_localization_msgs/MLAAccGlobal
float64 ae
float64 an
float64 au

================================================================================
MSG: mla_localization_msgs/MLAAccLocal
float64 ax
float64 ay
float64 az

")



(provide :mla_localization_msgs/MLAAcceleration "5c2d7300b72ce1f52af26dbb1242c4cf")


