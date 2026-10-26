;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::MapTaskRange)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'MapTaskRange (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::MAPTASKRANGE")
  (make-package "MOMENTA_MSGS::MAPTASKRANGE"))

(in-package "ROS")
;;//! \htmlinclude MapTaskRange.msg.html


(defclass momenta_msgs::MapTaskRange
  :super ros::object
  :slots (_begin_pos _end_pos ))

(defmethod momenta_msgs::MapTaskRange
  (:init
   (&key
    ((:begin_pos __begin_pos) 0.0)
    ((:end_pos __end_pos) 0.0)
    )
   (send-super :init)
   (setq _begin_pos (float __begin_pos))
   (setq _end_pos (float __end_pos))
   self)
  (:begin_pos
   (&optional __begin_pos)
   (if __begin_pos (setq _begin_pos __begin_pos)) _begin_pos)
  (:end_pos
   (&optional __end_pos)
   (if __end_pos (setq _end_pos __end_pos)) _end_pos)
  (:serialization-length
   ()
   (+
    ;; float64 _begin_pos
    8
    ;; float64 _end_pos
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _begin_pos
       (sys::poke _begin_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_pos
       (sys::poke _end_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _begin_pos
     (setq _begin_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_pos
     (setq _end_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get momenta_msgs::MapTaskRange :md5sum-) "d2cddef1d0d0658f1b721cb43fd379d6")
(setf (get momenta_msgs::MapTaskRange :datatype-) "momenta_msgs/MapTaskRange")
(setf (get momenta_msgs::MapTaskRange :definition-)
      "float64 begin_pos
float64 end_pos

")



(provide :momenta_msgs/MapTaskRange "d2cddef1d0d0658f1b721cb43fd379d6")


