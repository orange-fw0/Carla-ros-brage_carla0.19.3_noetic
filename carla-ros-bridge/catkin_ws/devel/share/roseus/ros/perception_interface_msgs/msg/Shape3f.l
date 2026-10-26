;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Shape3f)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Shape3f (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::SHAPE3F")
  (make-package "PERCEPTION_INTERFACE_MSGS::SHAPE3F"))

(in-package "ROS")
;;//! \htmlinclude Shape3f.msg.html


(defclass perception_interface_msgs::Shape3f
  :super ros::object
  :slots (_length _height _width ))

(defmethod perception_interface_msgs::Shape3f
  (:init
   (&key
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _length (float __length))
   (setq _height (float __height))
   (setq _width (float __width))
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; float32 _length
    4
    ;; float32 _height
    4
    ;; float32 _width
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Shape3f :md5sum-) "b126bc70c6374908c757110ae5b5c775")
(setf (get perception_interface_msgs::Shape3f :datatype-) "perception_interface_msgs/Shape3f")
(setf (get perception_interface_msgs::Shape3f :definition-)
      "float32 length
float32 height
float32 width

")



(provide :perception_interface_msgs/Shape3f "b126bc70c6374908c757110ae5b5c775")


