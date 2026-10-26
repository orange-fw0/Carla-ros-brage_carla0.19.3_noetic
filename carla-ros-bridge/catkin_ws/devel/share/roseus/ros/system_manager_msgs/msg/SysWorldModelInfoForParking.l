;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysWorldModelInfoForParking)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysWorldModelInfoForParking (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSWORLDMODELINFOFORPARKING")
  (make-package "SYSTEM_MANAGER_MSGS::SYSWORLDMODELINFOFORPARKING"))

(in-package "ROS")
;;//! \htmlinclude SysWorldModelInfoForParking.msg.html


(defclass system_manager_msgs::SysWorldModelInfoForParking
  :super ros::object
  :slots (_id ))

(defmethod system_manager_msgs::SysWorldModelInfoForParking
  (:init
   (&key
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get system_manager_msgs::SysWorldModelInfoForParking :md5sum-) "309d4b30834b338cced19e5622a97a03")
(setf (get system_manager_msgs::SysWorldModelInfoForParking :datatype-) "system_manager_msgs/SysWorldModelInfoForParking")
(setf (get system_manager_msgs::SysWorldModelInfoForParking :definition-)
      "uint32 id

")



(provide :system_manager_msgs/SysWorldModelInfoForParking "309d4b30834b338cced19e5622a97a03")


