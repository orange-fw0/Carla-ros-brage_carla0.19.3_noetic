;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::ParkInInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'ParkInInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PARKININFO")
  (make-package "PLANNING_MSGS::PARKININFO"))

(in-package "ROS")
;;//! \htmlinclude ParkInInfo.msg.html


(defclass planning_msgs::ParkInInfo
  :super ros::object
  :slots (_parkin_direction _wlc_status _reserved ))

(defmethod planning_msgs::ParkInInfo
  (:init
   (&key
    ((:parkin_direction __parkin_direction) 0)
    ((:wlc_status __wlc_status) (instance planning_msgs::WlcStatus :init))
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _parkin_direction (round __parkin_direction))
   (setq _wlc_status __wlc_status)
   (setq _reserved (string __reserved))
   self)
  (:parkin_direction
   (&optional __parkin_direction)
   (if __parkin_direction (setq _parkin_direction __parkin_direction)) _parkin_direction)
  (:wlc_status
   (&rest __wlc_status)
   (if (keywordp (car __wlc_status))
       (send* _wlc_status __wlc_status)
     (progn
       (if __wlc_status (setq _wlc_status (car __wlc_status)))
       _wlc_status)))
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint32 _parkin_direction
    4
    ;; planning_msgs/WlcStatus _wlc_status
    (send _wlc_status :serialization-length)
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _parkin_direction
       (write-long _parkin_direction s)
     ;; planning_msgs/WlcStatus _wlc_status
       (send _wlc_status :serialize s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _parkin_direction
     (setq _parkin_direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; planning_msgs/WlcStatus _wlc_status
     (send _wlc_status :deserialize buf ptr-) (incf ptr- (send _wlc_status :serialization-length))
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::ParkInInfo :md5sum-) "db550575a6336f00e9add342260502d4")
(setf (get planning_msgs::ParkInInfo :datatype-) "planning_msgs/ParkInInfo")
(setf (get planning_msgs::ParkInInfo :definition-)
      "uint32 parkin_direction
planning_msgs/WlcStatus wlc_status
string reserved

================================================================================
MSG: planning_msgs/WlcStatus
uint32 NO_WLC = 0
uint32 APPROACHING = 1
uint32 APPROACHED = 2
uint32 value

")



(provide :planning_msgs/ParkInInfo "db550575a6336f00e9add342260502d4")


