;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::BoundaryInfo)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'BoundaryInfo (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::BOUNDARYINFO")
  (make-package "MOMENTA_MSGS::BOUNDARYINFO"))

(in-package "ROS")
;;//! \htmlinclude BoundaryInfo.msg.html


(defclass momenta_msgs::BoundaryInfo
  :super ros::object
  :slots (_length _type ))

(defmethod momenta_msgs::BoundaryInfo
  (:init
   (&key
    ((:length __length) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _length (float __length))
   (setq _type (round __type))
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float64 _length
    8
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get momenta_msgs::BoundaryInfo :md5sum-) "2ba419d75b1c76e64b41d569815c5f08")
(setf (get momenta_msgs::BoundaryInfo :datatype-) "momenta_msgs/BoundaryInfo")
(setf (get momenta_msgs::BoundaryInfo :definition-)
      "float64 length
uint8 type

")



(provide :momenta_msgs/BoundaryInfo "2ba419d75b1c76e64b41d569815c5f08")


