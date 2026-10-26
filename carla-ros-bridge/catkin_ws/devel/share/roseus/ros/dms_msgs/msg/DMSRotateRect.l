;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSRotateRect)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSRotateRect (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSROTATERECT")
  (make-package "DMS_MSGS::DMSROTATERECT"))

(in-package "ROS")
;;//! \htmlinclude DMSRotateRect.msg.html


(defclass dms_msgs::DMSRotateRect
  :super ros::object
  :slots (_center _width _height _angle ))

(defmethod dms_msgs::DMSRotateRect
  (:init
   (&key
    ((:center __center) (instance dms_msgs::DMSPoint2f :init))
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _center __center)
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _angle (float __angle))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; dms_msgs/DMSPoint2f _center
    (send _center :serialization-length)
    ;; float32 _width
    4
    ;; float32 _height
    4
    ;; float32 _angle
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dms_msgs/DMSPoint2f _center
       (send _center :serialize s)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dms_msgs/DMSPoint2f _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dms_msgs::DMSRotateRect :md5sum-) "4ca3a40298990ac6a3c8e888da054d9f")
(setf (get dms_msgs::DMSRotateRect :datatype-) "dms_msgs/DMSRotateRect")
(setf (get dms_msgs::DMSRotateRect :definition-)
      "dms_msgs/DMSPoint2f center
float32 width
float32 height
float32 angle

================================================================================
MSG: dms_msgs/DMSPoint2f
float32 x
float32 y

")



(provide :dms_msgs/DMSRotateRect "4ca3a40298990ac6a3c8e888da054d9f")


