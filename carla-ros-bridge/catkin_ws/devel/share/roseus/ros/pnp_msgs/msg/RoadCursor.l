;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::RoadCursor)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'RoadCursor (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::ROADCURSOR")
  (make-package "PNP_MSGS::ROADCURSOR"))

(in-package "ROS")
;;//! \htmlinclude RoadCursor.msg.html


(defclass pnp_msgs::RoadCursor
  :super ros::object
  :slots (_index_road_id _offset ))

(defmethod pnp_msgs::RoadCursor
  (:init
   (&key
    ((:index_road_id __index_road_id) (instance pnp_msgs::IdxRoadId :init))
    ((:offset __offset) 0.0)
    )
   (send-super :init)
   (setq _index_road_id __index_road_id)
   (setq _offset (float __offset))
   self)
  (:index_road_id
   (&rest __index_road_id)
   (if (keywordp (car __index_road_id))
       (send* _index_road_id __index_road_id)
     (progn
       (if __index_road_id (setq _index_road_id (car __index_road_id)))
       _index_road_id)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; pnp_msgs/IdxRoadId _index_road_id
    (send _index_road_id :serialization-length)
    ;; float32 _offset
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pnp_msgs/IdxRoadId _index_road_id
       (send _index_road_id :serialize s)
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pnp_msgs/IdxRoadId _index_road_id
     (send _index_road_id :deserialize buf ptr-) (incf ptr- (send _index_road_id :serialization-length))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pnp_msgs::RoadCursor :md5sum-) "9c09786282442e47082f1f0889cfb709")
(setf (get pnp_msgs::RoadCursor :datatype-) "pnp_msgs/RoadCursor")
(setf (get pnp_msgs::RoadCursor :definition-)
      "pnp_msgs/IdxRoadId index_road_id
float32 offset

================================================================================
MSG: pnp_msgs/IdxRoadId
pnp_msgs/PNPRoadId road_id
uint32 index_at_tour

================================================================================
MSG: pnp_msgs/PNPRoadId
uint16 ur_id
uint32 tile_id
uint32 road_count

")



(provide :pnp_msgs/RoadCursor "9c09786282442e47082f1f0889cfb709")


