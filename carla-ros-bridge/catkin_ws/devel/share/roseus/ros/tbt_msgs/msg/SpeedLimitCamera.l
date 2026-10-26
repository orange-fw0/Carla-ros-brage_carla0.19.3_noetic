;; Auto-generated. Do not edit!


(when (boundp 'tbt_msgs::SpeedLimitCamera)
  (if (not (find-package "TBT_MSGS"))
    (make-package "TBT_MSGS"))
  (shadow 'SpeedLimitCamera (find-package "TBT_MSGS")))
(unless (find-package "TBT_MSGS::SPEEDLIMITCAMERA")
  (make-package "TBT_MSGS::SPEEDLIMITCAMERA"))

(in-package "ROS")
;;//! \htmlinclude SpeedLimitCamera.msg.html


(defclass tbt_msgs::SpeedLimitCamera
  :super ros::object
  :slots (_speed_limit _distance ))

(defmethod tbt_msgs::SpeedLimitCamera
  (:init
   (&key
    ((:speed_limit __speed_limit) 0)
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _speed_limit (round __speed_limit))
   (setq _distance (round __distance))
   self)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; uint8 _speed_limit
    1
    ;; uint32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _speed_limit
       (write-byte _speed_limit s)
     ;; uint32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tbt_msgs::SpeedLimitCamera :md5sum-) "323991c3d7e20cb10e43803d5123c993")
(setf (get tbt_msgs::SpeedLimitCamera :datatype-) "tbt_msgs/SpeedLimitCamera")
(setf (get tbt_msgs::SpeedLimitCamera :definition-)
      "uint8 speed_limit
uint32 distance

")



(provide :tbt_msgs/SpeedLimitCamera "323991c3d7e20cb10e43803d5123c993")


