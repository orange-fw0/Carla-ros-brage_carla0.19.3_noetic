;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPRoadId)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPRoadId (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPROADID")
  (make-package "PNP_MSGS::PNPROADID"))

(in-package "ROS")
;;//! \htmlinclude PNPRoadId.msg.html


(defclass pnp_msgs::PNPRoadId
  :super ros::object
  :slots (_ur_id _tile_id _road_count ))

(defmethod pnp_msgs::PNPRoadId
  (:init
   (&key
    ((:ur_id __ur_id) 0)
    ((:tile_id __tile_id) 0)
    ((:road_count __road_count) 0)
    )
   (send-super :init)
   (setq _ur_id (round __ur_id))
   (setq _tile_id (round __tile_id))
   (setq _road_count (round __road_count))
   self)
  (:ur_id
   (&optional __ur_id)
   (if __ur_id (setq _ur_id __ur_id)) _ur_id)
  (:tile_id
   (&optional __tile_id)
   (if __tile_id (setq _tile_id __tile_id)) _tile_id)
  (:road_count
   (&optional __road_count)
   (if __road_count (setq _road_count __road_count)) _road_count)
  (:serialization-length
   ()
   (+
    ;; uint16 _ur_id
    2
    ;; uint32 _tile_id
    4
    ;; uint32 _road_count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _ur_id
       (write-word _ur_id s)
     ;; uint32 _tile_id
       (write-long _tile_id s)
     ;; uint32 _road_count
       (write-long _road_count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _ur_id
     (setq _ur_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _tile_id
     (setq _tile_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _road_count
     (setq _road_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pnp_msgs::PNPRoadId :md5sum-) "6681541bf2891e198304585bc835f2da")
(setf (get pnp_msgs::PNPRoadId :datatype-) "pnp_msgs/PNPRoadId")
(setf (get pnp_msgs::PNPRoadId :definition-)
      "uint16 ur_id
uint32 tile_id
uint32 road_count

")



(provide :pnp_msgs/PNPRoadId "6681541bf2891e198304585bc835f2da")


