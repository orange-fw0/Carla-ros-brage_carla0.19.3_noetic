;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xCollisionWarningInfo)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xCollisionWarningInfo (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XCOLLISIONWARNINGINFO")
  (make-package "V2X_MSGS::V2XCOLLISIONWARNINGINFO"))

(in-package "ROS")
;;//! \htmlinclude V2xCollisionWarningInfo.msg.html


(intern "*V2X_COLLISION_WARNING_DATA*" (find-package "V2X_MSGS::V2XCOLLISIONWARNINGINFO"))
(shadow '*V2X_COLLISION_WARNING_DATA* (find-package "V2X_MSGS::V2XCOLLISIONWARNINGINFO"))
(defconstant v2x_msgs::V2xCollisionWarningInfo::*V2X_COLLISION_WARNING_DATA* 1)

(defun v2x_msgs::V2xCollisionWarningInfo-to-symbol (const)
  (cond
        ((= const 1) 'v2x_msgs::V2xCollisionWarningInfo::*V2X_COLLISION_WARNING_DATA*)
        (t nil)))

(defclass v2x_msgs::V2xCollisionWarningInfo
  :super ros::object
  :slots (_available _v2x_collision_warning_data ))

(defmethod v2x_msgs::V2xCollisionWarningInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:v2x_collision_warning_data __v2x_collision_warning_data) (instance v2x_msgs::V2xCollisionWarningData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _v2x_collision_warning_data __v2x_collision_warning_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:v2x_collision_warning_data
   (&rest __v2x_collision_warning_data)
   (if (keywordp (car __v2x_collision_warning_data))
       (send* _v2x_collision_warning_data __v2x_collision_warning_data)
     (progn
       (if __v2x_collision_warning_data (setq _v2x_collision_warning_data (car __v2x_collision_warning_data)))
       _v2x_collision_warning_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; v2x_msgs/V2xCollisionWarningData _v2x_collision_warning_data
    (send _v2x_collision_warning_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; v2x_msgs/V2xCollisionWarningData _v2x_collision_warning_data
       (send _v2x_collision_warning_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; v2x_msgs/V2xCollisionWarningData _v2x_collision_warning_data
     (send _v2x_collision_warning_data :deserialize buf ptr-) (incf ptr- (send _v2x_collision_warning_data :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xCollisionWarningInfo :md5sum-) "bc9c0babfcfa3077953b61f3ac92e573")
(setf (get v2x_msgs::V2xCollisionWarningInfo :datatype-) "v2x_msgs/V2xCollisionWarningInfo")
(setf (get v2x_msgs::V2xCollisionWarningInfo :definition-)
      "uint8 V2X_COLLISION_WARNING_DATA = 1
uint8 available
v2x_msgs/V2xCollisionWarningData v2x_collision_warning_data

================================================================================
MSG: v2x_msgs/V2xCollisionWarningData
int32[] id
string warning

")



(provide :v2x_msgs/V2xCollisionWarningInfo "bc9c0babfcfa3077953b61f3ac92e573")


