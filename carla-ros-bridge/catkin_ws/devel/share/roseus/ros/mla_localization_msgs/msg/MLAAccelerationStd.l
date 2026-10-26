;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAAccelerationStd)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAAccelerationStd (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATIONSTD")
  (make-package "MLA_LOCALIZATION_MSGS::MLAACCELERATIONSTD"))

(in-package "ROS")
;;//! \htmlinclude MLAAccelerationStd.msg.html


(intern "*MLA_ACC_STD_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATIONSTD"))
(shadow '*MLA_ACC_STD_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATIONSTD"))
(defconstant mla_localization_msgs::MLAAccelerationStd::*MLA_ACC_STD_GLOBAL* 1)
(intern "*MLA_ACC_STD_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATIONSTD"))
(shadow '*MLA_ACC_STD_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAACCELERATIONSTD"))
(defconstant mla_localization_msgs::MLAAccelerationStd::*MLA_ACC_STD_LOCAL* 2)

(defun mla_localization_msgs::MLAAccelerationStd-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAAccelerationStd::*MLA_ACC_STD_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAAccelerationStd::*MLA_ACC_STD_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAAccelerationStd
  :super ros::object
  :slots (_available _acc_std_global _acc_std_local ))

(defmethod mla_localization_msgs::MLAAccelerationStd
  (:init
   (&key
    ((:available __available) 0)
    ((:acc_std_global __acc_std_global) (instance mla_localization_msgs::MLAAccStdGlobal :init))
    ((:acc_std_local __acc_std_local) (instance mla_localization_msgs::MLAAccStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _acc_std_global __acc_std_global)
   (setq _acc_std_local __acc_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:acc_std_global
   (&rest __acc_std_global)
   (if (keywordp (car __acc_std_global))
       (send* _acc_std_global __acc_std_global)
     (progn
       (if __acc_std_global (setq _acc_std_global (car __acc_std_global)))
       _acc_std_global)))
  (:acc_std_local
   (&rest __acc_std_local)
   (if (keywordp (car __acc_std_local))
       (send* _acc_std_local __acc_std_local)
     (progn
       (if __acc_std_local (setq _acc_std_local (car __acc_std_local)))
       _acc_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAAccStdGlobal _acc_std_global
    (send _acc_std_global :serialization-length)
    ;; mla_localization_msgs/MLAAccStdLocal _acc_std_local
    (send _acc_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAAccStdGlobal _acc_std_global
       (send _acc_std_global :serialize s)
     ;; mla_localization_msgs/MLAAccStdLocal _acc_std_local
       (send _acc_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAAccStdGlobal _acc_std_global
     (send _acc_std_global :deserialize buf ptr-) (incf ptr- (send _acc_std_global :serialization-length))
   ;; mla_localization_msgs/MLAAccStdLocal _acc_std_local
     (send _acc_std_local :deserialize buf ptr-) (incf ptr- (send _acc_std_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAAccelerationStd :md5sum-) "e3ab181c30c6d145102decdbf88f907b")
(setf (get mla_localization_msgs::MLAAccelerationStd :datatype-) "mla_localization_msgs/MLAAccelerationStd")
(setf (get mla_localization_msgs::MLAAccelerationStd :definition-)
      "uint8 MLA_ACC_STD_GLOBAL = 1
uint8 MLA_ACC_STD_LOCAL = 2
uint8 available
mla_localization_msgs/MLAAccStdGlobal acc_std_global
mla_localization_msgs/MLAAccStdLocal acc_std_local

================================================================================
MSG: mla_localization_msgs/MLAAccStdGlobal
float64 std_ae
float64 std_an
float64 std_au

================================================================================
MSG: mla_localization_msgs/MLAAccStdLocal
float64 std_ax
float64 std_ay
float64 std_az

")



(provide :mla_localization_msgs/MLAAccelerationStd "e3ab181c30c6d145102decdbf88f907b")


