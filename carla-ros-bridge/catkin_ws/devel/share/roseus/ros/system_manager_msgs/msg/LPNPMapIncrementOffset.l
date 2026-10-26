;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::LPNPMapIncrementOffset)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'LPNPMapIncrementOffset (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::LPNPMAPINCREMENTOFFSET")
  (make-package "SYSTEM_MANAGER_MSGS::LPNPMAPINCREMENTOFFSET"))

(in-package "ROS")
;;//! \htmlinclude LPNPMapIncrementOffset.msg.html


(defclass system_manager_msgs::LPNPMapIncrementOffset
  :super ros::object
  :slots (_parking_slot _speed_bump _trajectory_point ))

(defmethod system_manager_msgs::LPNPMapIncrementOffset
  (:init
   (&key
    ((:parking_slot __parking_slot) 0)
    ((:speed_bump __speed_bump) 0)
    ((:trajectory_point __trajectory_point) 0)
    )
   (send-super :init)
   (setq _parking_slot (round __parking_slot))
   (setq _speed_bump (round __speed_bump))
   (setq _trajectory_point (round __trajectory_point))
   self)
  (:parking_slot
   (&optional __parking_slot)
   (if __parking_slot (setq _parking_slot __parking_slot)) _parking_slot)
  (:speed_bump
   (&optional __speed_bump)
   (if __speed_bump (setq _speed_bump __speed_bump)) _speed_bump)
  (:trajectory_point
   (&optional __trajectory_point)
   (if __trajectory_point (setq _trajectory_point __trajectory_point)) _trajectory_point)
  (:serialization-length
   ()
   (+
    ;; int32 _parking_slot
    4
    ;; int32 _speed_bump
    4
    ;; int32 _trajectory_point
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _parking_slot
       (write-long _parking_slot s)
     ;; int32 _speed_bump
       (write-long _speed_bump s)
     ;; int32 _trajectory_point
       (write-long _trajectory_point s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _parking_slot
     (setq _parking_slot (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed_bump
     (setq _speed_bump (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _trajectory_point
     (setq _trajectory_point (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_manager_msgs::LPNPMapIncrementOffset :md5sum-) "cdb306b306f07d5632f2ea49e6101c24")
(setf (get system_manager_msgs::LPNPMapIncrementOffset :datatype-) "system_manager_msgs/LPNPMapIncrementOffset")
(setf (get system_manager_msgs::LPNPMapIncrementOffset :definition-)
      "int32 parking_slot
int32 speed_bump
int32 trajectory_point

")



(provide :system_manager_msgs/LPNPMapIncrementOffset "cdb306b306f07d5632f2ea49e6101c24")


