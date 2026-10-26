;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysAceInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysAceInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSACEINFO")
  (make-package "SYSTEM_MANAGER_MSGS::SYSACEINFO"))

(in-package "ROS")
;;//! \htmlinclude SysAceInfo.msg.html
(if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
  (ros::roseus-add-msgs "perception_interface_msgs"))


(defclass system_manager_msgs::SysAceInfo
  :super ros::object
  :slots (_id _camera_names _path ))

(defmethod system_manager_msgs::SysAceInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:camera_names __camera_names) ())
    ((:path __path) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _camera_names __camera_names)
   (setq _path (string __path))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:camera_names
   (&rest __camera_names)
   (if (keywordp (car __camera_names))
       (send* _camera_names __camera_names)
     (progn
       (if __camera_names (setq _camera_names (car __camera_names)))
       _camera_names)))
  (:path
   (&optional __path)
   (if __path (setq _path __path)) _path)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; perception_interface_msgs/CameraSourceEnum[] _camera_names
    (apply #'+ (send-all _camera_names :serialization-length)) 4
    ;; string _path
    4 (length _path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; perception_interface_msgs/CameraSourceEnum[] _camera_names
     (write-long (length _camera_names) s)
     (dolist (elem _camera_names)
       (send elem :serialize s)
       )
     ;; string _path
       (write-long (length _path) s) (princ _path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/CameraSourceEnum[] _camera_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _camera_names (let (r) (dotimes (i n) (push (instance perception_interface_msgs::CameraSourceEnum :init) r)) r))
     (dolist (elem- _camera_names)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysAceInfo :md5sum-) "3d24e1ba470f4b495d6b5e92bb3d2b76")
(setf (get system_manager_msgs::SysAceInfo :datatype-) "system_manager_msgs/SysAceInfo")
(setf (get system_manager_msgs::SysAceInfo :definition-)
      "uint32 id
perception_interface_msgs/CameraSourceEnum[] camera_names
string path

================================================================================
MSG: perception_interface_msgs/CameraSourceEnum
uint8 CAMERA_SOURCE_FRONT_FAR = 0
uint8 CAMERA_SOURCE_FRONT_MID = 1
uint8 CAMERA_SOURCE_FRONT_WIDE = 2
uint8 CAMERA_SOURCE_LEFT_FRONT = 3
uint8 CAMERA_SOURCE_LEFT_REAR = 4
uint8 CAMERA_SOURCE_REAR_MID = 5
uint8 CAMERA_SOURCE_REAR_MID_UP = 6
uint8 CAMERA_SOURCE_REAR_MID_DOWN = 7
uint8 CAMERA_SOURCE_RIGHT_FRONT = 8
uint8 CAMERA_SOURCE_RIGHT_REAR = 9
uint8 CAMERA_SOURCE_FRONT_FISHEYE = 10
uint8 CAMERA_SOURCE_LEFT_FISHEYE = 11
uint8 CAMERA_SOURCE_RIGHT_FISHEYE = 12
uint8 CAMERA_SOURCE_REAR_FISHEYE = 13
uint8 CAMERA_SOURCE_FISHEYE = 14
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_LEFT = 15
uint8 CAMERA_SOURCE_FRONT_WIDE_SUB_RIGHT = 16
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_LEFT = 17
uint8 CAMERA_SOURCE_RIGHT_FRONT_SUB_RIGHT = 18
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_LEFT = 19
uint8 CAMERA_SOURCE_LEFT_FRONT_SUB_RIGHT = 20
uint8 CAMERA_SOURCE_LEFT_REAR_SUB_LEFT = 21
uint8 CAMERA_SOURCE_RIGHT_REAR_SUB_RIGHT = 22
uint8 CAMERA_SOURCE_FRONT_MID_FAR = 23
uint8 CAMERA_SOURCE_FRONT_SUPER_FAR = 24
uint8 CAMERA_SOURCE_BEV = 25
uint8 value

")



(provide :system_manager_msgs/SysAceInfo "3d24e1ba470f4b495d6b5e92bb3d2b76")


