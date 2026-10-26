;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::FloatRange)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'FloatRange (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::FLOATRANGE")
  (make-package "LANDMARK_MSGS::FLOATRANGE"))

(in-package "ROS")
;;//! \htmlinclude FloatRange.msg.html


(defclass landmark_msgs::FloatRange
  :super ros::object
  :slots (_min _max ))

(defmethod landmark_msgs::FloatRange
  (:init
   (&key
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float32 _min
    4
    ;; float32 _max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get landmark_msgs::FloatRange :md5sum-) "b3ee9ed25575b46bb47c7673ad202faa")
(setf (get landmark_msgs::FloatRange :datatype-) "landmark_msgs/FloatRange")
(setf (get landmark_msgs::FloatRange :definition-)
      "float32 min
float32 max

")



(provide :landmark_msgs/FloatRange "b3ee9ed25575b46bb47c7673ad202faa")


