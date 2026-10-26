;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::HDMapIntersectionStopLine)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'HDMapIntersectionStopLine (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::HDMAPINTERSECTIONSTOPLINE")
  (make-package "PERCEPTION_INTERFACE_MSGS::HDMAPINTERSECTIONSTOPLINE"))

(in-package "ROS")
;;//! \htmlinclude HDMapIntersectionStopLine.msg.html


(defclass perception_interface_msgs::HDMapIntersectionStopLine
  :super ros::object
  :slots (_distance_to_stop_line _distance_buffer ))

(defmethod perception_interface_msgs::HDMapIntersectionStopLine
  (:init
   (&key
    ((:distance_to_stop_line __distance_to_stop_line) 0.0)
    ((:distance_buffer __distance_buffer) 0.0)
    )
   (send-super :init)
   (setq _distance_to_stop_line (float __distance_to_stop_line))
   (setq _distance_buffer (float __distance_buffer))
   self)
  (:distance_to_stop_line
   (&optional __distance_to_stop_line)
   (if __distance_to_stop_line (setq _distance_to_stop_line __distance_to_stop_line)) _distance_to_stop_line)
  (:distance_buffer
   (&optional __distance_buffer)
   (if __distance_buffer (setq _distance_buffer __distance_buffer)) _distance_buffer)
  (:serialization-length
   ()
   (+
    ;; float64 _distance_to_stop_line
    8
    ;; float64 _distance_buffer
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance_to_stop_line
       (sys::poke _distance_to_stop_line (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_buffer
       (sys::poke _distance_buffer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance_to_stop_line
     (setq _distance_to_stop_line (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_buffer
     (setq _distance_buffer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_interface_msgs::HDMapIntersectionStopLine :md5sum-) "63b4138b35d12a34bf5c6ed6e21df141")
(setf (get perception_interface_msgs::HDMapIntersectionStopLine :datatype-) "perception_interface_msgs/HDMapIntersectionStopLine")
(setf (get perception_interface_msgs::HDMapIntersectionStopLine :definition-)
      "float64 distance_to_stop_line
float64 distance_buffer

")



(provide :perception_interface_msgs/HDMapIntersectionStopLine "63b4138b35d12a34bf5c6ed6e21df141")


