;; Auto-generated. Do not edit!


(when (boundp 'submap_msgs::Position)
  (if (not (find-package "SUBMAP_MSGS"))
    (make-package "SUBMAP_MSGS"))
  (shadow 'Position (find-package "SUBMAP_MSGS")))
(unless (find-package "SUBMAP_MSGS::POSITION")
  (make-package "SUBMAP_MSGS::POSITION"))

(in-package "ROS")
;;//! \htmlinclude Position.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass submap_msgs::Position
  :super ros::object
  :slots (_orientation _translation _timestamp ))

(defmethod submap_msgs::Position
  (:init
   (&key
    ((:orientation __orientation) (instance geometry_msgs::Quaternion :init))
    ((:translation __translation) (instance geometry_msgs::Vector3 :init))
    ((:timestamp __timestamp) 0.0)
    )
   (send-super :init)
   (setq _orientation __orientation)
   (setq _translation __translation)
   (setq _timestamp (float __timestamp))
   self)
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:translation
   (&rest __translation)
   (if (keywordp (car __translation))
       (send* _translation __translation)
     (progn
       (if __translation (setq _translation (car __translation)))
       _translation)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _orientation
    (send _orientation :serialization-length)
    ;; geometry_msgs/Vector3 _translation
    (send _translation :serialization-length)
    ;; float64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _orientation
       (send _orientation :serialize s)
     ;; geometry_msgs/Vector3 _translation
       (send _translation :serialize s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; geometry_msgs/Vector3 _translation
     (send _translation :deserialize buf ptr-) (incf ptr- (send _translation :serialization-length))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get submap_msgs::Position :md5sum-) "aa14b214b17b64a0b4ede6ed095f0b69")
(setf (get submap_msgs::Position :datatype-) "submap_msgs/Position")
(setf (get submap_msgs::Position :definition-)
      "geometry_msgs/Quaternion orientation
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



(provide :submap_msgs/Position "aa14b214b17b64a0b4ede6ed095f0b69")


