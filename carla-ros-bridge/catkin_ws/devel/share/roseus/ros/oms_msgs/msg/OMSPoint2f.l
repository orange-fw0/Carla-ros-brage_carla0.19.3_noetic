;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSPoint2f)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSPoint2f (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSPOINT2F")
  (make-package "OMS_MSGS::OMSPOINT2F"))

(in-package "ROS")
;;//! \htmlinclude OMSPoint2f.msg.html


(defclass oms_msgs::OMSPoint2f
  :super ros::object
  :slots (_x _y _score ))

(defmethod oms_msgs::OMSPoint2f
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:score __score) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _score (float __score))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get oms_msgs::OMSPoint2f :md5sum-) "02f085ae28ccbe1aaa17a7c160d5c843")
(setf (get oms_msgs::OMSPoint2f :datatype-) "oms_msgs/OMSPoint2f")
(setf (get oms_msgs::OMSPoint2f :definition-)
      "float32 x
float32 y
float32 score

")



(provide :oms_msgs/OMSPoint2f "02f085ae28ccbe1aaa17a7c160d5c843")


