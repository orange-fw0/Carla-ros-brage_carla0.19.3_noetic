;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::ExperienceTrajectory)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'ExperienceTrajectory (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::EXPERIENCETRAJECTORY")
  (make-package "LANE_NAVI_INFO_MSGS::EXPERIENCETRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude ExperienceTrajectory.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::ExperienceTrajectory
  :super ros::object
  :slots (_polyline _related_lane_id _start_lane _end_lane ))

(defmethod lane_navi_info_msgs::ExperienceTrajectory
  (:init
   (&key
    ((:polyline __polyline) (instance lane_navi_info_msgs::Polyline :init))
    ((:related_lane_id __related_lane_id) ())
    ((:start_lane __start_lane) (instance lane_navi_info_msgs::Lane_Cursor :init))
    ((:end_lane __end_lane) (instance lane_navi_info_msgs::Lane_Cursor :init))
    )
   (send-super :init)
   (setq _polyline __polyline)
   (setq _related_lane_id __related_lane_id)
   (setq _start_lane __start_lane)
   (setq _end_lane __end_lane)
   self)
  (:polyline
   (&rest __polyline)
   (if (keywordp (car __polyline))
       (send* _polyline __polyline)
     (progn
       (if __polyline (setq _polyline (car __polyline)))
       _polyline)))
  (:related_lane_id
   (&rest __related_lane_id)
   (if (keywordp (car __related_lane_id))
       (send* _related_lane_id __related_lane_id)
     (progn
       (if __related_lane_id (setq _related_lane_id (car __related_lane_id)))
       _related_lane_id)))
  (:start_lane
   (&rest __start_lane)
   (if (keywordp (car __start_lane))
       (send* _start_lane __start_lane)
     (progn
       (if __start_lane (setq _start_lane (car __start_lane)))
       _start_lane)))
  (:end_lane
   (&rest __end_lane)
   (if (keywordp (car __end_lane))
       (send* _end_lane __end_lane)
     (progn
       (if __end_lane (setq _end_lane (car __end_lane)))
       _end_lane)))
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/Polyline _polyline
    (send _polyline :serialization-length)
    ;; landmark_msgs/TrackId[] _related_lane_id
    (apply #'+ (send-all _related_lane_id :serialization-length)) 4
    ;; lane_navi_info_msgs/Lane_Cursor _start_lane
    (send _start_lane :serialization-length)
    ;; lane_navi_info_msgs/Lane_Cursor _end_lane
    (send _end_lane :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/Polyline _polyline
       (send _polyline :serialize s)
     ;; landmark_msgs/TrackId[] _related_lane_id
     (write-long (length _related_lane_id) s)
     (dolist (elem _related_lane_id)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Lane_Cursor _start_lane
       (send _start_lane :serialize s)
     ;; lane_navi_info_msgs/Lane_Cursor _end_lane
       (send _end_lane :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/Polyline _polyline
     (send _polyline :deserialize buf ptr-) (incf ptr- (send _polyline :serialization-length))
   ;; landmark_msgs/TrackId[] _related_lane_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _related_lane_id (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _related_lane_id)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Lane_Cursor _start_lane
     (send _start_lane :deserialize buf ptr-) (incf ptr- (send _start_lane :serialization-length))
   ;; lane_navi_info_msgs/Lane_Cursor _end_lane
     (send _end_lane :deserialize buf ptr-) (incf ptr- (send _end_lane :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::ExperienceTrajectory :md5sum-) "45b1b4350457a5db2a1e546375062dbd")
(setf (get lane_navi_info_msgs::ExperienceTrajectory :datatype-) "lane_navi_info_msgs/ExperienceTrajectory")
(setf (get lane_navi_info_msgs::ExperienceTrajectory :definition-)
      "lane_navi_info_msgs/Polyline polyline
landmark_msgs/TrackId[] related_lane_id
lane_navi_info_msgs/Lane_Cursor start_lane
lane_navi_info_msgs/Lane_Cursor end_lane

================================================================================
MSG: lane_navi_info_msgs/Polyline
lane_navi_info_msgs/Point[] points

================================================================================
MSG: lane_navi_info_msgs/Point
float64 x
float64 y
float64 z

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/Lane_Cursor
landmark_msgs/TrackId lane_id
float32 offset

")



(provide :lane_navi_info_msgs/ExperienceTrajectory "45b1b4350457a5db2a1e546375062dbd")


