;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysPlacInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysPlacInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSPLACINFO")
  (make-package "SYSTEM_MANAGER_MSGS::SYSPLACINFO"))

(in-package "ROS")
;;//! \htmlinclude SysPlacInfo.msg.html


(defclass system_manager_msgs::SysPlacInfo
  :super ros::object
  :slots (_path ))

(defmethod system_manager_msgs::SysPlacInfo
  (:init
   (&key
    ((:path __path) "")
    )
   (send-super :init)
   (setq _path (string __path))
   self)
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysPlacInfo :md5sum-) "1d00cd540af97efeb6b1589112fab63e")
(setf (get system_manager_msgs::SysPlacInfo :datatype-) "system_manager_msgs/SysPlacInfo")
(setf (get system_manager_msgs::SysPlacInfo :definition-)
      "string path

")



(provide :system_manager_msgs/SysPlacInfo "1d00cd540af97efeb6b1589112fab63e")


