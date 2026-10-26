;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'LinkedLaneWithSplitMergeInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::LINKEDLANEWITHSPLITMERGEINFO")
  (make-package "LANE_NAVI_INFO_MSGS::LINKEDLANEWITHSPLITMERGEINFO"))

(in-package "ROS")
;;//! \htmlinclude LinkedLaneWithSplitMergeInfo.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo
  :super ros::object
  :slots (_lane_id _split_merge_info ))

(defmethod lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo
  (:init
   (&key
    ((:lane_id __lane_id) (instance landmark_msgs::TrackId :init))
    ((:split_merge_info __split_merge_info) (instance lane_navi_info_msgs::SplitMergeInfo :init))
    )
   (send-super :init)
   (setq _lane_id __lane_id)
   (setq _split_merge_info __split_merge_info)
   self)
  (:lane_id
   (&rest __lane_id)
   (if (keywordp (car __lane_id))
       (send* _lane_id __lane_id)
     (progn
       (if __lane_id (setq _lane_id (car __lane_id)))
       _lane_id)))
  (:split_merge_info
   (&rest __split_merge_info)
   (if (keywordp (car __split_merge_info))
       (send* _split_merge_info __split_merge_info)
     (progn
       (if __split_merge_info (setq _split_merge_info (car __split_merge_info)))
       _split_merge_info)))
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _lane_id
    (send _lane_id :serialization-length)
    ;; lane_navi_info_msgs/SplitMergeInfo _split_merge_info
    (send _split_merge_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _lane_id
       (send _lane_id :serialize s)
     ;; lane_navi_info_msgs/SplitMergeInfo _split_merge_info
       (send _split_merge_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _lane_id
     (send _lane_id :deserialize buf ptr-) (incf ptr- (send _lane_id :serialization-length))
   ;; lane_navi_info_msgs/SplitMergeInfo _split_merge_info
     (send _split_merge_info :deserialize buf ptr-) (incf ptr- (send _split_merge_info :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo :md5sum-) "3462ad2276fbd8b14c6c839076350ba4")
(setf (get lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo :datatype-) "lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo")
(setf (get lane_navi_info_msgs::LinkedLaneWithSplitMergeInfo :definition-)
      "landmark_msgs/TrackId lane_id
lane_navi_info_msgs/SplitMergeInfo split_merge_info

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

================================================================================
MSG: lane_navi_info_msgs/SplitMergeInfo
uint8 NONE = 0
uint8 SPLIT = 1
uint8 MERGE = 2
uint8 CONTINUE = 3
uint8 value

")



(provide :lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo "3462ad2276fbd8b14c6c839076350ba4")


