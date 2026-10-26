;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::NaviSettings)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'NaviSettings (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::NAVISETTINGS")
  (make-package "SYSTEM_MANAGER_MSGS::NAVISETTINGS"))

(in-package "ROS")
;;//! \htmlinclude NaviSettings.msg.html


(defclass system_manager_msgs::NaviSettings
  :super ros::object
  :slots (_navi_max_speed _navi_time_distance ))

(defmethod system_manager_msgs::NaviSettings
  (:init
   (&key
    ((:navi_max_speed __navi_max_speed) 0.0)
    ((:navi_time_distance __navi_time_distance) (instance system_manager_msgs::NaviTimeDistance :init))
    )
   (send-super :init)
   (setq _navi_max_speed (float __navi_max_speed))
   (setq _navi_time_distance __navi_time_distance)
   self)
  (:navi_max_speed
   (&optional __navi_max_speed)
   (if __navi_max_speed (setq _navi_max_speed __navi_max_speed)) _navi_max_speed)
  (:navi_time_distance
   (&rest __navi_time_distance)
   (if (keywordp (car __navi_time_distance))
       (send* _navi_time_distance __navi_time_distance)
     (progn
       (if __navi_time_distance (setq _navi_time_distance (car __navi_time_distance)))
       _navi_time_distance)))
  (:serialization-length
   ()
   (+
    ;; float32 _navi_max_speed
    4
    ;; system_manager_msgs/NaviTimeDistance _navi_time_distance
    (send _navi_time_distance :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _navi_max_speed
       (sys::poke _navi_max_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; system_manager_msgs/NaviTimeDistance _navi_time_distance
       (send _navi_time_distance :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _navi_max_speed
     (setq _navi_max_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; system_manager_msgs/NaviTimeDistance _navi_time_distance
     (send _navi_time_distance :deserialize buf ptr-) (incf ptr- (send _navi_time_distance :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::NaviSettings :md5sum-) "d7377832e5606e265ae1240dabf8c394")
(setf (get system_manager_msgs::NaviSettings :datatype-) "system_manager_msgs/NaviSettings")
(setf (get system_manager_msgs::NaviSettings :definition-)
      "float32 navi_max_speed
system_manager_msgs/NaviTimeDistance navi_time_distance

================================================================================
MSG: system_manager_msgs/NaviTimeDistance
uint8 AGGRESIVE = 0
uint8 MODERATE_AGGRESIVE = 1
uint8 NORMAL = 2
uint8 MODERATE_CONSERVATIVE = 3
uint8 CONSERVATIVE = 4
uint8 value

")



(provide :system_manager_msgs/NaviSettings "d7377832e5606e265ae1240dabf8c394")


