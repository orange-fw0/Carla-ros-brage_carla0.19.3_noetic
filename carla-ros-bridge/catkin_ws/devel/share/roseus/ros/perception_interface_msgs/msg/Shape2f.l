;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Shape2f)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Shape2f (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::SHAPE2F")
  (make-package "PERCEPTION_INTERFACE_MSGS::SHAPE2F"))

(in-package "ROS")
;;//! \htmlinclude Shape2f.msg.html


(defclass perception_interface_msgs::Shape2f
  :super ros::object
  :slots (_height _width ))

(defmethod perception_interface_msgs::Shape2f
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
    ;; float32 _height
    4
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Shape2f :md5sum-) "b3ca5b4079862766bc09a4bf31c162f1")
(setf (get perception_interface_msgs::Shape2f :datatype-) "perception_interface_msgs/Shape2f")
(setf (get perception_interface_msgs::Shape2f :definition-)
      "float32 height
float32 width

")



(provide :perception_interface_msgs/Shape2f "b3ca5b4079862766bc09a4bf31c162f1")


