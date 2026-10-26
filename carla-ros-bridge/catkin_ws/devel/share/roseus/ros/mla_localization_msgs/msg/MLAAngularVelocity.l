;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAAngularVelocity)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAAngularVelocity (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITY")
  (make-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude MLAAngularVelocity.msg.html


(intern "*MLA_ANGVEL_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITY"))
(shadow '*MLA_ANGVEL_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAANGULARVELOCITY"))
(defconstant mla_localization_msgs::MLAAngularVelocity::*MLA_ANGVEL_LOCAL* 1)

(defun mla_localization_msgs::MLAAngularVelocity-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAAngularVelocity::*MLA_ANGVEL_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAAngularVelocity
  :super ros::object
  :slots (_available _angvelocity_local ))

(defmethod mla_localization_msgs::MLAAngularVelocity
  (:init
   (&key
    ((:available __available) 0)
    ((:angvelocity_local __angvelocity_local) (instance mla_localization_msgs::MLAAngVelLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _angvelocity_local __angvelocity_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:angvelocity_local
   (&rest __angvelocity_local)
   (if (keywordp (car __angvelocity_local))
       (send* _angvelocity_local __angvelocity_local)
     (progn
       (if __angvelocity_local (setq _angvelocity_local (car __angvelocity_local)))
       _angvelocity_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAAngVelLocal _angvelocity_local
    (send _angvelocity_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAAngVelLocal _angvelocity_local
       (send _angvelocity_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAAngVelLocal _angvelocity_local
     (send _angvelocity_local :deserialize buf ptr-) (incf ptr- (send _angvelocity_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAAngularVelocity :md5sum-) "cd220ef097e8f1e2a3db27ebde03a77c")
(setf (get mla_localization_msgs::MLAAngularVelocity :datatype-) "mla_localization_msgs/MLAAngularVelocity")
(setf (get mla_localization_msgs::MLAAngularVelocity :definition-)
      "uint8 MLA_ANGVEL_LOCAL = 1
uint8 available
mla_localization_msgs/MLAAngVelLocal angvelocity_local

================================================================================
MSG: mla_localization_msgs/MLAAngVelLocal
float64 vx
float64 vy
float64 vz

")



(provide :mla_localization_msgs/MLAAngularVelocity "cd220ef097e8f1e2a3db27ebde03a77c")


