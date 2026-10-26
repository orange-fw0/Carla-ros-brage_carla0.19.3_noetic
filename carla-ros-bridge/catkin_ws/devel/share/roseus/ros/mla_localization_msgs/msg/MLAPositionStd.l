;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAPositionStd)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAPositionStd (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITIONSTD")
  (make-package "MLA_LOCALIZATION_MSGS::MLAPOSITIONSTD"))

(in-package "ROS")
;;//! \htmlinclude MLAPositionStd.msg.html


(intern "*MLA_POS_STD_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITIONSTD"))
(shadow '*MLA_POS_STD_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITIONSTD"))
(defconstant mla_localization_msgs::MLAPositionStd::*MLA_POS_STD_GLOBAL* 1)
(intern "*MLA_POS_STD_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITIONSTD"))
(shadow '*MLA_POS_STD_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITIONSTD"))
(defconstant mla_localization_msgs::MLAPositionStd::*MLA_POS_STD_LOCAL* 2)

(defun mla_localization_msgs::MLAPositionStd-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAPositionStd::*MLA_POS_STD_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAPositionStd::*MLA_POS_STD_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAPositionStd
  :super ros::object
  :slots (_available _pos_std_global _pos_std_local ))

(defmethod mla_localization_msgs::MLAPositionStd
  (:init
   (&key
    ((:available __available) 0)
    ((:pos_std_global __pos_std_global) (instance mla_localization_msgs::MLAPosStdGlobal :init))
    ((:pos_std_local __pos_std_local) (instance mla_localization_msgs::MLAPosStdLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _pos_std_global __pos_std_global)
   (setq _pos_std_local __pos_std_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:pos_std_global
   (&rest __pos_std_global)
   (if (keywordp (car __pos_std_global))
       (send* _pos_std_global __pos_std_global)
     (progn
       (if __pos_std_global (setq _pos_std_global (car __pos_std_global)))
       _pos_std_global)))
  (:pos_std_local
   (&rest __pos_std_local)
   (if (keywordp (car __pos_std_local))
       (send* _pos_std_local __pos_std_local)
     (progn
       (if __pos_std_local (setq _pos_std_local (car __pos_std_local)))
       _pos_std_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAPosStdGlobal _pos_std_global
    (send _pos_std_global :serialization-length)
    ;; mla_localization_msgs/MLAPosStdLocal _pos_std_local
    (send _pos_std_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAPosStdGlobal _pos_std_global
       (send _pos_std_global :serialize s)
     ;; mla_localization_msgs/MLAPosStdLocal _pos_std_local
       (send _pos_std_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAPosStdGlobal _pos_std_global
     (send _pos_std_global :deserialize buf ptr-) (incf ptr- (send _pos_std_global :serialization-length))
   ;; mla_localization_msgs/MLAPosStdLocal _pos_std_local
     (send _pos_std_local :deserialize buf ptr-) (incf ptr- (send _pos_std_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAPositionStd :md5sum-) "5c5277428311af2518ace96c5fcbb93b")
(setf (get mla_localization_msgs::MLAPositionStd :datatype-) "mla_localization_msgs/MLAPositionStd")
(setf (get mla_localization_msgs::MLAPositionStd :definition-)
      "uint8 MLA_POS_STD_GLOBAL = 1
uint8 MLA_POS_STD_LOCAL = 2
uint8 available
mla_localization_msgs/MLAPosStdGlobal pos_std_global
mla_localization_msgs/MLAPosStdLocal pos_std_local

================================================================================
MSG: mla_localization_msgs/MLAPosStdGlobal
float64 std_pe
float64 std_pn
float64 std_pu

================================================================================
MSG: mla_localization_msgs/MLAPosStdLocal
float64 std_px
float64 std_py
float64 std_pz

")



(provide :mla_localization_msgs/MLAPositionStd "5c5277428311af2518ace96c5fcbb93b")


