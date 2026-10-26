;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAOrientation)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAOrientation (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION")
  (make-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))

(in-package "ROS")
;;//! \htmlinclude MLAOrientation.msg.html


(intern "*MLA_EULER_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(shadow '*MLA_EULER_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(defconstant mla_localization_msgs::MLAOrientation::*MLA_EULER_GLOBAL* 1)
(intern "*MLA_QUATERNION_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(shadow '*MLA_QUATERNION_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(defconstant mla_localization_msgs::MLAOrientation::*MLA_QUATERNION_GLOBAL* 2)
(intern "*MLA_EULER_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(shadow '*MLA_EULER_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(defconstant mla_localization_msgs::MLAOrientation::*MLA_EULER_LOCAL* 4)
(intern "*MLA_QUATERNION_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(shadow '*MLA_QUATERNION_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAORIENTATION"))
(defconstant mla_localization_msgs::MLAOrientation::*MLA_QUATERNION_LOCAL* 8)

(defun mla_localization_msgs::MLAOrientation-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAOrientation::*MLA_EULER_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAOrientation::*MLA_QUATERNION_GLOBAL*)
        ((= const 4) 'mla_localization_msgs::MLAOrientation::*MLA_EULER_LOCAL*)
        ((= const 8) 'mla_localization_msgs::MLAOrientation::*MLA_QUATERNION_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAOrientation
  :super ros::object
  :slots (_available _euler_global _quaternion_global _euler_local _quaternion_local ))

(defmethod mla_localization_msgs::MLAOrientation
  (:init
   (&key
    ((:available __available) 0)
    ((:euler_global __euler_global) (instance mla_localization_msgs::MLAEuler :init))
    ((:quaternion_global __quaternion_global) (instance mla_localization_msgs::MLAQuaternion :init))
    ((:euler_local __euler_local) (instance mla_localization_msgs::MLAEuler :init))
    ((:quaternion_local __quaternion_local) (instance mla_localization_msgs::MLAQuaternion :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _euler_global __euler_global)
   (setq _quaternion_global __quaternion_global)
   (setq _euler_local __euler_local)
   (setq _quaternion_local __quaternion_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:euler_global
   (&rest __euler_global)
   (if (keywordp (car __euler_global))
       (send* _euler_global __euler_global)
     (progn
       (if __euler_global (setq _euler_global (car __euler_global)))
       _euler_global)))
  (:quaternion_global
   (&rest __quaternion_global)
   (if (keywordp (car __quaternion_global))
       (send* _quaternion_global __quaternion_global)
     (progn
       (if __quaternion_global (setq _quaternion_global (car __quaternion_global)))
       _quaternion_global)))
  (:euler_local
   (&rest __euler_local)
   (if (keywordp (car __euler_local))
       (send* _euler_local __euler_local)
     (progn
       (if __euler_local (setq _euler_local (car __euler_local)))
       _euler_local)))
  (:quaternion_local
   (&rest __quaternion_local)
   (if (keywordp (car __quaternion_local))
       (send* _quaternion_local __quaternion_local)
     (progn
       (if __quaternion_local (setq _quaternion_local (car __quaternion_local)))
       _quaternion_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAEuler _euler_global
    (send _euler_global :serialization-length)
    ;; mla_localization_msgs/MLAQuaternion _quaternion_global
    (send _quaternion_global :serialization-length)
    ;; mla_localization_msgs/MLAEuler _euler_local
    (send _euler_local :serialization-length)
    ;; mla_localization_msgs/MLAQuaternion _quaternion_local
    (send _quaternion_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAEuler _euler_global
       (send _euler_global :serialize s)
     ;; mla_localization_msgs/MLAQuaternion _quaternion_global
       (send _quaternion_global :serialize s)
     ;; mla_localization_msgs/MLAEuler _euler_local
       (send _euler_local :serialize s)
     ;; mla_localization_msgs/MLAQuaternion _quaternion_local
       (send _quaternion_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAEuler _euler_global
     (send _euler_global :deserialize buf ptr-) (incf ptr- (send _euler_global :serialization-length))
   ;; mla_localization_msgs/MLAQuaternion _quaternion_global
     (send _quaternion_global :deserialize buf ptr-) (incf ptr- (send _quaternion_global :serialization-length))
   ;; mla_localization_msgs/MLAEuler _euler_local
     (send _euler_local :deserialize buf ptr-) (incf ptr- (send _euler_local :serialization-length))
   ;; mla_localization_msgs/MLAQuaternion _quaternion_local
     (send _quaternion_local :deserialize buf ptr-) (incf ptr- (send _quaternion_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAOrientation :md5sum-) "6fe02083913cca925534086c2d7aaf14")
(setf (get mla_localization_msgs::MLAOrientation :datatype-) "mla_localization_msgs/MLAOrientation")
(setf (get mla_localization_msgs::MLAOrientation :definition-)
      "uint8 MLA_EULER_GLOBAL = 1
uint8 MLA_QUATERNION_GLOBAL = 2
uint8 MLA_EULER_LOCAL = 4
uint8 MLA_QUATERNION_LOCAL = 8
uint8 available
mla_localization_msgs/MLAEuler euler_global
mla_localization_msgs/MLAQuaternion quaternion_global
mla_localization_msgs/MLAEuler euler_local
mla_localization_msgs/MLAQuaternion quaternion_local

================================================================================
MSG: mla_localization_msgs/MLAEuler
float64 roll
float64 pitch
float64 yaw

================================================================================
MSG: mla_localization_msgs/MLAQuaternion
float64 w
float64 x
float64 y
float64 z

")



(provide :mla_localization_msgs/MLAOrientation "6fe02083913cca925534086c2d7aaf14")


