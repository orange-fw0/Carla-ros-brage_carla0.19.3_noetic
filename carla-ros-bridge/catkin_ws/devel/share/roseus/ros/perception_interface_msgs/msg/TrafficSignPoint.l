;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::TrafficSignPoint)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'TrafficSignPoint (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPOINT")
  (make-package "PERCEPTION_INTERFACE_MSGS::TRAFFICSIGNPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrafficSignPoint.msg.html


(defclass perception_interface_msgs::TrafficSignPoint
  :super ros::object
  :slots (_position _visibility ))

(defmethod perception_interface_msgs::TrafficSignPoint
  (:init
   (&key
    ((:position __position) (instance perception_interface_msgs::Point2f :init))
    ((:visibility __visibility) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _visibility (float __visibility))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:visibility
   (&optional __visibility)
   (if __visibility (setq _visibility __visibility)) _visibility)
  (:serialization-length
   ()
   (+
    ;; perception_interface_msgs/Point2f _position
    (send _position :serialization-length)
    ;; float32 _visibility
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_interface_msgs/Point2f _position
       (send _position :serialize s)
     ;; float32 _visibility
       (sys::poke _visibility (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_interface_msgs/Point2f _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float32 _visibility
     (setq _visibility (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::TrafficSignPoint :md5sum-) "55f6a2c955a230791ba601376c12a539")
(setf (get perception_interface_msgs::TrafficSignPoint :datatype-) "perception_interface_msgs/TrafficSignPoint")
(setf (get perception_interface_msgs::TrafficSignPoint :definition-)
      "perception_interface_msgs/Point2f position
float32 visibility

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

")



(provide :perception_interface_msgs/TrafficSignPoint "55f6a2c955a230791ba601376c12a539")


