;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::PathRange)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'PathRange (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::PATHRANGE")
  (make-package "LANE_NAVI_INFO_MSGS::PATHRANGE"))

(in-package "ROS")
;;//! \htmlinclude PathRange.msg.html


(defclass lane_navi_info_msgs::PathRange
  :super ros::object
  :slots (_start_offset _end_offset ))

(defmethod lane_navi_info_msgs::PathRange
  (:init
   (&key
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    )
   (send-super :init)
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   self)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:serialization-length
   ()
   (+
    ;; float64 _start_offset
    8
    ;; float64 _end_offset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _start_offset
     (setq _start_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_offset
     (setq _end_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::PathRange :md5sum-) "27858798df264f980d14594d69b02842")
(setf (get lane_navi_info_msgs::PathRange :datatype-) "lane_navi_info_msgs/PathRange")
(setf (get lane_navi_info_msgs::PathRange :definition-)
      "float64 start_offset
float64 end_offset

")



(provide :lane_navi_info_msgs/PathRange "27858798df264f980d14594d69b02842")


