;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSOrientation3f)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSOrientation3f (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSORIENTATION3F")
  (make-package "DMS_MSGS::DMSORIENTATION3F"))

(in-package "ROS")
;;//! \htmlinclude DMSOrientation3f.msg.html


(defclass dms_msgs::DMSOrientation3f
  :super ros::object
  :slots (_pitch _yaw _roll ))

(defmethod dms_msgs::DMSOrientation3f
  (:init
   (&key
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _roll (float __roll))
   self)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; float32 _pitch
    4
    ;; float32 _yaw
    4
    ;; float32 _roll
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pitch
     (setq _pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll
     (setq _roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSOrientation3f :md5sum-) "7df065b9d568b6506284f9708f81ac8e")
(setf (get dms_msgs::DMSOrientation3f :datatype-) "dms_msgs/DMSOrientation3f")
(setf (get dms_msgs::DMSOrientation3f :definition-)
      "float32 pitch
float32 yaw
float32 roll

")



(provide :dms_msgs/DMSOrientation3f "7df065b9d568b6506284f9708f81ac8e")


