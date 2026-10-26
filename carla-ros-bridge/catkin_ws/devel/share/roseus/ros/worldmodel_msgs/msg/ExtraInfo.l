;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::ExtraInfo)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'ExtraInfo (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::EXTRAINFO")
  (make-package "WORLDMODEL_MSGS::EXTRAINFO"))

(in-package "ROS")
;;//! \htmlinclude ExtraInfo.msg.html


(intern "*RAMP_MANEUVER*" (find-package "WORLDMODEL_MSGS::EXTRAINFO"))
(shadow '*RAMP_MANEUVER* (find-package "WORLDMODEL_MSGS::EXTRAINFO"))
(defconstant worldmodel_msgs::ExtraInfo::*RAMP_MANEUVER* 1)
(intern "*SCENE_TYPE*" (find-package "WORLDMODEL_MSGS::EXTRAINFO"))
(shadow '*SCENE_TYPE* (find-package "WORLDMODEL_MSGS::EXTRAINFO"))
(defconstant worldmodel_msgs::ExtraInfo::*SCENE_TYPE* 2)
(intern "*RESERVED_INFO*" (find-package "WORLDMODEL_MSGS::EXTRAINFO"))
(shadow '*RESERVED_INFO* (find-package "WORLDMODEL_MSGS::EXTRAINFO"))
(defconstant worldmodel_msgs::ExtraInfo::*RESERVED_INFO* 4)

(defun worldmodel_msgs::ExtraInfo-to-symbol (const)
  (cond
        ((= const 1) 'worldmodel_msgs::ExtraInfo::*RAMP_MANEUVER*)
        ((= const 2) 'worldmodel_msgs::ExtraInfo::*SCENE_TYPE*)
        ((= const 4) 'worldmodel_msgs::ExtraInfo::*RESERVED_INFO*)
        (t nil)))

(defclass worldmodel_msgs::ExtraInfo
  :super ros::object
  :slots (_available _ramp_maneuver _scene_type _reserved_info ))

(defmethod worldmodel_msgs::ExtraInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:ramp_maneuver __ramp_maneuver) (instance worldmodel_msgs::RampManeuver :init))
    ((:scene_type __scene_type) "")
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _ramp_maneuver __ramp_maneuver)
   (setq _scene_type (string __scene_type))
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:ramp_maneuver
   (&rest __ramp_maneuver)
   (if (keywordp (car __ramp_maneuver))
       (send* _ramp_maneuver __ramp_maneuver)
     (progn
       (if __ramp_maneuver (setq _ramp_maneuver (car __ramp_maneuver)))
       _ramp_maneuver)))
  (:scene_type
   (&optional __scene_type)
   (if __scene_type (setq _scene_type __scene_type)) _scene_type)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; worldmodel_msgs/RampManeuver _ramp_maneuver
    (send _ramp_maneuver :serialization-length)
    ;; string _scene_type
    4 (length _scene_type)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; worldmodel_msgs/RampManeuver _ramp_maneuver
       (send _ramp_maneuver :serialize s)
     ;; string _scene_type
       (write-long (length _scene_type) s) (princ _scene_type s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; worldmodel_msgs/RampManeuver _ramp_maneuver
     (send _ramp_maneuver :deserialize buf ptr-) (incf ptr- (send _ramp_maneuver :serialization-length))
   ;; string _scene_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _scene_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get worldmodel_msgs::ExtraInfo :md5sum-) "48e58682922bc2853877e0204ca96dfa")
(setf (get worldmodel_msgs::ExtraInfo :datatype-) "worldmodel_msgs/ExtraInfo")
(setf (get worldmodel_msgs::ExtraInfo :definition-)
      "uint8 RAMP_MANEUVER = 1
uint8 SCENE_TYPE = 2
uint8 RESERVED_INFO = 4
uint8 available
worldmodel_msgs/RampManeuver ramp_maneuver
string scene_type
string reserved_info

================================================================================
MSG: worldmodel_msgs/RampManeuver
float32 dis_to_ramp
float32 length

")



(provide :worldmodel_msgs/ExtraInfo "48e58682922bc2853877e0204ca96dfa")


