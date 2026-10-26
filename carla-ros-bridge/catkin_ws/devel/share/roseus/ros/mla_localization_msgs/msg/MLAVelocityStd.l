;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAVelocityStd)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAVelocityStd (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITYSTD")
  (make-package "MLA_LOCALIZATION_MSGS::MLAVELOCITYSTD"))

(in-package "ROS")
;;//! \htmlinclude MLAVelocityStd.msg.html


(intern "*MLA_VEL_STD_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITYSTD"))
(shadow '*MLA_VEL_STD_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITYSTD"))
(defconstant mla_localization_msgs::MLAVelocityStd::*MLA_VEL_STD_GLOBAL* 1)
(intern "*MLA_VEL_STD_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITYSTD"))
(shadow '*MLA_VEL_STD_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAVELOCITYSTD"))
(defconstant mla_localization_msgs::MLAVelocityStd::*MLA_VEL_STD_LOCAL* 2)

(defun mla_localization_msgs::MLAVelocityStd-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAVelocityStd::*MLA_VEL_STD_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAVelocityStd::*MLA_VEL_STD_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAVelocityStd
  :super ros::object
  :slots (_available _vel_std_global _vel_std_local ))

(defmethod mla_localization_msgs::MLAVelocityStd
  (:init
   (&key
    ((:available __available) 0)
    ((:vel_std_global __vel_std_global) (instance mla_localization_msgs::MLAVelStdGlobal :init))
    ((:vel_std_local __vel_std_local) (instance mla_localization_msgs::MLAVelStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _vel_std_global __vel_std_global)
   (setq _vel_std_local __vel_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:vel_std_global
   (&rest __vel_std_global)
   (if (keywordp (car __vel_std_global))
       (send* _vel_std_global __vel_std_global)
     (progn
       (if __vel_std_global (setq _vel_std_global (car __vel_std_global)))
       _vel_std_global)))
  (:vel_std_local
   (&rest __vel_std_local)
   (if (keywordp (car __vel_std_local))
       (send* _vel_std_local __vel_std_local)
     (progn
       (if __vel_std_local (setq _vel_std_local (car __vel_std_local)))
       _vel_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAVelStdGlobal _vel_std_global
    (send _vel_std_global :serialization-length)
    ;; mla_localization_msgs/MLAVelStdLocal _vel_std_local
    (send _vel_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAVelStdGlobal _vel_std_global
       (send _vel_std_global :serialize s)
     ;; mla_localization_msgs/MLAVelStdLocal _vel_std_local
       (send _vel_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAVelStdGlobal _vel_std_global
     (send _vel_std_global :deserialize buf ptr-) (incf ptr- (send _vel_std_global :serialization-length))
   ;; mla_localization_msgs/MLAVelStdLocal _vel_std_local
     (send _vel_std_local :deserialize buf ptr-) (incf ptr- (send _vel_std_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAVelocityStd :md5sum-) "bde3e776ceff15a8071fc481666b3e5c")
(setf (get mla_localization_msgs::MLAVelocityStd :datatype-) "mla_localization_msgs/MLAVelocityStd")
(setf (get mla_localization_msgs::MLAVelocityStd :definition-)
      "uint8 MLA_VEL_STD_GLOBAL = 1
uint8 MLA_VEL_STD_LOCAL = 2
uint8 available
mla_localization_msgs/MLAVelStdGlobal vel_std_global
mla_localization_msgs/MLAVelStdLocal vel_std_local

================================================================================
MSG: mla_localization_msgs/MLAVelStdGlobal
float64 std_ve
float64 std_vn
float64 std_vu

================================================================================
MSG: mla_localization_msgs/MLAVelStdLocal
float64 std_vx
float64 std_vy
float64 std_vz

")



(provide :mla_localization_msgs/MLAVelocityStd "bde3e776ceff15a8071fc481666b3e5c")


