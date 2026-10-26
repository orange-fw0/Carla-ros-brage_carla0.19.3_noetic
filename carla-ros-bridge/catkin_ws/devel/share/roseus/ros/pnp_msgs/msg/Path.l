;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::Path)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'Path (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PATH")
  (make-package "PNP_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass pnp_msgs::Path
  :super ros::object
  :slots (_road_list _length _start_road_cursor _end_road_cursor ))

(defmethod pnp_msgs::Path
  (:init
   (&key
    ((:road_list __road_list) ())
    ((:length __length) 0.0)
    ((:start_road_cursor __start_road_cursor) (instance pnp_msgs::RoadCursor :init))
    ((:end_road_cursor __end_road_cursor) (instance pnp_msgs::RoadCursor :init))
    )
   (send-super :init)
   (setq _road_list __road_list)
   (setq _length (float __length))
   (setq _start_road_cursor __start_road_cursor)
   (setq _end_road_cursor __end_road_cursor)
   self)
  (:road_list
   (&rest __road_list)
   (if (keywordp (car __road_list))
       (send* _road_list __road_list)
     (progn
       (if __road_list (setq _road_list (car __road_list)))
       _road_list)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:start_road_cursor
   (&rest __start_road_cursor)
   (if (keywordp (car __start_road_cursor))
       (send* _start_road_cursor __start_road_cursor)
     (progn
       (if __start_road_cursor (setq _start_road_cursor (car __start_road_cursor)))
       _start_road_cursor)))
  (:end_road_cursor
   (&rest __end_road_cursor)
   (if (keywordp (car __end_road_cursor))
       (send* _end_road_cursor __end_road_cursor)
     (progn
       (if __end_road_cursor (setq _end_road_cursor (car __end_road_cursor)))
       _end_road_cursor)))
  (:serialization-length
   ()
   (+
    ;; pnp_msgs/IdxRoadId[] _road_list
    (apply #'+ (send-all _road_list :serialization-length)) 4
    ;; float32 _length
    4
    ;; pnp_msgs/RoadCursor _start_road_cursor
    (send _start_road_cursor :serialization-length)
    ;; pnp_msgs/RoadCursor _end_road_cursor
    (send _end_road_cursor :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pnp_msgs/IdxRoadId[] _road_list
     (write-long (length _road_list) s)
     (dolist (elem _road_list)
       (send elem :serialize s)
       )
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; pnp_msgs/RoadCursor _start_road_cursor
       (send _start_road_cursor :serialize s)
     ;; pnp_msgs/RoadCursor _end_road_cursor
       (send _end_road_cursor :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pnp_msgs/IdxRoadId[] _road_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _road_list (let (r) (dotimes (i n) (push (instance pnp_msgs::IdxRoadId :init) r)) r))
     (dolist (elem- _road_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; pnp_msgs/RoadCursor _start_road_cursor
     (send _start_road_cursor :deserialize buf ptr-) (incf ptr- (send _start_road_cursor :serialization-length))
   ;; pnp_msgs/RoadCursor _end_road_cursor
     (send _end_road_cursor :deserialize buf ptr-) (incf ptr- (send _end_road_cursor :serialization-length))
   ;;
   self)
  )

(setf (get pnp_msgs::Path :md5sum-) "c01d05a883772b4391b9f6c23cd5e00c")
(setf (get pnp_msgs::Path :datatype-) "pnp_msgs/Path")
(setf (get pnp_msgs::Path :definition-)
      "pnp_msgs/IdxRoadId[] road_list
float32 length
pnp_msgs/RoadCursor start_road_cursor
pnp_msgs/RoadCursor end_road_cursor

================================================================================
MSG: pnp_msgs/IdxRoadId
pnp_msgs/PNPRoadId road_id
uint32 index_at_tour

================================================================================
MSG: pnp_msgs/PNPRoadId
uint16 ur_id
uint32 tile_id
uint32 road_count

================================================================================
MSG: pnp_msgs/RoadCursor
pnp_msgs/IdxRoadId index_road_id
float32 offset

")



(provide :pnp_msgs/Path "c01d05a883772b4391b9f6c23cd5e00c")


