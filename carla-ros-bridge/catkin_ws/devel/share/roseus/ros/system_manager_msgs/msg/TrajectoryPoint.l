;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::TrajectoryPoint)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'TrajectoryPoint (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::TRAJECTORYPOINT")
  (make-package "SYSTEM_MANAGER_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html
(if (not (find-package "MLA_LOCALIZATION_MSGS"))
  (ros::roseus-add-msgs "mla_localization_msgs"))


(defclass system_manager_msgs::TrajectoryPoint
  :super ros::object
  :slots (_position _velocity _reserved _is_reverse _steering_report _yaw _reserved_info ))

(defmethod system_manager_msgs::TrajectoryPoint
  (:init
   (&key
    ((:position __position) (instance mla_localization_msgs::MLAPosLocal :init))
    ((:velocity __velocity) 0.0)
    ((:reserved __reserved) 0.0)
    ((:is_reverse __is_reverse) nil)
    ((:steering_report __steering_report) 0.0)
    ((:yaw __yaw) 0.0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _position __position)
   (setq _velocity (float __velocity))
   (setq _reserved (float __reserved))
   (setq _is_reverse __is_reverse)
   (setq _steering_report (float __steering_report))
   (setq _yaw (float __yaw))
   (setq _reserved_info (string __reserved_info))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:is_reverse
   (&optional (__is_reverse :null))
   (if (not (eq __is_reverse :null)) (setq _is_reverse __is_reverse)) _is_reverse)
  (:steering_report
   (&optional __steering_report)
   (if __steering_report (setq _steering_report __steering_report)) _steering_report)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; mla_localization_msgs/MLAPosLocal _position
    (send _position :serialization-length)
    ;; float64 _velocity
    8
    ;; float64 _reserved
    8
    ;; bool _is_reverse
    1
    ;; float32 _steering_report
    4
    ;; float64 _yaw
    8
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mla_localization_msgs/MLAPosLocal _position
       (send _position :serialize s)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _reserved
       (sys::poke _reserved (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_reverse
       (if _is_reverse (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steering_report
       (sys::poke _steering_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mla_localization_msgs/MLAPosLocal _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _reserved
     (setq _reserved (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_reverse
     (setq _is_reverse (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steering_report
     (setq _steering_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::TrajectoryPoint :md5sum-) "1bdd230b17368f5d0d892de70e9feeef")
(setf (get system_manager_msgs::TrajectoryPoint :datatype-) "system_manager_msgs/TrajectoryPoint")
(setf (get system_manager_msgs::TrajectoryPoint :definition-)
      "mla_localization_msgs/MLAPosLocal position
float64 velocity
float64 reserved
bool is_reverse
float32 steering_report
float64 yaw
string reserved_info

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

")



(provide :system_manager_msgs/TrajectoryPoint "1bdd230b17368f5d0d892de70e9feeef")


