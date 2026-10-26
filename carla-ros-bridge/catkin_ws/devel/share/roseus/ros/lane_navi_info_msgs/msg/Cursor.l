;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Cursor)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Cursor (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::CURSOR")
  (make-package "LANE_NAVI_INFO_MSGS::CURSOR"))

(in-package "ROS")
;;//! \htmlinclude Cursor.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::Cursor
  :super ros::object
  :slots (_road_id _offset ))

(defmethod lane_navi_info_msgs::Cursor
  (:init
   (&key
    ((:road_id __road_id) (instance landmark_msgs::TrackId :init))
    ((:offset __offset) 0.0)
    )
   (send-super :init)
   (setq _road_id __road_id)
   (setq _offset (float __offset))
   self)
  (:road_id
   (&rest __road_id)
   (if (keywordp (car __road_id))
       (send* _road_id __road_id)
     (progn
       (if __road_id (setq _road_id (car __road_id)))
       _road_id)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _road_id
    (send _road_id :serialization-length)
    ;; float32 _offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _road_id
       (send _road_id :serialize s)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _road_id
     (send _road_id :deserialize buf ptr-) (incf ptr- (send _road_id :serialization-length))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Cursor :md5sum-) "a86ee360c6f3799782205abd635c00de")
(setf (get lane_navi_info_msgs::Cursor :datatype-) "lane_navi_info_msgs/Cursor")
(setf (get lane_navi_info_msgs::Cursor :definition-)
      "landmark_msgs/TrackId road_id
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



(provide :lane_navi_info_msgs/Cursor "a86ee360c6f3799782205abd635c00de")


