;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDLongSolidLine)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDLongSolidLine (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDLONGSOLIDLINE")
  (make-package "LANE_NAVI_INFO_MSGS::SDLONGSOLIDLINE"))

(in-package "ROS")
;;//! \htmlinclude SDLongSolidLine.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::SDLongSolidLine
  :super ros::object
  :slots (_effect_road_ids _valid_lanes ))

(defmethod lane_navi_info_msgs::SDLongSolidLine
  (:init
   (&key
    ((:effect_road_ids __effect_road_ids) ())
    ((:valid_lanes __valid_lanes) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _effect_road_ids __effect_road_ids)
   (setq _valid_lanes __valid_lanes)
   self)
  (:effect_road_ids
   (&rest __effect_road_ids)
   (if (keywordp (car __effect_road_ids))
       (send* _effect_road_ids __effect_road_ids)
     (progn
       (if __effect_road_ids (setq _effect_road_ids (car __effect_road_ids)))
       _effect_road_ids)))
  (:valid_lanes
   (&optional __valid_lanes)
   (if __valid_lanes (setq _valid_lanes __valid_lanes)) _valid_lanes)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId[] _effect_road_ids
    (apply #'+ (send-all _effect_road_ids :serialization-length)) 4
    ;; uint32[] _valid_lanes
    (* 4    (length _valid_lanes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId[] _effect_road_ids
     (write-long (length _effect_road_ids) s)
     (dolist (elem _effect_road_ids)
       (send elem :serialize s)
       )
     ;; uint32[] _valid_lanes
     (write-long (length _valid_lanes) s)
     (dotimes (i (length _valid_lanes))
       (write-long (elt _valid_lanes i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId[] _effect_road_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effect_road_ids (let (r) (dotimes (i n) (push (instance landmark_msgs::TrackId :init) r)) r))
     (dolist (elem- _effect_road_ids)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _valid_lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valid_lanes (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _valid_lanes i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDLongSolidLine :md5sum-) "00d386e361e1daca07ad28c613b509db")
(setf (get lane_navi_info_msgs::SDLongSolidLine :datatype-) "lane_navi_info_msgs/SDLongSolidLine")
(setf (get lane_navi_info_msgs::SDLongSolidLine :definition-)
      "landmark_msgs/TrackId[] effect_road_ids
uint32[] valid_lanes

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :lane_navi_info_msgs/SDLongSolidLine "00d386e361e1daca07ad28c613b509db")


