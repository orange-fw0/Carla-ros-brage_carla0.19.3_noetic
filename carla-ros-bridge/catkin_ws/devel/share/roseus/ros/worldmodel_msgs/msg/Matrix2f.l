;; Auto-generated. Do not edit!


(when (boundp 'worldmodel_msgs::Matrix2f)
  (if (not (find-package "WORLDMODEL_MSGS"))
    (make-package "WORLDMODEL_MSGS"))
  (shadow 'Matrix2f (find-package "WORLDMODEL_MSGS")))
(unless (find-package "WORLDMODEL_MSGS::MATRIX2F")
  (make-package "WORLDMODEL_MSGS::MATRIX2F"))

(in-package "ROS")
;;//! \htmlinclude Matrix2f.msg.html


(defclass worldmodel_msgs::Matrix2f
  :super ros::object
  :slots (_x00 _x01 _x10 _x11 ))

(defmethod worldmodel_msgs::Matrix2f
  (:init
   (&key
    ((:x00 __x00) 0.0)
    ((:x01 __x01) 0.0)
    ((:x10 __x10) 0.0)
    ((:x11 __x11) 0.0)
    )
   (send-super :init)
   (setq _x00 (float __x00))
   (setq _x01 (float __x01))
   (setq _x10 (float __x10))
   (setq _x11 (float __x11))
   self)
  (:x00
   (&optional __x00)
   (if __x00 (setq _x00 __x00)) _x00)
  (:x01
   (&optional __x01)
   (if __x01 (setq _x01 __x01)) _x01)
  (:x10
   (&optional __x10)
   (if __x10 (setq _x10 __x10)) _x10)
  (:x11
   (&optional __x11)
   (if __x11 (setq _x11 __x11)) _x11)
  (:serialization-length
   ()
   (+
    ;; float32 _x00
    4
    ;; float32 _x01
    4
    ;; float32 _x10
    4
    ;; float32 _x11
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x00
       (sys::poke _x00 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x01
       (sys::poke _x01 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x10
       (sys::poke _x10 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x11
       (sys::poke _x11 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x00
     (setq _x00 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x01
     (setq _x01 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x10
     (setq _x10 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x11
     (setq _x11 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get worldmodel_msgs::Matrix2f :md5sum-) "11a08429dd19fa4ec764b532481b4084")
(setf (get worldmodel_msgs::Matrix2f :datatype-) "worldmodel_msgs/Matrix2f")
(setf (get worldmodel_msgs::Matrix2f :definition-)
      "float32 x00
float32 x01
float32 x10
float32 x11

")



(provide :worldmodel_msgs/Matrix2f "11a08429dd19fa4ec764b532481b4084")


