;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Shape3d)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Shape3d (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::SHAPE3D")
  (make-package "PERCEPTION_INTERFACE_MSGS::SHAPE3D"))

(in-package "ROS")
;;//! \htmlinclude Shape3d.msg.html


(defclass perception_interface_msgs::Shape3d
  :super ros::object
  :slots (_height _length _width ))

(defmethod perception_interface_msgs::Shape3d
  (:init
   (&key
    ((:height __height) 0.0)
    ((:length __length) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   (setq _length (float __length))
   (setq _width (float __width))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; float64 _height
    8
    ;; float64 _length
    8
    ;; float64 _width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Shape3d :md5sum-) "c47eee9d77334c2856763c76a78ae114")
(setf (get perception_interface_msgs::Shape3d :datatype-) "perception_interface_msgs/Shape3d")
(setf (get perception_interface_msgs::Shape3d :definition-)
      "float64 height
float64 length
float64 width

")



(provide :perception_interface_msgs/Shape3d "c47eee9d77334c2856763c76a78ae114")


