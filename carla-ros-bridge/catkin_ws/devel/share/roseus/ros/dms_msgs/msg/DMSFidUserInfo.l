;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidUserInfo)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidUserInfo (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDUSERINFO")
  (make-package "DMS_MSGS::DMSFIDUSERINFO"))

(in-package "ROS")
;;//! \htmlinclude DMSFidUserInfo.msg.html


(defclass dms_msgs::DMSFidUserInfo
  :super ros::object
  :slots (_user_id _create_time ))

(defmethod dms_msgs::DMSFidUserInfo
  (:init
   (&key
    ((:user_id __user_id) "")
    ((:create_time __create_time) "")
    )
   (send-super :init)
   (setq _user_id (string __user_id))
   (setq _create_time (string __create_time))
   self)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:create_time
   (&optional __create_time)
   (if __create_time (setq _create_time __create_time)) _create_time)
  (:serialization-length
   ()
   (+
    ;; string _user_id
    4 (length _user_id)
    ;; string _create_time
    4 (length _create_time)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _user_id
       (write-long (length _user_id) s) (princ _user_id s)
     ;; string _create_time
       (write-long (length _create_time) s) (princ _create_time s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _create_time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _create_time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFidUserInfo :md5sum-) "8566b8925ece3c605f335f81182b84d6")
(setf (get dms_msgs::DMSFidUserInfo :datatype-) "dms_msgs/DMSFidUserInfo")
(setf (get dms_msgs::DMSFidUserInfo :definition-)
      "string user_id
string create_time

")



(provide :dms_msgs/DMSFidUserInfo "8566b8925ece3c605f335f81182b84d6")


