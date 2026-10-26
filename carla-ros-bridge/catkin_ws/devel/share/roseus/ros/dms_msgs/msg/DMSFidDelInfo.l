;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidDelInfo)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidDelInfo (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDDELINFO")
  (make-package "DMS_MSGS::DMSFIDDELINFO"))

(in-package "ROS")
;;//! \htmlinclude DMSFidDelInfo.msg.html


(intern "*DEL_INFO_UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDDELINFO"))
(shadow '*DEL_INFO_UN_AVAILABLE* (find-package "DMS_MSGS::DMSFIDDELINFO"))
(defconstant dms_msgs::DMSFidDelInfo::*DEL_INFO_UN_AVAILABLE* 0)
(intern "*DEL_INFO_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDDELINFO"))
(shadow '*DEL_INFO_AVAILABLE* (find-package "DMS_MSGS::DMSFIDDELINFO"))
(defconstant dms_msgs::DMSFidDelInfo::*DEL_INFO_AVAILABLE* 1)

(defun dms_msgs::DMSFidDelInfo-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFidDelInfo::*DEL_INFO_UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFidDelInfo::*DEL_INFO_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFidDelInfo
  :super ros::object
  :slots (_available _user_id _delete_timestamp_us _del_response _del_status _del_error ))

(defmethod dms_msgs::DMSFidDelInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:user_id __user_id) "")
    ((:delete_timestamp_us __delete_timestamp_us) 0)
    ((:del_response __del_response) (instance dms_msgs::DelResponseTypeEnum :init))
    ((:del_status __del_status) (instance dms_msgs::DelStatusTypeEnum :init))
    ((:del_error __del_error) (instance dms_msgs::DelErrorTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _user_id (string __user_id))
   (setq _delete_timestamp_us (round __delete_timestamp_us))
   (setq _del_response __del_response)
   (setq _del_status __del_status)
   (setq _del_error __del_error)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:delete_timestamp_us
   (&optional __delete_timestamp_us)
   (if __delete_timestamp_us (setq _delete_timestamp_us __delete_timestamp_us)) _delete_timestamp_us)
  (:del_response
   (&rest __del_response)
   (if (keywordp (car __del_response))
       (send* _del_response __del_response)
     (progn
       (if __del_response (setq _del_response (car __del_response)))
       _del_response)))
  (:del_status
   (&rest __del_status)
   (if (keywordp (car __del_status))
       (send* _del_status __del_status)
     (progn
       (if __del_status (setq _del_status (car __del_status)))
       _del_status)))
  (:del_error
   (&rest __del_error)
   (if (keywordp (car __del_error))
       (send* _del_error __del_error)
     (progn
       (if __del_error (setq _del_error (car __del_error)))
       _del_error)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; string _user_id
    4 (length _user_id)
    ;; uint64 _delete_timestamp_us
    8
    ;; dms_msgs/DelResponseTypeEnum _del_response
    (send _del_response :serialization-length)
    ;; dms_msgs/DelStatusTypeEnum _del_status
    (send _del_status :serialization-length)
    ;; dms_msgs/DelErrorTypeEnum _del_error
    (send _del_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; string _user_id
       (write-long (length _user_id) s) (princ _user_id s)
     ;; uint64 _delete_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _delete_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _delete_timestamp_us) (= (length (_delete_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_delete_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_delete_timestamp_us . bv) 1) -1) s))
             ((and (class _delete_timestamp_us) (= (length (_delete_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_delete_timestamp_us . bv) 0) s)
              (write-long (if (>= _delete_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _delete_timestamp_us s)(write-long (if (>= _delete_timestamp_us 0) 0 #xffffffff) s)))
     ;; dms_msgs/DelResponseTypeEnum _del_response
       (send _del_response :serialize s)
     ;; dms_msgs/DelStatusTypeEnum _del_status
       (send _del_status :serialize s)
     ;; dms_msgs/DelErrorTypeEnum _del_error
       (send _del_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _delete_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _delete_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _delete_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; dms_msgs/DelResponseTypeEnum _del_response
     (send _del_response :deserialize buf ptr-) (incf ptr- (send _del_response :serialization-length))
   ;; dms_msgs/DelStatusTypeEnum _del_status
     (send _del_status :deserialize buf ptr-) (incf ptr- (send _del_status :serialization-length))
   ;; dms_msgs/DelErrorTypeEnum _del_error
     (send _del_error :deserialize buf ptr-) (incf ptr- (send _del_error :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFidDelInfo :md5sum-) "63889ef8b3b279e0186cff225e9a6eb2")
(setf (get dms_msgs::DMSFidDelInfo :datatype-) "dms_msgs/DMSFidDelInfo")
(setf (get dms_msgs::DMSFidDelInfo :definition-)
      "uint8 DEL_INFO_UN_AVAILABLE = 0
uint8 DEL_INFO_AVAILABLE = 1
uint8 available
string user_id
uint64 delete_timestamp_us
dms_msgs/DelResponseTypeEnum del_response
dms_msgs/DelStatusTypeEnum del_status
dms_msgs/DelErrorTypeEnum del_error

================================================================================
MSG: dms_msgs/DelResponseTypeEnum
uint8 NO_ACTION = 0
uint8 RESPOND_SUCCESS = 1
uint8 RESPOND_FAIL = 2
uint8 RESERVED = 3
uint8 RESERVED1 = 4
uint8 value

================================================================================
MSG: dms_msgs/DelStatusTypeEnum
uint8 DEL_FAIL = 0
uint8 DELETING = 1
uint8 DEL_SUCCESS = 2
uint8 RESERVED = 3
uint8 RESERVED1 = 4
uint8 value

================================================================================
MSG: dms_msgs/DelErrorTypeEnum
uint8 NO_ERROR = 0
uint8 NO_USER = 1
uint8 TIME_OUT = 2
uint8 SYSTEM_ERROR = 3
uint8 RESERVED = 4
uint8 RESERVED1 = 5
uint8 RESERVED2 = 6
uint8 RESERVED3 = 7
uint8 value

")



(provide :dms_msgs/DMSFidDelInfo "63889ef8b3b279e0186cff225e9a6eb2")


