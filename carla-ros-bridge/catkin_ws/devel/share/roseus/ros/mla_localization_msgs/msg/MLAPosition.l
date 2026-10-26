;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAPosition)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAPosition (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITION")
  (make-package "MLA_LOCALIZATION_MSGS::MLAPOSITION"))

(in-package "ROS")
;;//! \htmlinclude MLAPosition.msg.html


(intern "*MLA_POSITION_GLOBAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITION"))
(shadow '*MLA_POSITION_GLOBAL* (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITION"))
(defconstant mla_localization_msgs::MLAPosition::*MLA_POSITION_GLOBAL* 1)
(intern "*MLA_POSITION_LOCAL*" (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITION"))
(shadow '*MLA_POSITION_LOCAL* (find-package "MLA_LOCALIZATION_MSGS::MLAPOSITION"))
(defconstant mla_localization_msgs::MLAPosition::*MLA_POSITION_LOCAL* 2)

(defun mla_localization_msgs::MLAPosition-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAPosition::*MLA_POSITION_GLOBAL*)
        ((= const 2) 'mla_localization_msgs::MLAPosition::*MLA_POSITION_LOCAL*)
        (t nil)))

(defclass mla_localization_msgs::MLAPosition
  :super ros::object
  :slots (_available _position_global _position_local ))

(defmethod mla_localization_msgs::MLAPosition
  (:init
   (&key
    ((:available __available) 0)
    ((:position_global __position_global) (instance mla_localization_msgs::MLAPosGlobal :init))
    ((:position_local __position_local) (instance mla_localization_msgs::MLAPosLocal :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _position_global __position_global)
   (setq _position_local __position_local)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:position_global
   (&rest __position_global)
   (if (keywordp (car __position_global))
       (send* _position_global __position_global)
     (progn
       (if __position_global (setq _position_global (car __position_global)))
       _position_global)))
  (:position_local
   (&rest __position_local)
   (if (keywordp (car __position_local))
       (send* _position_local __position_local)
     (progn
       (if __position_local (setq _position_local (car __position_local)))
       _position_local)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAPosGlobal _position_global
    (send _position_global :serialization-length)
    ;; mla_localization_msgs/MLAPosLocal _position_local
    (send _position_local :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAPosGlobal _position_global
       (send _position_global :serialize s)
     ;; mla_localization_msgs/MLAPosLocal _position_local
       (send _position_local :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAPosGlobal _position_global
     (send _position_global :deserialize buf ptr-) (incf ptr- (send _position_global :serialization-length))
   ;; mla_localization_msgs/MLAPosLocal _position_local
     (send _position_local :deserialize buf ptr-) (incf ptr- (send _position_local :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAPosition :md5sum-) "4bebf65f0df5a26fbc7b68ff2e67facc")
(setf (get mla_localization_msgs::MLAPosition :datatype-) "mla_localization_msgs/MLAPosition")
(setf (get mla_localization_msgs::MLAPosition :definition-)
      "uint8 MLA_POSITION_GLOBAL = 1
uint8 MLA_POSITION_LOCAL = 2
uint8 available
mla_localization_msgs/MLAPosGlobal position_global
mla_localization_msgs/MLAPosLocal position_local

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

")



(provide :mla_localization_msgs/MLAPosition "4bebf65f0df5a26fbc7b68ff2e67facc")


