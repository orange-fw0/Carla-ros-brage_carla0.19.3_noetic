;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::Interval)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'Interval (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::INTERVAL")
  (make-package "WORLDMODEL_MSGS::INTERVAL"))

(in-package "ROS")
;;//! \htmlinclude Interval.msg.html


(defclass worldmodel_msgs::Interval
  :super ros::object
  :slots (_begin _end ))

(defmethod worldmodel_msgs::Interval
  (:init
   (&key
    ((:begin __begin) 0.0)
    ((:end __end) 0.0)
    )
   (send-super :init)
   (setq _begin (float __begin))
   (setq _end (float __end))
   self)
  (:begin
   (&optional __begin)
   (if __begin (setq _begin __begin)) _begin)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; float64 _begin
    8
    ;; float64 _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _begin
       (sys::poke _begin (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end
       (sys::poke _end (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _begin
     (setq _begin (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end
     (setq _end (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::Interval :md5sum-) "07d2a860011894bea8072b555e97de50")
(setf (get worldmodel_msgs::Interval :datatype-) "worldmodel_msgs/Interval")
(setf (get worldmodel_msgs::Interval :definition-)
      "float64 begin
float64 end

")



(provide :worldmodel_msgs/Interval "07d2a860011894bea8072b555e97de50")


