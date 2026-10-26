;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::LeftWaitingArea)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'LeftWaitingArea (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::LEFTWAITINGAREA")
  (make-package "WORLDMODEL_MSGS::LEFTWAITINGAREA"))

(in-package "ROS")
;;//! \htmlinclude LeftWaitingArea.msg.html


(defclass worldmodel_msgs::LeftWaitingArea
  :super ros::object
  :slots (_existence _length _distance ))

(defmethod worldmodel_msgs::LeftWaitingArea
  (:init
   (&key
    ((:existence __existence) nil)
    ((:length __length) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _existence __existence)
   (setq _length (float __length))
   (setq _distance (float __distance))
   self)
  (:existence
   (&optional (__existence :null))
   (if (not (eq __existence :null)) (setq _existence __existence)) _existence)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; bool _existence
    1
    ;; float64 _length
    8
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _existence
       (if _existence (write-byte -1 s) (write-byte 0 s))
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _existence
     (setq _existence (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get worldmodel_msgs::LeftWaitingArea :md5sum-) "cc6673be16a143318e79f0eda95d84ea")
(setf (get worldmodel_msgs::LeftWaitingArea :datatype-) "worldmodel_msgs/LeftWaitingArea")
(setf (get worldmodel_msgs::LeftWaitingArea :definition-)
      "bool existence
float64 length
float64 distance

")



(provide :worldmodel_msgs/LeftWaitingArea "cc6673be16a143318e79f0eda95d84ea")


