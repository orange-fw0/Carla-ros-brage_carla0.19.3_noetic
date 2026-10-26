;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSRect2f)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSRect2f (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSRECT2F")
  (make-package "OMS_MSGS::OMSRECT2F"))

(in-package "ROS")
;;//! \htmlinclude OMSRect2f.msg.html


(defclass oms_msgs::OMSRect2f
  :super ros::object
  :slots (_left _top _right _bottom _score ))

(defmethod oms_msgs::OMSRect2f
  (:init
   (&key
    ((:left __left) 0.0)
    ((:top __top) 0.0)
    ((:right __right) 0.0)
    ((:bottom __bottom) 0.0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _top (float __top))
   (setq _right (float __right))
   (setq _bottom (float __bottom))
   (setq _score (float __score))
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
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
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
    ;; float32 _score
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
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get oms_msgs::OMSRect2f :md5sum-) "0a5a0710cc6868898ab072ce24aa60ab")
(setf (get oms_msgs::OMSRect2f :datatype-) "oms_msgs/OMSRect2f")
(setf (get oms_msgs::OMSRect2f :definition-)
      "float32 left
float32 top
float32 right
float32 bottom
float32 score

")



(provide :oms_msgs/OMSRect2f "0a5a0710cc6868898ab072ce24aa60ab")


