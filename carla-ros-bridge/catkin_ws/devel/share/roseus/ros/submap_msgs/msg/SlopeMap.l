;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::SlopeMap)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'SlopeMap (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::SLOPEMAP")
  (make-package "SUBMAP_MSGS::SLOPEMAP"))

(in-package "ROS")
;;//! \htmlinclude SlopeMap.msg.html


(defclass submap_msgs::SlopeMap
  :super ros::object
  :slots (_slopes ))

(defmethod submap_msgs::SlopeMap
  (:init
   (&key
    ((:slopes __slopes) ())
    )
   (send-super :init)
   (setq _slopes __slopes)
   self)
  (:slopes
   (&rest __slopes)
   (if (keywordp (car __slopes))
       (send* _slopes __slopes)
     (progn
       (if __slopes (setq _slopes (car __slopes)))
       _slopes)))
  (:serialization-length
   ()
   (+
    ;; submap_msgs/Slope[] _slopes
    (apply #'+ (send-all _slopes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; submap_msgs/Slope[] _slopes
     (write-long (length _slopes) s)
     (dolist (elem _slopes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; submap_msgs/Slope[] _slopes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slopes (let (r) (dotimes (i n) (push (instance submap_msgs::Slope :init) r)) r))
     (dolist (elem- _slopes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get submap_msgs::SlopeMap :md5sum-) "2eb0d47b299ccf18f0632c481301ba98")
(setf (get submap_msgs::SlopeMap :datatype-) "submap_msgs/SlopeMap")
(setf (get submap_msgs::SlopeMap :definition-)
      "submap_msgs/Slope[] slopes

================================================================================
MSG: submap_msgs/Slope
submap_msgs/Position enter
submap_msgs/Position exit
submap_msgs/Position detected_slope_pose
bool is_up
bool finished
float32 score
float32 slide_distance

================================================================================
MSG: submap_msgs/Position
geometry_msgs/Quaternion orientation
geometry_msgs/Vector3 translation
float64 timestamp

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :submap_msgs/SlopeMap "2eb0d47b299ccf18f0632c481301ba98")


