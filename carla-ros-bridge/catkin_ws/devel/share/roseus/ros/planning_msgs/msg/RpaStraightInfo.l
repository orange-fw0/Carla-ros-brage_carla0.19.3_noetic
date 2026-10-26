;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::RpaStraightInfo)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'RpaStraightInfo (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::RPASTRAIGHTINFO")
  (make-package "PLANNING_MSGS::RPASTRAIGHTINFO"))

(in-package "ROS")
;;//! \htmlinclude RpaStraightInfo.msg.html


(defclass planning_msgs::RpaStraightInfo
  :super ros::object
  :slots (_forward_distance _backward_distance _reserved ))

(defmethod planning_msgs::RpaStraightInfo
  (:init
   (&key
    ((:forward_distance __forward_distance) 0.0)
    ((:backward_distance __backward_distance) 0.0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _forward_distance (float __forward_distance))
   (setq _backward_distance (float __backward_distance))
   (setq _reserved (string __reserved))
   self)
  (:forward_distance
   (&optional __forward_distance)
   (if __forward_distance (setq _forward_distance __forward_distance)) _forward_distance)
  (:backward_distance
   (&optional __backward_distance)
   (if __backward_distance (setq _backward_distance __backward_distance)) _backward_distance)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; float32 _forward_distance
    4
    ;; float32 _backward_distance
    4
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _forward_distance
       (sys::poke _forward_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _backward_distance
       (sys::poke _backward_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _forward_distance
     (setq _forward_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _backward_distance
     (setq _backward_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get planning_msgs::RpaStraightInfo :md5sum-) "70c1a54230781c274779bd2179bf4210")
(setf (get planning_msgs::RpaStraightInfo :datatype-) "planning_msgs/RpaStraightInfo")
(setf (get planning_msgs::RpaStraightInfo :definition-)
      "float32 forward_distance
float32 backward_distance
string reserved

")



(provide :planning_msgs/RpaStraightInfo "70c1a54230781c274779bd2179bf4210")


