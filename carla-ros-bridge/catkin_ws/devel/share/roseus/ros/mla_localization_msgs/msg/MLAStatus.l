;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLAStatus)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLAStatus (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLASTATUS")
  (make-package "MLA_LOCALIZATION_MSGS::MLASTATUS"))

(in-package "ROS")
;;//! \htmlinclude MLAStatus.msg.html


(intern "*MLA_STATUS_INFO*" (find-package "MLA_LOCALIZATION_MSGS::MLASTATUS"))
(shadow '*MLA_STATUS_INFO* (find-package "MLA_LOCALIZATION_MSGS::MLASTATUS"))
(defconstant mla_localization_msgs::MLAStatus::*MLA_STATUS_INFO* 1)

(defun mla_localization_msgs::MLAStatus-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLAStatus::*MLA_STATUS_INFO*)
        (t nil)))

(defclass mla_localization_msgs::MLAStatus
  :super ros::object
  :slots (_available _status_info ))

(defmethod mla_localization_msgs::MLAStatus
  (:init
   (&key
    ((:available __available) 0)
    ((:status_info __status_info) (instance mla_localization_msgs::MLAStatusInfo :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _status_info __status_info)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:status_info
   (&rest __status_info)
   (if (keywordp (car __status_info))
       (send* _status_info __status_info)
     (progn
       (if __status_info (setq _status_info (car __status_info)))
       _status_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; mla_localization_msgs/MLAStatusInfo _status_info
    (send _status_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; mla_localization_msgs/MLAStatusInfo _status_info
       (send _status_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; mla_localization_msgs/MLAStatusInfo _status_info
     (send _status_info :deserialize buf ptr-) (incf ptr- (send _status_info :serialization-length))
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLAStatus :md5sum-) "474f248c5f262aa377048e5294ddeb3f")
(setf (get mla_localization_msgs::MLAStatus :datatype-) "mla_localization_msgs/MLAStatus")
(setf (get mla_localization_msgs::MLAStatus :definition-)
      "uint8 MLA_STATUS_INFO = 1
uint8 available
mla_localization_msgs/MLAStatusInfo status_info

================================================================================
MSG: mla_localization_msgs/MLAStatusInfo
uint8 quality
uint64 common
uint64 extended
uint8 type

")



(provide :mla_localization_msgs/MLAStatus "474f248c5f262aa377048e5294ddeb3f")


