;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xPerceptionInfo)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xPerceptionInfo (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XPERCEPTIONINFO")
  (make-package "V2X_MSGS::V2XPERCEPTIONINFO"))

(in-package "ROS")
;;//! \htmlinclude V2xPerceptionInfo.msg.html


(intern "*V2X_PERCEPTION_OBJECT*" (find-package "V2X_MSGS::V2XPERCEPTIONINFO"))
(shadow '*V2X_PERCEPTION_OBJECT* (find-package "V2X_MSGS::V2XPERCEPTIONINFO"))
(defconstant v2x_msgs::V2xPerceptionInfo::*V2X_PERCEPTION_OBJECT* 1)

(defun v2x_msgs::V2xPerceptionInfo-to-symbol (const)
  (cond
        ((= const 1) 'v2x_msgs::V2xPerceptionInfo::*V2X_PERCEPTION_OBJECT*)
        (t nil)))

(defclass v2x_msgs::V2xPerceptionInfo
  :super ros::object
  :slots (_available _v2x_perception_object ))

(defmethod v2x_msgs::V2xPerceptionInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:v2x_perception_object __v2x_perception_object) ())
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _v2x_perception_object __v2x_perception_object)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:v2x_perception_object
   (&rest __v2x_perception_object)
   (if (keywordp (car __v2x_perception_object))
       (send* _v2x_perception_object __v2x_perception_object)
     (progn
       (if __v2x_perception_object (setq _v2x_perception_object (car __v2x_perception_object)))
       _v2x_perception_object)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; v2x_msgs/V2xPerceptionObject[] _v2x_perception_object
    (apply #'+ (send-all _v2x_perception_object :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; v2x_msgs/V2xPerceptionObject[] _v2x_perception_object
     (write-long (length _v2x_perception_object) s)
     (dolist (elem _v2x_perception_object)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; v2x_msgs/V2xPerceptionObject[] _v2x_perception_object
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v2x_perception_object (let (r) (dotimes (i n) (push (instance v2x_msgs::V2xPerceptionObject :init) r)) r))
     (dolist (elem- _v2x_perception_object)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xPerceptionInfo :md5sum-) "3a147861573f52ac4a82123b87cb1ba5")
(setf (get v2x_msgs::V2xPerceptionInfo :datatype-) "v2x_msgs/V2xPerceptionInfo")
(setf (get v2x_msgs::V2xPerceptionInfo :definition-)
      "uint8 V2X_PERCEPTION_OBJECT = 1
uint8 available
v2x_msgs/V2xPerceptionObject[] v2x_perception_object

================================================================================
MSG: v2x_msgs/V2xPerceptionObject
v2x_msgs/V2xPerceptionObjectType type
float64 longitude
float64 latitude
float64 elevation
float64 speed
float64 heading
float64 width
float64 length
float64 height

================================================================================
MSG: v2x_msgs/V2xPerceptionObjectType
uint32 UNKNOWN = 0
uint32 PEDESTRIAN = 1
uint32 NON_MOTOR = 2
uint32 MOTOR = 3
uint32 OTHER = 4
uint32 value

")



(provide :v2x_msgs/V2xPerceptionInfo "3a147861573f52ac4a82123b87cb1ba5")


