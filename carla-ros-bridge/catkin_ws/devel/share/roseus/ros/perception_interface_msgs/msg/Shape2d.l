;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Shape2d)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Shape2d (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::SHAPE2D")
  (make-package "PERCEPTION_INTERFACE_MSGS::SHAPE2D"))

(in-package "ROS")
;;//! \htmlinclude Shape2d.msg.html


(defclass perception_interface_msgs::Shape2d
  :super ros::object
  :slots (_height _width ))

(defmethod perception_interface_msgs::Shape2d
  (:init
   (&key
    ((:height __height) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _height (float __height))
   (setq _width (float __width))
   self)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; float64 _height
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
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Shape2d :md5sum-) "1df0e5879c80583b281a9819d8c21378")
(setf (get perception_interface_msgs::Shape2d :datatype-) "perception_interface_msgs/Shape2d")
(setf (get perception_interface_msgs::Shape2d :definition-)
      "float64 height
float64 width

")



(provide :perception_interface_msgs/Shape2d "1df0e5879c80583b281a9819d8c21378")


