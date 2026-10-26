;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::UserListSyncTypeEnum)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'UserListSyncTypeEnum (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM")
  (make-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude UserListSyncTypeEnum.msg.html


(intern "*NO_ACTION*" (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))
(shadow '*NO_ACTION* (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))
(defconstant dms_msgs::UserListSyncTypeEnum::*NO_ACTION* 0)
(intern "*USER_LIST_SYNC_SUCCESS*" (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))
(shadow '*USER_LIST_SYNC_SUCCESS* (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))
(defconstant dms_msgs::UserListSyncTypeEnum::*USER_LIST_SYNC_SUCCESS* 1)
(intern "*USER_LIST_SYNC_FAIL*" (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))
(shadow '*USER_LIST_SYNC_FAIL* (find-package "DMS_MSGS::USERLISTSYNCTYPEENUM"))
(defconstant dms_msgs::UserListSyncTypeEnum::*USER_LIST_SYNC_FAIL* 2)

(defun dms_msgs::UserListSyncTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::UserListSyncTypeEnum::*NO_ACTION*)
        ((= const 1) 'dms_msgs::UserListSyncTypeEnum::*USER_LIST_SYNC_SUCCESS*)
        ((= const 2) 'dms_msgs::UserListSyncTypeEnum::*USER_LIST_SYNC_FAIL*)
        (t nil)))

(defclass dms_msgs::UserListSyncTypeEnum
  :super ros::object
  :slots (_value ))

(defmethod dms_msgs::UserListSyncTypeEnum
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dms_msgs::UserListSyncTypeEnum :md5sum-) "b6b6d1fbf02fda226a17a3fe3119e577")
(setf (get dms_msgs::UserListSyncTypeEnum :datatype-) "dms_msgs/UserListSyncTypeEnum")
(setf (get dms_msgs::UserListSyncTypeEnum :definition-)
      "uint8 NO_ACTION = 0
uint8 USER_LIST_SYNC_SUCCESS = 1
uint8 USER_LIST_SYNC_FAIL = 2
uint8 value

")



(provide :dms_msgs/UserListSyncTypeEnum "b6b6d1fbf02fda226a17a3fe3119e577")


