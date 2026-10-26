;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::Curve)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'Curve (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::CURVE")
  (make-package "PLANNING_MSGS::CURVE"))

(in-package "ROS")
;;//! \htmlinclude Curve.msg.html


(defclass planning_msgs::Curve
  :super ros::object
  :slots (_polynomial _start_x _end_x ))

(defmethod planning_msgs::Curve
  (:init
   (&key
    ((:polynomial __polynomial) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:start_x __start_x) 0.0)
    ((:end_x __end_x) 0.0)
    )
   (send-super :init)
   (setq _polynomial __polynomial)
   (setq _start_x (float __start_x))
   (setq _end_x (float __end_x))
   self)
  (:polynomial
   (&optional __polynomial)
   (if __polynomial (setq _polynomial __polynomial)) _polynomial)
  (:start_x
   (&optional __start_x)
   (if __start_x (setq _start_x __start_x)) _start_x)
  (:end_x
   (&optional __end_x)
   (if __end_x (setq _end_x __end_x)) _end_x)
  (:serialization-length
   ()
   (+
    ;; float64[] _polynomial
    (* 8    (length _polynomial)) 4
    ;; float64 _start_x
    8
    ;; float64 _end_x
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _polynomial
     (write-long (length _polynomial) s)
     (dotimes (i (length _polynomial))
       (sys::poke (elt _polynomial i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _start_x
       (sys::poke _start_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_x
       (sys::poke _end_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _polynomial
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _polynomial (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _polynomial i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _start_x
     (setq _start_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_x
     (setq _end_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::Curve :md5sum-) "7be1d35f078cd84c7b6565543f55ab98")
(setf (get planning_msgs::Curve :datatype-) "planning_msgs/Curve")
(setf (get planning_msgs::Curve :definition-)
      "float64[] polynomial
float64 start_x
float64 end_x

")



(provide :planning_msgs/Curve "7be1d35f078cd84c7b6565543f55ab98")


