;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::FrenetState)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'FrenetState (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::FRENETSTATE")
  (make-package "PLANNING_MSGS::FRENETSTATE"))

(in-package "ROS")
;;//! \htmlinclude FrenetState.msg.html


(defclass planning_msgs::FrenetState
  :super ros::object
  :slots (_position_frenet _dl _ddl ))

(defmethod planning_msgs::FrenetState
  (:init
   (&key
    ((:position_frenet __position_frenet) (instance planning_msgs::Point2d :init))
    ((:dl __dl) 0.0)
    ((:ddl __ddl) 0.0)
    )
   (send-super :init)
   (setq _position_frenet __position_frenet)
   (setq _dl (float __dl))
   (setq _ddl (float __ddl))
   self)
  (:position_frenet
   (&rest __position_frenet)
   (if (keywordp (car __position_frenet))
       (send* _position_frenet __position_frenet)
     (progn
       (if __position_frenet (setq _position_frenet (car __position_frenet)))
       _position_frenet)))
  (:dl
   (&optional __dl)
   (if __dl (setq _dl __dl)) _dl)
  (:ddl
   (&optional __ddl)
   (if __ddl (setq _ddl __ddl)) _ddl)
  (:serialization-length
   ()
   (+
    ;; planning_msgs/Point2d _position_frenet
    (send _position_frenet :serialization-length)
    ;; float64 _dl
    8
    ;; float64 _ddl
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; planning_msgs/Point2d _position_frenet
       (send _position_frenet :serialize s)
     ;; float64 _dl
       (sys::poke _dl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ddl
       (sys::poke _ddl (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; planning_msgs/Point2d _position_frenet
     (send _position_frenet :deserialize buf ptr-) (incf ptr- (send _position_frenet :serialization-length))
   ;; float64 _dl
     (setq _dl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ddl
     (setq _ddl (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get planning_msgs::FrenetState :md5sum-) "4b854f1907dd1e925fedf8ce687ee633")
(setf (get planning_msgs::FrenetState :datatype-) "planning_msgs/FrenetState")
(setf (get planning_msgs::FrenetState :definition-)
      "planning_msgs/Point2d position_frenet
float64 dl
float64 ddl

================================================================================
MSG: planning_msgs/Point2d
float64 x
float64 y

")



(provide :planning_msgs/FrenetState "4b854f1907dd1e925fedf8ce687ee633")


