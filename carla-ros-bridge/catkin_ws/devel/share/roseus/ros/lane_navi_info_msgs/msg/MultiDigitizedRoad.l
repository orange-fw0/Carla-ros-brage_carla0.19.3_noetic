;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::MultiDigitizedRoad)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'MultiDigitizedRoad (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::MULTIDIGITIZEDROAD")
  (make-package "LANE_NAVI_INFO_MSGS::MULTIDIGITIZEDROAD"))

(in-package "ROS")
;;//! \htmlinclude MultiDigitizedRoad.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::MultiDigitizedRoad
  :super ros::object
  :slots (_muliti_digitized_road_id _start_offset _end_offset ))

(defmethod lane_navi_info_msgs::MultiDigitizedRoad
  (:init
   (&key
    ((:muliti_digitized_road_id __muliti_digitized_road_id) (instance landmark_msgs::TrackId :init))
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    )
   (send-super :init)
   (setq _muliti_digitized_road_id __muliti_digitized_road_id)
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   self)
  (:muliti_digitized_road_id
   (&rest __muliti_digitized_road_id)
   (if (keywordp (car __muliti_digitized_road_id))
       (send* _muliti_digitized_road_id __muliti_digitized_road_id)
     (progn
       (if __muliti_digitized_road_id (setq _muliti_digitized_road_id (car __muliti_digitized_road_id)))
       _muliti_digitized_road_id)))
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _muliti_digitized_road_id
    (send _muliti_digitized_road_id :serialization-length)
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _muliti_digitized_road_id
       (send _muliti_digitized_road_id :serialize s)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _muliti_digitized_road_id
     (send _muliti_digitized_road_id :deserialize buf ptr-) (incf ptr- (send _muliti_digitized_road_id :serialization-length))
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::MultiDigitizedRoad :md5sum-) "ffc7f2f27b656a09fee5dc1a4a5f4b5c")
(setf (get lane_navi_info_msgs::MultiDigitizedRoad :datatype-) "lane_navi_info_msgs/MultiDigitizedRoad")
(setf (get lane_navi_info_msgs::MultiDigitizedRoad :definition-)
      "landmark_msgs/TrackId muliti_digitized_road_id
float32 start_offset
float32 end_offset

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :lane_navi_info_msgs/MultiDigitizedRoad "ffc7f2f27b656a09fee5dc1a4a5f4b5c")


