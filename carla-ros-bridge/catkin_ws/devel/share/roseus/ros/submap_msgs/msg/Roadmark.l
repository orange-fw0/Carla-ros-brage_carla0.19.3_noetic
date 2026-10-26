;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::Roadmark)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'Roadmark (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::ROADMARK")
  (make-package "SUBMAP_MSGS::ROADMARK"))

(in-package "ROS")
;;//! \htmlinclude Roadmark.msg.html


(defclass submap_msgs::Roadmark
  :super ros::object
  :slots (_layers ))

(defmethod submap_msgs::Roadmark
  (:init
   (&key
    ((:layers __layers) ())
    )
   (send-super :init)
   (setq _layers __layers)
   self)
  (:layers
   (&rest __layers)
   (if (keywordp (car __layers))
       (send* _layers __layers)
     (progn
       (if __layers (setq _layers (car __layers)))
       _layers)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/RoadmarkLayer[] _layers
    (apply #'+ (send-all _layers :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/RoadmarkLayer[] _layers
     (write-long (length _layers) s)
     (dolist (elem _layers)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/RoadmarkLayer[] _layers
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _layers (let (r) (dotimes (i n) (push (instance submap_msgs::RoadmarkLayer :init) r)) r))
     (dolist (elem- _layers)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::Roadmark :md5sum-) "6837a2a6568394a000b770cc5a0a61b3")
(setf (get submap_msgs::Roadmark :datatype-) "submap_msgs/Roadmark")
(setf (get submap_msgs::Roadmark :definition-)
      "submap_msgs/RoadmarkLayer[] layers

================================================================================
MSG: submap_msgs/RoadmarkLayer
submap_msgs/RoadmarkType type
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local

================================================================================
MSG: submap_msgs/RoadmarkType
uint8 NORMAL = 0
uint8 ARROW = 1
uint8 SPEED_BUMP = 2
uint8 CROSS_WALK = 3
uint8 STOP_LINE = 4
uint8 value

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/Roadmark "6837a2a6568394a000b770cc5a0a61b3")


