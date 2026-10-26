;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::Rect4f)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'Rect4f (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::RECT4F")
  (make-package "PERCEPTION_INTERFACE_MSGS::RECT4F"))

(in-package "ROS")
;;//! \htmlinclude Rect4f.msg.html


(defclass perception_interface_msgs::Rect4f
  :super ros::object
  :slots (_left _top _right _bottom ))

(defmethod perception_interface_msgs::Rect4f
  (:init
   (&key
    ((:left __left) 0.0)
    ((:top __top) 0.0)
    ((:right __right) 0.0)
    ((:bottom __bottom) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _top (float __top))
   (setq _right (float __right))
   (setq _bottom (float __bottom))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:top
   (&optional __top)
   (if __top (setq _top __top)) _top)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:bottom
   (&optional __bottom)
   (if __bottom (setq _bottom __bottom)) _bottom)
  (:serialization-length
   ()
   (+
    ;; float32 _left
    4
    ;; float32 _top
    4
    ;; float32 _right
    4
    ;; float32 _bottom
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _top
       (sys::poke _top (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom
       (sys::poke _bottom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _top
     (setq _top (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom
     (setq _bottom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_interface_msgs::Rect4f :md5sum-) "7aad971742c7cc38deb20cfb704affa1")
(setf (get perception_interface_msgs::Rect4f :datatype-) "perception_interface_msgs/Rect4f")
(setf (get perception_interface_msgs::Rect4f :definition-)
      "float32 left
float32 top
float32 right
float32 bottom

")



(provide :perception_interface_msgs/Rect4f "7aad971742c7cc38deb20cfb704affa1")


