;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidRegInfo)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidRegInfo (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDREGINFO")
  (make-package "DMS_MSGS::DMSFIDREGINFO"))

(in-package "ROS")
;;//! \htmlinclude DMSFidRegInfo.msg.html


(intern "*REG_INFO_UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDREGINFO"))
(shadow '*REG_INFO_UN_AVAILABLE* (find-package "DMS_MSGS::DMSFIDREGINFO"))
(defconstant dms_msgs::DMSFidRegInfo::*REG_INFO_UN_AVAILABLE* 0)
(intern "*REG_INFO_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDREGINFO"))
(shadow '*REG_INFO_AVAILABLE* (find-package "DMS_MSGS::DMSFIDREGINFO"))
(defconstant dms_msgs::DMSFidRegInfo::*REG_INFO_AVAILABLE* 1)

(defun dms_msgs::DMSFidRegInfo-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFidRegInfo::*REG_INFO_UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFidRegInfo::*REG_INFO_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFidRegInfo
  :super ros::object
  :slots (_available _user_id _register_timestamp_us _register_cancel_timestamp_us _reg_response _cancel_response _reg_status _reg_error ))

(defmethod dms_msgs::DMSFidRegInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:user_id __user_id) "")
    ((:register_timestamp_us __register_timestamp_us) 0)
    ((:register_cancel_timestamp_us __register_cancel_timestamp_us) 0)
    ((:reg_response __reg_response) (instance dms_msgs::RegResponseTypeEnum :init))
    ((:cancel_response __cancel_response) (instance dms_msgs::CancelResponseTypeEnum :init))
    ((:reg_status __reg_status) (instance dms_msgs::RegStatusTypeEnum :init))
    ((:reg_error __reg_error) (instance dms_msgs::RegErrorTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _user_id (string __user_id))
   (setq _register_timestamp_us (round __register_timestamp_us))
   (setq _register_cancel_timestamp_us (round __register_cancel_timestamp_us))
   (setq _reg_response __reg_response)
   (setq _cancel_response __cancel_response)
   (setq _reg_status __reg_status)
   (setq _reg_error __reg_error)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:register_timestamp_us
   (&optional __register_timestamp_us)
   (if __register_timestamp_us (setq _register_timestamp_us __register_timestamp_us)) _register_timestamp_us)
  (:register_cancel_timestamp_us
   (&optional __register_cancel_timestamp_us)
   (if __register_cancel_timestamp_us (setq _register_cancel_timestamp_us __register_cancel_timestamp_us)) _register_cancel_timestamp_us)
  (:reg_response
   (&rest __reg_response)
   (if (keywordp (car __reg_response))
       (send* _reg_response __reg_response)
     (progn
       (if __reg_response (setq _reg_response (car __reg_response)))
       _reg_response)))
  (:cancel_response
   (&rest __cancel_response)
   (if (keywordp (car __cancel_response))
       (send* _cancel_response __cancel_response)
     (progn
       (if __cancel_response (setq _cancel_response (car __cancel_response)))
       _cancel_response)))
  (:reg_status
   (&rest __reg_status)
   (if (keywordp (car __reg_status))
       (send* _reg_status __reg_status)
     (progn
       (if __reg_status (setq _reg_status (car __reg_status)))
       _reg_status)))
  (:reg_error
   (&rest __reg_error)
   (if (keywordp (car __reg_error))
       (send* _reg_error __reg_error)
     (progn
       (if __reg_error (setq _reg_error (car __reg_error)))
       _reg_error)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; string _user_id
    4 (length _user_id)
    ;; uint64 _register_timestamp_us
    8
    ;; uint64 _register_cancel_timestamp_us
    8
    ;; dms_msgs/RegResponseTypeEnum _reg_response
    (send _reg_response :serialization-length)
    ;; dms_msgs/CancelResponseTypeEnum _cancel_response
    (send _cancel_response :serialization-length)
    ;; dms_msgs/RegStatusTypeEnum _reg_status
    (send _reg_status :serialization-length)
    ;; dms_msgs/RegErrorTypeEnum _reg_error
    (send _reg_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; string _user_id
       (write-long (length _user_id) s) (princ _user_id s)
     ;; uint64 _register_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _register_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _register_timestamp_us) (= (length (_register_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_register_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_register_timestamp_us . bv) 1) -1) s))
             ((and (class _register_timestamp_us) (= (length (_register_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_register_timestamp_us . bv) 0) s)
              (write-long (if (>= _register_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _register_timestamp_us s)(write-long (if (>= _register_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _register_cancel_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _register_cancel_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _register_cancel_timestamp_us) (= (length (_register_cancel_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_register_cancel_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_register_cancel_timestamp_us . bv) 1) -1) s))
             ((and (class _register_cancel_timestamp_us) (= (length (_register_cancel_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_register_cancel_timestamp_us . bv) 0) s)
              (write-long (if (>= _register_cancel_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _register_cancel_timestamp_us s)(write-long (if (>= _register_cancel_timestamp_us 0) 0 #xffffffff) s)))
     ;; dms_msgs/RegResponseTypeEnum _reg_response
       (send _reg_response :serialize s)
     ;; dms_msgs/CancelResponseTypeEnum _cancel_response
       (send _cancel_response :serialize s)
     ;; dms_msgs/RegStatusTypeEnum _reg_status
       (send _reg_status :serialize s)
     ;; dms_msgs/RegErrorTypeEnum _reg_error
       (send _reg_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _register_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _register_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _register_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _register_cancel_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _register_cancel_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _register_cancel_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; dms_msgs/RegResponseTypeEnum _reg_response
     (send _reg_response :deserialize buf ptr-) (incf ptr- (send _reg_response :serialization-length))
   ;; dms_msgs/CancelResponseTypeEnum _cancel_response
     (send _cancel_response :deserialize buf ptr-) (incf ptr- (send _cancel_response :serialization-length))
   ;; dms_msgs/RegStatusTypeEnum _reg_status
     (send _reg_status :deserialize buf ptr-) (incf ptr- (send _reg_status :serialization-length))
   ;; dms_msgs/RegErrorTypeEnum _reg_error
     (send _reg_error :deserialize buf ptr-) (incf ptr- (send _reg_error :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFidRegInfo :md5sum-) "ff9a6215410a19af27947d0bf3002983")
(setf (get dms_msgs::DMSFidRegInfo :datatype-) "dms_msgs/DMSFidRegInfo")
(setf (get dms_msgs::DMSFidRegInfo :definition-)
      "uint8 REG_INFO_UN_AVAILABLE = 0
uint8 REG_INFO_AVAILABLE = 1
uint8 available
string user_id
uint64 register_timestamp_us
uint64 register_cancel_timestamp_us
dms_msgs/RegResponseTypeEnum reg_response
dms_msgs/CancelResponseTypeEnum cancel_response
dms_msgs/RegStatusTypeEnum reg_status
dms_msgs/RegErrorTypeEnum reg_error

================================================================================
MSG: dms_msgs/RegResponseTypeEnum
uint8 RESPOND_FAIL = 0
uint8 RESPOND_SUCCESS = 1
uint8 RESERVED = 2
uint8 RESERVED1 = 3
uint8 value

================================================================================
MSG: dms_msgs/CancelResponseTypeEnum
uint8 NO_ACTION = 0
uint8 CANCEL_SUCCESS = 1
uint8 CANCEL_FAIL = 2
uint8 RESERVED = 3
uint8 RESERVED1 = 4
uint8 value

================================================================================
MSG: dms_msgs/RegStatusTypeEnum
uint8 NO_ACTION = 0
uint8 REGISTERING = 1
uint8 REGISTER_SUCCESS = 2
uint8 REGISTER_FAIL = 3
uint8 RESERVED = 4
uint8 RESERVED1 = 5
uint8 value

================================================================================
MSG: dms_msgs/RegErrorTypeEnum
uint8 NO_ERROR = 0
uint8 CAMERA_ABNORMAL = 1
uint8 NO_FACE = 2
uint8 LOW_FACE_QUALITY = 3
uint8 FACE_NOT_ALIVE = 4
uint8 LARGE_HEAD_POSE = 5
uint8 ID_EXISTS = 6
uint8 FACE_WRITTEN_FAIL = 7
uint8 TIME_OUT = 8
uint8 FACE_EXISTS = 9
uint8 SYSTEM_ERROR = 10
uint8 RESERVED = 11
uint8 RESERVED1 = 12
uint8 RESERVED2 = 13
uint8 value

")



(provide :dms_msgs/DMSFidRegInfo "ff9a6215410a19af27947d0bf3002983")


