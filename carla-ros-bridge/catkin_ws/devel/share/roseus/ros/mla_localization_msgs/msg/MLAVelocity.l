;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAVelocity)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAVelocity (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITY")
  (make-package "MLA_LOCALIZATION_MSGS::MLAVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude MLAVelocity.msg.html


(intern "*MLA_VEL_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITY"))
(shadow '*MLA_VEL_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITY"))
(defconstant mla_localization_msgs::MLAVelocity::*MLA_VEL_GLOBAL* 1)
(intern "*MLA_VEL_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITY"))
(shadow '*MLA_VEL_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITY"))
(defconstant mla_localization_msgs::MLAVelocity::*MLA_VEL_LOCAL* 2)

(defun mla_localization_msgs::MLAVelocity-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAVelocity::*MLA_VEL_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAVelocity::*MLA_VEL_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAVelocity
  :super ros::object
  :slots (_available _velocity_global _velocity_local ))

(defmethod mla_localization_msgs::MLAVelocity
  (:init
   (&key
    ((:available __available) 0)
    ((:velocity_global __velocity_global) (instance mla_localization_msgs::MLAVelGlobal :init))
    ((:velocity_local __velocity_local) (instance mla_localization_msgs::MLAVelLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _velocity_global __velocity_global)
   (setq _velocity_local __velocity_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:velocity_global
   (&rest __velocity_global)
   (if (keywordp (car __velocity_global))
       (send* _velocity_global __velocity_global)
     (progn
       (if __velocity_global (setq _velocity_global (car __velocity_global)))
       _velocity_global)))
  (:velocity_local
   (&rest __velocity_local)
   (if (keywordp (car __velocity_local))
       (send* _velocity_local __velocity_local)
     (progn
       (if __velocity_local (setq _velocity_local (car __velocity_local)))
       _velocity_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAVelGlobal _velocity_global
    (send _velocity_global :serialization-length)
    ;; mla_localization_msgs/MLAVelLocal _velocity_local
    (send _velocity_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAVelGlobal _velocity_global
       (send _velocity_global :serialize s)
     ;; mla_localization_msgs/MLAVelLocal _velocity_local
       (send _velocity_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAVelGlobal _velocity_global
     (send _velocity_global :deserialize buf ptr-) (incf ptr- (send _velocity_global :serialization-length))
   ;; mla_localization_msgs/MLAVelLocal _velocity_local
     (send _velocity_local :deserialize buf ptr-) (incf ptr- (send _velocity_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAVelocity :md5sum-) "df544e5bf1682c8f12619e829ce8b5c9")
(setf (get mla_localization_msgs::MLAVelocity :datatype-) "mla_localization_msgs/MLAVelocity")
(setf (get mla_localization_msgs::MLAVelocity :definition-)
      "uint8 MLA_VEL_GLOBAL = 1
uint8 MLA_VEL_LOCAL = 2
uint8 available
mla_localization_msgs/MLAVelGlobal velocity_global
mla_localization_msgs/MLAVelLocal velocity_local

================================================================================
MSG: mla_localization_msgs/MLAVelGlobal
float64 ve
float64 vn
float64 vu

================================================================================
MSG: mla_localization_msgs/MLAVelLocal
float64 vx
float64 vy
float64 vz

")



(provide :mla_localization_msgs/MLAVelocity "df544e5bf1682c8f12619e829ce8b5c9")


