;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::TimeDisDiff)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'TimeDisDiff (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::TIMEDISDIFF")
  (make-package "SUBMAP_MSGS::TIMEDISDIFF"))

(in-package "ROS")
;;//! \htmlinclude TimeDisDiff.msg.html


(defclass submap_msgs::TimeDisDiff
  :super ros::object
  :slots (_dis_idff _time_diff _last_pose_timestamp ))

(defmethod submap_msgs::TimeDisDiff
  (:init
   (&key
    ((:dis_idff __dis_idff) 0.0)
    ((:time_diff __time_diff) 0.0)
    ((:last_pose_timestamp __last_pose_timestamp) 0.0)
    )
   (send-super :init)
   (setq _dis_idff (float __dis_idff))
   (setq _time_diff (float __time_diff))
   (setq _last_pose_timestamp (float __last_pose_timestamp))
   self)
  (:dis_idff
   (&optional __dis_idff)
   (if __dis_idff (setq _dis_idff __dis_idff)) _dis_idff)
  (:time_diff
   (&optional __time_diff)
   (if __time_diff (setq _time_diff __time_diff)) _time_diff)
  (:last_pose_timestamp
   (&optional __last_pose_timestamp)
   (if __last_pose_timestamp (setq _last_pose_timestamp __last_pose_timestamp)) _last_pose_timestamp)
  (:serialization-length
   ()
   (+
    ;; float64 _dis_idff
    8
    ;; float64 _time_diff
    8
    ;; float64 _last_pose_timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _dis_idff
       (sys::poke _dis_idff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_diff
       (sys::poke _time_diff (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _last_pose_timestamp
       (sys::poke _last_pose_timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _dis_idff
     (setq _dis_idff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time_diff
     (setq _time_diff (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _last_pose_timestamp
     (setq _last_pose_timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get submap_msgs::TimeDisDiff :md5sum-) "11dbd45c27d3191660eff904bf844836")
(setf (get submap_msgs::TimeDisDiff :datatype-) "submap_msgs/TimeDisDiff")
(setf (get submap_msgs::TimeDisDiff :definition-)
      "float64 dis_idff
float64 time_diff
float64 last_pose_timestamp

")



(provide :submap_msgs/TimeDisDiff "11dbd45c27d3191660eff904bf844836")


