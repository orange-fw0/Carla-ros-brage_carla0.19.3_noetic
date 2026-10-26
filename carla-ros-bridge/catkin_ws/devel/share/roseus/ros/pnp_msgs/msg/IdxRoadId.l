;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::IdxRoadId)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'IdxRoadId (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::IDXROADID")
  (make-package "PNP_MSGS::IDXROADID"))

(in-package "ROS")
;;//! \htmlinclude IdxRoadId.msg.html


(defclass pnp_msgs::IdxRoadId
  :super ros::object
  :slots (_road_id _index_at_tour ))

(defmethod pnp_msgs::IdxRoadId
  (:init
   (&key
    ((:road_id __road_id) (instance pnp_msgs::PNPRoadId :init))
    ((:index_at_tour __index_at_tour) 0)
    )
   (send-super :init)
   (setq _road_id __road_id)
   (setq _index_at_tour (round __index_at_tour))
   self)
  (:road_id
   (&rest __road_id)
   (if (keywordp (car __road_id))
       (send* _road_id __road_id)
     (progn
       (if __road_id (setq _road_id (car __road_id)))
       _road_id)))
  (:index_at_tour
   (&optional __index_at_tour)
   (if __index_at_tour (setq _index_at_tour __index_at_tour)) _index_at_tour)
  (:serialization-length
   ()
   (+
    ;; pnp_msgs/PNPRoadId _road_id
    (send _road_id :serialization-length)
    ;; uint32 _index_at_tour
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pnp_msgs/PNPRoadId _road_id
       (send _road_id :serialize s)
     ;; uint32 _index_at_tour
       (write-long _index_at_tour s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pnp_msgs/PNPRoadId _road_id
     (send _road_id :deserialize buf ptr-) (incf ptr- (send _road_id :serialization-length))
   ;; uint32 _index_at_tour
     (setq _index_at_tour (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pnp_msgs::IdxRoadId :md5sum-) "12ff52ec238991bbda25eb6597018335")
(setf (get pnp_msgs::IdxRoadId :datatype-) "pnp_msgs/IdxRoadId")
(setf (get pnp_msgs::IdxRoadId :definition-)
      "pnp_msgs/PNPRoadId road_id
uint32 index_at_tour

================================================================================
MSG: pnp_msgs/PNPRoadId
uint16 ur_id
uint32 tile_id
uint32 road_count

")



(provide :pnp_msgs/IdxRoadId "12ff52ec238991bbda25eb6597018335")


