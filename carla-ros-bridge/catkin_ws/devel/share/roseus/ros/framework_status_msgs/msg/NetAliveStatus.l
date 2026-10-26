;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::NetAliveStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'NetAliveStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::NETALIVESTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::NETALIVESTATUS"))

(in-package "ROS")
;;//! \htmlinclude NetAliveStatus.msg.html


(defclass framework_status_msgs::NetAliveStatus
  :super ros::object
  :slots (_name _loss_count _reserved_info ))

(defmethod framework_status_msgs::NetAliveStatus
  (:init
   (&key
    ((:name __name) "")
    ((:loss_count __loss_count) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _loss_count (round __loss_count))
   (setq _reserved_info (string __reserved_info))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:loss_count
   (&optional __loss_count)
   (if __loss_count (setq _loss_count __loss_count)) _loss_count)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; uint32 _loss_count
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; uint32 _loss_count
       (write-long _loss_count s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _loss_count
     (setq _loss_count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::NetAliveStatus :md5sum-) "2420a67afcc451beca07820f451eb396")
(setf (get framework_status_msgs::NetAliveStatus :datatype-) "framework_status_msgs/NetAliveStatus")
(setf (get framework_status_msgs::NetAliveStatus :definition-)
      "string name
uint32 loss_count
string reserved_info

")



(provide :framework_status_msgs/NetAliveStatus "2420a67afcc451beca07820f451eb396")


