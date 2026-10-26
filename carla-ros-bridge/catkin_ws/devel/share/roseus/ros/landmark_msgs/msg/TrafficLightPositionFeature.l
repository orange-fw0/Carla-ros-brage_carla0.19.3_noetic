;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::TrafficLightPositionFeature)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'TrafficLightPositionFeature (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::TRAFFICLIGHTPOSITIONFEATURE")
  (make-package "LANDMARK_MSGS::TRAFFICLIGHTPOSITIONFEATURE"))

(in-package "ROS")
;;//! \htmlinclude TrafficLightPositionFeature.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass landmark_msgs::TrafficLightPositionFeature
  :super ros::object
  :slots (_position _yaw ))

(defmethod landmark_msgs::TrafficLightPositionFeature
  (:init
   (&key
    ((:position __position) (instance perception_interface_msgs::Point3f :init))
    ((:yaw __yaw) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _yaw (float __yaw))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point3f _position
    (send _position :serialization-length)
    ;; float32 _yaw
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point3f _position
       (send _position :serialize s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point3f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::TrafficLightPositionFeature :md5sum-) "120424d47bdd77414d185cd2012b8330")
(setf (get landmark_msgs::TrafficLightPositionFeature :datatype-) "landmark_msgs/TrafficLightPositionFeature")
(setf (get landmark_msgs::TrafficLightPositionFeature :definition-)
      "perception_interface_msgs/Point3f position
float32 yaw

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

")



(provide :landmark_msgs/TrafficLightPositionFeature "120424d47bdd77414d185cd2012b8330")


