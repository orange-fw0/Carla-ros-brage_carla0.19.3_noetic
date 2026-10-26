;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xIntersectionData)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xIntersectionData (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XINTERSECTIONDATA")
  (make-package "V2X_MSGS::V2XINTERSECTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude V2xIntersectionData.msg.html


(defclass v2x_msgs::V2xIntersectionData
  :super ros::object
  :slots (_intersection_id _enter_angle _exit_angle ))

(defmethod v2x_msgs::V2xIntersectionData
  (:init
   (&key
    ((:intersection_id __intersection_id) 0)
    ((:enter_angle __enter_angle) 0.0)
    ((:exit_angle __exit_angle) 0.0)
    )
   (send-super :init)
   (setq _intersection_id (round __intersection_id))
   (setq _enter_angle (float __enter_angle))
   (setq _exit_angle (float __exit_angle))
   self)
  (:intersection_id
   (&optional __intersection_id)
   (if __intersection_id (setq _intersection_id __intersection_id)) _intersection_id)
  (:enter_angle
   (&optional __enter_angle)
   (if __enter_angle (setq _enter_angle __enter_angle)) _enter_angle)
  (:exit_angle
   (&optional __exit_angle)
   (if __exit_angle (setq _exit_angle __exit_angle)) _exit_angle)
  (:serialization-length
   ()
   (+
    ;; int32 _intersection_id
    4
    ;; float64 _enter_angle
    8
    ;; float64 _exit_angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _intersection_id
       (write-long _intersection_id s)
     ;; float64 _enter_angle
       (sys::poke _enter_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _exit_angle
       (sys::poke _exit_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _intersection_id
     (setq _intersection_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _enter_angle
     (setq _enter_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _exit_angle
     (setq _exit_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get v2x_msgs::V2xIntersectionData :md5sum-) "0f61aadbc50212199e203c182bad568f")
(setf (get v2x_msgs::V2xIntersectionData :datatype-) "v2x_msgs/V2xIntersectionData")
(setf (get v2x_msgs::V2xIntersectionData :definition-)
      "int32 intersection_id
float64 enter_angle
float64 exit_angle

")



(provide :v2x_msgs/V2xIntersectionData "0f61aadbc50212199e203c182bad568f")


