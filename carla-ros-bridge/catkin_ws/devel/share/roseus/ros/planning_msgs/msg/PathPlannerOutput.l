;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PathPlannerOutput)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PathPlannerOutput (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PATHPLANNEROUTPUT")
  (make-package "PLANNING_MSGS::PATHPLANNEROUTPUT"))

(in-package "ROS")
;;//! \htmlinclude PathPlannerOutput.msg.html


(defclass planning_msgs::PathPlannerOutput
  :super ros::object
  :slots (_x _y _dx_ds _dy_ds _d2x_ds2 _d2y_ds2 _curvature ))

(defmethod planning_msgs::PathPlannerOutput
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y __y) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dx_ds __dx_ds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dy_ds __dy_ds) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d2x_ds2 __d2x_ds2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:d2y_ds2 __d2y_ds2) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:curvature __curvature) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   (setq _y __y)
   (setq _dx_ds __dx_ds)
   (setq _dy_ds __dy_ds)
   (setq _d2x_ds2 __d2x_ds2)
   (setq _d2y_ds2 __d2y_ds2)
   (setq _curvature __curvature)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:dx_ds
   (&optional __dx_ds)
   (if __dx_ds (setq _dx_ds __dx_ds)) _dx_ds)
  (:dy_ds
   (&optional __dy_ds)
   (if __dy_ds (setq _dy_ds __dy_ds)) _dy_ds)
  (:d2x_ds2
   (&optional __d2x_ds2)
   (if __d2x_ds2 (setq _d2x_ds2 __d2x_ds2)) _d2x_ds2)
  (:d2y_ds2
   (&optional __d2y_ds2)
   (if __d2y_ds2 (setq _d2y_ds2 __d2y_ds2)) _d2y_ds2)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:serialization-length
   ()
   (+
    ;; float64[] _x
    (* 8    (length _x)) 4
    ;; float64[] _y
    (* 8    (length _y)) 4
    ;; float64[] _dx_ds
    (* 8    (length _dx_ds)) 4
    ;; float64[] _dy_ds
    (* 8    (length _dy_ds)) 4
    ;; float64[] _d2x_ds2
    (* 8    (length _d2x_ds2)) 4
    ;; float64[] _d2y_ds2
    (* 8    (length _d2y_ds2)) 4
    ;; float64[] _curvature
    (* 8    (length _curvature)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
       (sys::poke (elt _y i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dx_ds
     (write-long (length _dx_ds) s)
     (dotimes (i (length _dx_ds))
       (sys::poke (elt _dx_ds i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _dy_ds
     (write-long (length _dy_ds) s)
     (dotimes (i (length _dy_ds))
       (sys::poke (elt _dy_ds i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d2x_ds2
     (write-long (length _d2x_ds2) s)
     (dotimes (i (length _d2x_ds2))
       (sys::poke (elt _d2x_ds2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _d2y_ds2
     (write-long (length _d2y_ds2) s)
     (dotimes (i (length _d2y_ds2))
       (sys::poke (elt _d2y_ds2 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _curvature
     (write-long (length _curvature) s)
     (dotimes (i (length _curvature))
       (sys::poke (elt _curvature i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dx_ds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dx_ds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dx_ds i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _dy_ds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dy_ds (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _dy_ds i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d2x_ds2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d2x_ds2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d2x_ds2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _d2y_ds2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _d2y_ds2 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _d2y_ds2 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _curvature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curvature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _curvature i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get planning_msgs::PathPlannerOutput :md5sum-) "8250a011137bc624e80892f39cfdefe3")
(setf (get planning_msgs::PathPlannerOutput :datatype-) "planning_msgs/PathPlannerOutput")
(setf (get planning_msgs::PathPlannerOutput :definition-)
      "float64[] x
float64[] y
float64[] dx_ds
float64[] dy_ds
float64[] d2x_ds2
float64[] d2y_ds2
float64[] curvature

")



(provide :planning_msgs/PathPlannerOutput "8250a011137bc624e80892f39cfdefe3")


