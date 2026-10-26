;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterIntersectWithRoadBoundaryConfidence (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERINTERSECTWITHROADBOUNDARYCONFIDENCE")
  (make-package "LANDMARK_MSGS::LANECENTERINTERSECTWITHROADBOUNDARYCONFIDENCE"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterIntersectWithRoadBoundaryConfidence.msg.html


(defclass landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence
  :super ros::object
  :slots (_reliable _lane_center_intersect_with_road_boundaries ))

(defmethod landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence
  (:init
   (&key
    ((:reliable __reliable) nil)
    ((:lane_center_intersect_with_road_boundaries __lane_center_intersect_with_road_boundaries) ())
    )
   (send-super :init)
   (setq _reliable __reliable)
   (setq _lane_center_intersect_with_road_boundaries __lane_center_intersect_with_road_boundaries)
   self)
  (:reliable
   (&optional (__reliable :null))
   (if (not (eq __reliable :null)) (setq _reliable __reliable)) _reliable)
  (:lane_center_intersect_with_road_boundaries
   (&rest __lane_center_intersect_with_road_boundaries)
   (if (keywordp (car __lane_center_intersect_with_road_boundaries))
       (send* _lane_center_intersect_with_road_boundaries __lane_center_intersect_with_road_boundaries)
     (progn
       (if __lane_center_intersect_with_road_boundaries (setq _lane_center_intersect_with_road_boundaries (car __lane_center_intersect_with_road_boundaries)))
       _lane_center_intersect_with_road_boundaries)))
  (:serialization-length
   ()
   (+
    ;; bool _reliable
    1
    ;; landmark_msgs/LaneCenterIntersectWithRoadBoundary[] _lane_center_intersect_with_road_boundaries
    (apply #'+ (send-all _lane_center_intersect_with_road_boundaries :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _reliable
       (if _reliable (write-byte -1 s) (write-byte 0 s))
     ;; landmark_msgs/LaneCenterIntersectWithRoadBoundary[] _lane_center_intersect_with_road_boundaries
     (write-long (length _lane_center_intersect_with_road_boundaries) s)
     (dolist (elem _lane_center_intersect_with_road_boundaries)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _reliable
     (setq _reliable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; landmark_msgs/LaneCenterIntersectWithRoadBoundary[] _lane_center_intersect_with_road_boundaries
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_center_intersect_with_road_boundaries (let (r) (dotimes (i n) (push (instance landmark_msgs::LaneCenterIntersectWithRoadBoundary :init) r)) r))
     (dolist (elem- _lane_center_intersect_with_road_boundaries)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence :md5sum-) "87761ae09e23c0a81c895a690f91fbac")
(setf (get landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence :datatype-) "landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence")
(setf (get landmark_msgs::LaneCenterIntersectWithRoadBoundaryConfidence :definition-)
      "bool reliable
landmark_msgs/LaneCenterIntersectWithRoadBoundary[] lane_center_intersect_with_road_boundaries

================================================================================
MSG: landmark_msgs/LaneCenterIntersectWithRoadBoundary
landmark_msgs/LaneRecordConfidence lane_center
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



(provide :landmark_msgs/LaneCenterIntersectWithRoadBoundaryConfidence "87761ae09e23c0a81c895a690f91fbac")


