;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAAngularVelocityStd)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAAngularVelocityStd (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITYSTD")
  (make-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITYSTD"))

(in-package "ROS")
;;//! \htmlinclude MLAAngularVelocityStd.msg.html


(intern "*MLA_ANGVEL_STD_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITYSTD"))
(shadow '*MLA_ANGVEL_STD_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITYSTD"))
(defconstant mla_localization_msgs::MLAAngularVelocityStd::*MLA_ANGVEL_STD_LOCAL* 1)

(defun mla_localization_msgs::MLAAngularVelocityStd-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAAngularVelocityStd::*MLA_ANGVEL_STD_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAAngularVelocityStd
  :super ros::object
  :slots (_available _angvel_std_local ))

(defmethod mla_localization_msgs::MLAAngularVelocityStd
  (:init
   (&key
    ((:available __available) 0)
    ((:angvel_std_local __angvel_std_local) (instance mla_localization_msgs::MLAAngVelStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _angvel_std_local __angvel_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:angvel_std_local
   (&rest __angvel_std_local)
   (if (keywordp (car __angvel_std_local))
       (send* _angvel_std_local __angvel_std_local)
     (progn
       (if __angvel_std_local (setq _angvel_std_local (car __angvel_std_local)))
       _angvel_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAAngVelStdLocal _angvel_std_local
    (send _angvel_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAAngVelStdLocal _angvel_std_local
       (send _angvel_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAAngVelStdLocal _angvel_std_local
     (send _angvel_std_local :deserialize buf ptr-) (incf ptr- (send _angvel_std_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAAngularVelocityStd :md5sum-) "2e98641680d5dd0a3f87bb96c75d7f15")
(setf (get mla_localization_msgs::MLAAngularVelocityStd :datatype-) "mla_localization_msgs/MLAAngularVelocityStd")
(setf (get mla_localization_msgs::MLAAngularVelocityStd :definition-)
      "uint8 MLA_ANGVEL_STD_LOCAL = 1
uint8 available
mla_localization_msgs/MLAAngVelStdLocal angvel_std_local

================================================================================
MSG: mla_localization_msgs/MLAAngVelStdLocal
float64 std_vx
float64 std_vy
float64 std_vz

")



(provide :mla_localization_msgs/MLAAngularVelocityStd "2e98641680d5dd0a3f87bb96c75d7f15")


