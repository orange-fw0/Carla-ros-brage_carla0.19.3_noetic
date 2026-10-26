;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidUserListInfo)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidUserListInfo (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDUSERLISTINFO")
  (make-package "DMS_MSGS::DMSFIDUSERLISTINFO"))

(in-package "ROS")
;;//! \htmlinclude DMSFidUserListInfo.msg.html


(intern "*USER_LIST_INFO_UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDUSERLISTINFO"))
(shadow '*USER_LIST_INFO_UN_AVAILABLE* (find-package "DMS_MSGS::DMSFIDUSERLISTINFO"))
(defconstant dms_msgs::DMSFidUserListInfo::*USER_LIST_INFO_UN_AVAILABLE* 0)
(intern "*USER_LIST_INFO_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDUSERLISTINFO"))
(shadow '*USER_LIST_INFO_AVAILABLE* (find-package "DMS_MSGS::DMSFIDUSERLISTINFO"))
(defconstant dms_msgs::DMSFidUserListInfo::*USER_LIST_INFO_AVAILABLE* 1)

(defun dms_msgs::DMSFidUserListInfo-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFidUserListInfo::*USER_LIST_INFO_UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFidUserListInfo::*USER_LIST_INFO_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFidUserListInfo
  :super ros::object
  :slots (_available _user_list _user_list_sync_type ))

(defmethod dms_msgs::DMSFidUserListInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:user_list __user_list) ())
    ((:user_list_sync_type __user_list_sync_type) (instance dms_msgs::UserListSyncTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _user_list __user_list)
   (setq _user_list_sync_type __user_list_sync_type)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:user_list
   (&rest __user_list)
   (if (keywordp (car __user_list))
       (send* _user_list __user_list)
     (progn
       (if __user_list (setq _user_list (car __user_list)))
       _user_list)))
  (:user_list_sync_type
   (&rest __user_list_sync_type)
   (if (keywordp (car __user_list_sync_type))
       (send* _user_list_sync_type __user_list_sync_type)
     (progn
       (if __user_list_sync_type (setq _user_list_sync_type (car __user_list_sync_type)))
       _user_list_sync_type)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSFidUserInfo[] _user_list
    (apply #'+ (send-all _user_list :serialization-length)) 4
    ;; dms_msgs/UserListSyncTypeEnum _user_list_sync_type
    (send _user_list_sync_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSFidUserInfo[] _user_list
     (write-long (length _user_list) s)
     (dolist (elem _user_list)
       (send elem :serialize s)
       )
     ;; dms_msgs/UserListSyncTypeEnum _user_list_sync_type
       (send _user_list_sync_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSFidUserInfo[] _user_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _user_list (let (r) (dotimes (i n) (push (instance dms_msgs::DMSFidUserInfo :init) r)) r))
     (dolist (elem- _user_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; dms_msgs/UserListSyncTypeEnum _user_list_sync_type
     (send _user_list_sync_type :deserialize buf ptr-) (incf ptr- (send _user_list_sync_type :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFidUserListInfo :md5sum-) "828fbff18db307cd0d669e5661bfa95a")
(setf (get dms_msgs::DMSFidUserListInfo :datatype-) "dms_msgs/DMSFidUserListInfo")
(setf (get dms_msgs::DMSFidUserListInfo :definition-)
      "uint8 USER_LIST_INFO_UN_AVAILABLE = 0
uint8 USER_LIST_INFO_AVAILABLE = 1
uint8 available
dms_msgs/DMSFidUserInfo[] user_list
dms_msgs/UserListSyncTypeEnum user_list_sync_type

================================================================================
MSG: dms_msgs/DMSFidUserInfo
string user_id
string create_time

================================================================================
MSG: dms_msgs/UserListSyncTypeEnum
uint8 NO_ACTION = 0
uint8 USER_LIST_SYNC_SUCCESS = 1
uint8 USER_LIST_SYNC_FAIL = 2
uint8 value

")



(provide :dms_msgs/DMSFidUserListInfo "828fbff18db307cd0d669e5661bfa95a")


