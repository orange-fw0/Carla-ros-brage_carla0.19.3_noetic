;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::LaneCenterDisappearance)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'LaneCenterDisappearance (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::LANECENTERDISAPPEARANCE")
  (make-package "LANDMARK_MSGS::LANECENTERDISAPPEARANCE"))

(in-package "ROS")
;;//! \htmlinclude LaneCenterDisappearance.msg.html


(defclass landmark_msgs::LaneCenterDisappearance
  :super ros::object
  :slots (_left_lane_boundary _right_lane_boundary ))

(defmethod landmark_msgs::LaneCenterDisappearance
  (:init
   (&key
    ((:left_lane_boundary __left_lane_boundary) (instance landmark_msgs::LaneRecordConfidence :init))
    ((:right_lane_boundary __right_lane_boundary) (instance landmark_msgs::LaneRecordConfidence :init))
    )
   (send-super :init)
   (setq _left_lane_boundary __left_lane_boundary)
   (setq _right_lane_boundary __right_lane_boundary)
   self)
  (:left_lane_boundary
   (&rest __left_lane_boundary)
   (if (keywordp (car __left_lane_boundary))
       (send* _left_lane_boundary __left_lane_boundary)
     (progn
       (if __left_lane_boundary (setq _left_lane_boundary (car __left_lane_boundary)))
       _left_lane_boundary)))
  (:right_lane_boundary
   (&rest __right_lane_boundary)
   (if (keywordp (car __right_lane_boundary))
       (send* _right_lane_boundary __right_lane_boundary)
     (progn
       (if __right_lane_boundary (setq _right_lane_boundary (car __right_lane_boundary)))
       _right_lane_boundary)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/LaneRecordConfidence _left_lane_boundary
    (send _left_lane_boundary :serialization-length)
    ;; landmark_msgs/LaneRecordConfidence _right_lane_boundary
    (send _right_lane_boundary :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/LaneRecordConfidence _left_lane_boundary
       (send _left_lane_boundary :serialize s)
     ;; landmark_msgs/LaneRecordConfidence _right_lane_boundary
       (send _right_lane_boundary :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/LaneRecordConfidence _left_lane_boundary
     (send _left_lane_boundary :deserialize buf ptr-) (incf ptr- (send _left_lane_boundary :serialization-length))
   ;; landmark_msgs/LaneRecordConfidence _right_lane_boundary
     (send _right_lane_boundary :deserialize buf ptr-) (incf ptr- (send _right_lane_boundary :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::LaneCenterDisappearance :md5sum-) "d7582ebb0b0f34cce3675e5631fed071")
(setf (get landmark_msgs::LaneCenterDisappearance :datatype-) "landmark_msgs/LaneCenterDisappearance")
(setf (get landmark_msgs::LaneCenterDisappearance :definition-)
      "landmark_msgs/LaneRecordConfidence left_lane_boundary
landmark_msgs/LaneRecordConfidence right_lane_boundary

================================================================================
MSG: landmark_msgs/LaneRecordConfidence
uint64 track_id
uint64 track_frames_count

")



(provide :landmark_msgs/LaneCenterDisappearance "d7582ebb0b0f34cce3675e5631fed071")


