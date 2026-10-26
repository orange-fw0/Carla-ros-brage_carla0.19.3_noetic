;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::Refline)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'Refline (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::REFLINE")
  (make-package "MOMENTA_MSGS::REFLINE"))

(in-package "ROS")
;;//! \htmlinclude Refline.msg.html


(defclass momenta_msgs::Refline
  :super ros::object
  :slots (_segments _points ))

(defmethod momenta_msgs::Refline
  (:init
   (&key
    ((:segments __segments) ())
    ((:points __points) ())
    )
   (send-super :init)
   (setq _segments __segments)
   (setq _points __points)
   self)
  (:segments
   (&rest __segments)
   (if (keywordp (car __segments))
       (send* _segments __segments)
     (progn
       (if __segments (setq _segments (car __segments)))
       _segments)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; momenta_msgs/Segment[] _segments
    (apply #'+ (send-all _segments :serialization-length)) 4
    ;; momenta_msgs/RefLinePoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; momenta_msgs/Segment[] _segments
     (write-long (length _segments) s)
     (dolist (elem _segments)
       (send elem :serialize s)
       )
     ;; momenta_msgs/RefLinePoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; momenta_msgs/Segment[] _segments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segments (let (r) (dotimes (i n) (push (instance momenta_msgs::Segment :init) r)) r))
     (dolist (elem- _segments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; momenta_msgs/RefLinePoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance momenta_msgs::RefLinePoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get momenta_msgs::Refline :md5sum-) "1628fa29afb536fdfe69a9d590e417ed")
(setf (get momenta_msgs::Refline :datatype-) "momenta_msgs/Refline")
(setf (get momenta_msgs::Refline :definition-)
      "momenta_msgs/Segment[] segments
momenta_msgs/RefLinePoint[] points

================================================================================
MSG: momenta_msgs/Segment
uint16 begin_index
uint16 end_index
uint8 connection_type
uint8 direction
uint8 lane_type
int64 lane_original_id
bool is_in_intersection
bool is_on_route

================================================================================
MSG: momenta_msgs/RefLinePoint
float64 x
float64 y
float64 z
float64 curvature
float64 yaw
float64 left_road_border_distance
float64 right_road_border_distance
float64 left_lane_border_distance
float64 right_lane_border_distance
float64 left_obstacle_distance
float64 right_obstacle_distance
float64 lane_width
float64 speed_limit
string track_id

")



(provide :momenta_msgs/Refline "1628fa29afb536fdfe69a9d590e417ed")


