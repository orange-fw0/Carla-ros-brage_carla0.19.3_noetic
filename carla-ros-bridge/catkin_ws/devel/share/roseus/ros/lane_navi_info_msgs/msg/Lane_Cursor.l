;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Lane_Cursor)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Lane_Cursor (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LANE_CURSOR")
  (make-package "LANE_NAVI_INFO_MSGS::LANE_CURSOR"))

(in-package "ROS")
;;//! \htmlinclude Lane_Cursor.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::Lane_Cursor
  :super ros::object
  :slots (_lane_id _offset ))

(defmethod lane_navi_info_msgs::Lane_Cursor
  (:init
   (&key
    ((:lane_id __lane_id) (instance landmark_msgs::TrackId :init))
    ((:offset __offset) 0.0)
    )
   (send-super :init)
   (setq _lane_id __lane_id)
   (setq _offset (float __offset))
   self)
  (:lane_id
   (&rest __lane_id)
   (if (keywordp (car __lane_id))
       (send* _lane_id __lane_id)
     (progn
       (if __lane_id (setq _lane_id (car __lane_id)))
       _lane_id)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _lane_id
    (send _lane_id :serialization-length)
    ;; float32 _offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _lane_id
       (send _lane_id :serialize s)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _lane_id
     (send _lane_id :deserialize buf ptr-) (incf ptr- (send _lane_id :serialization-length))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Lane_Cursor :md5sum-) "19156b5c5294114c337d75dfd9b9f33d")
(setf (get lane_navi_info_msgs::Lane_Cursor :datatype-) "lane_navi_info_msgs/Lane_Cursor")
(setf (get lane_navi_info_msgs::Lane_Cursor :definition-)
      "landmark_msgs/TrackId lane_id
float32 offset

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :lane_navi_info_msgs/Lane_Cursor "19156b5c5294114c337d75dfd9b9f33d")


