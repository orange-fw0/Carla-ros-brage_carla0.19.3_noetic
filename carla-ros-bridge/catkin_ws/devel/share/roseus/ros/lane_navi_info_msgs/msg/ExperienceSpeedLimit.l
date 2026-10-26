;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::ExperienceSpeedLimit)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'ExperienceSpeedLimit (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::EXPERIENCESPEEDLIMIT")
  (make-package "LANE_NAVI_INFO_MSGS::EXPERIENCESPEEDLIMIT"))

(in-package "ROS")
;;//! \htmlinclude ExperienceSpeedLimit.msg.html


(defclass lane_navi_info_msgs::ExperienceSpeedLimit
  :super ros::object
  :slots (_value _start_offset _end_offset ))

(defmethod lane_navi_info_msgs::ExperienceSpeedLimit
  (:init
   (&key
    ((:value __value) 0.0)
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::ExperienceSpeedLimit :md5sum-) "a25db3d350bed68cde4e8e7d8a7687ea")
(setf (get lane_navi_info_msgs::ExperienceSpeedLimit :datatype-) "lane_navi_info_msgs/ExperienceSpeedLimit")
(setf (get lane_navi_info_msgs::ExperienceSpeedLimit :definition-)
      "float32 value
float32 start_offset
float32 end_offset

")



(provide :lane_navi_info_msgs/ExperienceSpeedLimit "a25db3d350bed68cde4e8e7d8a7687ea")


