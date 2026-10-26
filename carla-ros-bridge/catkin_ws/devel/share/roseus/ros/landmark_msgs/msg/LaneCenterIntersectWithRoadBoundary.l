;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterIntersectWithRoadBoundary)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterIntersectWithRoadBoundary (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERINTERSECTWITHROADBOUNDARY")
  (make-package "LANDMARK_MSGS::LANECENTERINTERSECTWITHROADBOUNDARY"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterIntersectWithRoadBoundary.msg.html


(defclass landmark_msgs::LaneCenterIntersectWithRoadBoundary
  :super ros::object
  :slots (_lane_center _road_boundary _intersect_type _min_distance ))

(defmethod landmark_msgs::LaneCenterIntersectWithRoadBoundary
  (:init
   (&key
    ((:lane_center __lane_center) (instance landmark_msgs::LaneRecordConfidence :init))
    ((:road_boundary __road_boundary) (instance landmark_msgs::LaneRecordConfidence :init))
    ((:intersect_type __intersect_type) (instance landmark_msgs::IntersectTypeEnum :init))
    ((:min_distance __min_distance) 0.0)
    )
   (send-super :init)
   (setq _lane_center __lane_center)
   (setq _road_boundary __road_boundary)
   (setq _intersect_type __intersect_type)
   (setq _min_distance (float __min_distance))
   self)
  (:lane_center
   (&rest __lane_center)
   (if (keywordp (car __lane_center))
       (send* _lane_center __lane_center)
     (progn
       (if __lane_center (setq _lane_center (car __lane_center)))
       _lane_center)))
  (:road_boundary
   (&rest __road_boundary)
   (if (keywordp (car __road_boundary))
       (send* _road_boundary __road_boundary)
     (progn
       (if __road_boundary (setq _road_boundary (car __road_boundary)))
       _road_boundary)))
  (:intersect_type
   (&rest __intersect_type)
   (if (keywordp (car __intersect_type))
       (send* _intersect_type __intersect_type)
     (progn
       (if __intersect_type (setq _intersect_type (car __intersect_type)))
       _intersect_type)))
  (:min_distance
   (&optional __min_distance)
   (if __min_distance (setq _min_distance __min_distance)) _min_distance)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/LaneRecordConfidence _lane_center
    (send _lane_center :serialization-length)
    ;; landmark_msgs/LaneRecordConfidence _road_boundary
    (send _road_boundary :serialization-length)
    ;; landmark_msgs/IntersectTypeEnum _intersect_type
    (send _intersect_type :serialization-length)
    ;; float64 _min_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/LaneRecordConfidence _lane_center
       (send _lane_center :serialize s)
     ;; landmark_msgs/LaneRecordConfidence _road_boundary
       (send _road_boundary :serialize s)
     ;; landmark_msgs/IntersectTypeEnum _intersect_type
       (send _intersect_type :serialize s)
     ;; float64 _min_distance
       (sys::poke _min_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/LaneRecordConfidence _lane_center
     (send _lane_center :deserialize buf ptr-) (incf ptr- (send _lane_center :serialization-length))
   ;; landmark_msgs/LaneRecordConfidence _road_boundary
     (send _road_boundary :deserialize buf ptr-) (incf ptr- (send _road_boundary :serialization-length))
   ;; landmark_msgs/IntersectTypeEnum _intersect_type
     (send _intersect_type :deserialize buf ptr-) (incf ptr- (send _intersect_type :serialization-length))
   ;; float64 _min_distance
     (setq _min_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterIntersectWithRoadBoundary :md5sum-) "7f0c6f3881f2d1ffb289ddb32dd95fb0")
(setf (get landmark_msgs::LaneCenterIntersectWithRoadBoundary :datatype-) "landmark_msgs/LaneCenterIntersectWithRoadBoundary")
(setf (get landmark_msgs::LaneCenterIntersectWithRoadBoundary :definition-)
      "landmark_msgs/LaneRecordConfidence lane_center
landmark_msgs/LaneRecordConfidence road_boundary
landmark_msgs/IntersectTypeEnum intersect_type
float64 min_distance

================================================================================
MSG: landmark_msgs/LaneRecordConfidence
uint64 track_id
uint64 track_frames_count

================================================================================
MSG: landmark_msgs/IntersectTypeEnum
uint8 UNKNOWN = 0
uint8 CROSS = 1
uint8 CLOSE = 2
uint8 value

")



(provide :landmark_msgs/LaneCenterIntersectWithRoadBoundary "7f0c6f3881f2d1ffb289ddb32dd95fb0")


