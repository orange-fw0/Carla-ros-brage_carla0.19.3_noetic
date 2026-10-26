;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::VectorizedMap)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'VectorizedMap (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::VECTORIZEDMAP")
  (make-package "SUBMAP_MSGS::VECTORIZEDMAP"))

(in-package "ROS")
;;//! \htmlinclude VectorizedMap.msg.html


(defclass submap_msgs::VectorizedMap
  :super ros::object
  :slots (_vector_elements ))

(defmethod submap_msgs::VectorizedMap
  (:init
   (&key
    ((:vector_elements __vector_elements) ())
    )
   (send-super :init)
   (setq _vector_elements __vector_elements)
   self)
  (:vector_elements
   (&rest __vector_elements)
   (if (keywordp (car __vector_elements))
       (send* _vector_elements __vector_elements)
     (progn
       (if __vector_elements (setq _vector_elements (car __vector_elements)))
       _vector_elements)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/VectorElement[] _vector_elements
    (apply #'+ (send-all _vector_elements :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/VectorElement[] _vector_elements
     (write-long (length _vector_elements) s)
     (dolist (elem _vector_elements)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/VectorElement[] _vector_elements
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _vector_elements (let (r) (dotimes (i n) (push (instance submap_msgs::VectorElement :init) r)) r))
     (dolist (elem- _vector_elements)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::VectorizedMap :md5sum-) "cebbb1eb1cb447459666f4ba1adc3a54")
(setf (get submap_msgs::VectorizedMap :datatype-) "submap_msgs/VectorizedMap")
(setf (get submap_msgs::VectorizedMap :definition-)
      "submap_msgs/VectorElement[] vector_elements

================================================================================
MSG: submap_msgs/VectorElement
uint32 id
submap_msgs/VectorElementTypeEnum type
float32 score
float32 slide_distance
geometry_msgs/Point center
geometry_msgs/Point center_point
geometry_msgs/Point[] points
geometry_msgs/Point[] points_local

================================================================================
MSG: submap_msgs/VectorElementTypeEnum
uint8 UNKNOWN = 0
uint8 GATE = 1
uint8 ARROW = 2
uint8 STOP_LINE = 3
uint8 DASH_LINE = 4
uint8 SPEED_BUMP = 5
uint8 ZWBRA_LINE = 6
uint8 DDLD_ROAD_BOUNDARY = 7
uint8 DDLD_LANE_BOUNDARY = 8
uint8 DDLD_STOP_LINE = 9
uint8 DDLD_CROSS_WALK = 10
uint8 DDLD_ROAD_MARK = 11
uint8 DDLD_TRAFFIC_SIGN = 12
uint8 DDLD_TRAFFIC_LIGHT = 13
uint8 value
float32 score

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :submap_msgs/VectorizedMap "cebbb1eb1cb447459666f4ba1adc3a54")


