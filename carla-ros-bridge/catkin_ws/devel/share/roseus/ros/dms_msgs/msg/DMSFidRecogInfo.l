;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSFidRecogInfo)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSFidRecogInfo (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSFIDRECOGINFO")
  (make-package "DMS_MSGS::DMSFIDRECOGINFO"))

(in-package "ROS")
;;//! \htmlinclude DMSFidRecogInfo.msg.html


(intern "*REC_INFO_UN_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDRECOGINFO"))
(shadow '*REC_INFO_UN_AVAILABLE* (find-package "DMS_MSGS::DMSFIDRECOGINFO"))
(defconstant dms_msgs::DMSFidRecogInfo::*REC_INFO_UN_AVAILABLE* 0)
(intern "*REC_INFO_AVAILABLE*" (find-package "DMS_MSGS::DMSFIDRECOGINFO"))
(shadow '*REC_INFO_AVAILABLE* (find-package "DMS_MSGS::DMSFIDRECOGINFO"))
(defconstant dms_msgs::DMSFidRecogInfo::*REC_INFO_AVAILABLE* 1)

(defun dms_msgs::DMSFidRecogInfo-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSFidRecogInfo::*REC_INFO_UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSFidRecogInfo::*REC_INFO_AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSFidRecogInfo
  :super ros::object
  :slots (_available _user_id _recognize_timestamp_us _recognize_cancel_timestamp_us _recog_response _cancel_response _recog_status _recog_error ))

(defmethod dms_msgs::DMSFidRecogInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:user_id __user_id) "")
    ((:recognize_timestamp_us __recognize_timestamp_us) 0)
    ((:recognize_cancel_timestamp_us __recognize_cancel_timestamp_us) 0)
    ((:recog_response __recog_response) (instance dms_msgs::RecogResponseTypeEnum :init))
    ((:cancel_response __cancel_response) (instance dms_msgs::CancelResponseTypeEnum :init))
    ((:recog_status __recog_status) (instance dms_msgs::RecogStatusTypeEnum :init))
    ((:recog_error __recog_error) (instance dms_msgs::RecogErrorTypeEnum :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _user_id (string __user_id))
   (setq _recognize_timestamp_us (round __recognize_timestamp_us))
   (setq _recognize_cancel_timestamp_us (round __recognize_cancel_timestamp_us))
   (setq _recog_response __recog_response)
   (setq _cancel_response __cancel_response)
   (setq _recog_status __recog_status)
   (setq _recog_error __recog_error)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:user_id
   (&optional __user_id)
   (if __user_id (setq _user_id __user_id)) _user_id)
  (:recognize_timestamp_us
   (&optional __recognize_timestamp_us)
   (if __recognize_timestamp_us (setq _recognize_timestamp_us __recognize_timestamp_us)) _recognize_timestamp_us)
  (:recognize_cancel_timestamp_us
   (&optional __recognize_cancel_timestamp_us)
   (if __recognize_cancel_timestamp_us (setq _recognize_cancel_timestamp_us __recognize_cancel_timestamp_us)) _recognize_cancel_timestamp_us)
  (:recog_response
   (&rest __recog_response)
   (if (keywordp (car __recog_response))
       (send* _recog_response __recog_response)
     (progn
       (if __recog_response (setq _recog_response (car __recog_response)))
       _recog_response)))
  (:cancel_response
   (&rest __cancel_response)
   (if (keywordp (car __cancel_response))
       (send* _cancel_response __cancel_response)
     (progn
       (if __cancel_response (setq _cancel_response (car __cancel_response)))
       _cancel_response)))
  (:recog_status
   (&rest __recog_status)
   (if (keywordp (car __recog_status))
       (send* _recog_status __recog_status)
     (progn
       (if __recog_status (setq _recog_status (car __recog_status)))
       _recog_status)))
  (:recog_error
   (&rest __recog_error)
   (if (keywordp (car __recog_error))
       (send* _recog_error __recog_error)
     (progn
       (if __recog_error (setq _recog_error (car __recog_error)))
       _recog_error)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; string _user_id
    4 (length _user_id)
    ;; uint64 _recognize_timestamp_us
    8
    ;; uint64 _recognize_cancel_timestamp_us
    8
    ;; dms_msgs/RecogResponseTypeEnum _recog_response
    (send _recog_response :serialization-length)
    ;; dms_msgs/CancelResponseTypeEnum _cancel_response
    (send _cancel_response :serialization-length)
    ;; dms_msgs/RecogStatusTypeEnum _recog_status
    (send _recog_status :serialization-length)
    ;; dms_msgs/RecogErrorTypeEnum _recog_error
    (send _recog_error :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; string _user_id
       (write-long (length _user_id) s) (princ _user_id s)
     ;; uint64 _recognize_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _recognize_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _recognize_timestamp_us) (= (length (_recognize_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_recognize_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_recognize_timestamp_us . bv) 1) -1) s))
             ((and (class _recognize_timestamp_us) (= (length (_recognize_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_recognize_timestamp_us . bv) 0) s)
              (write-long (if (>= _recognize_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _recognize_timestamp_us s)(write-long (if (>= _recognize_timestamp_us 0) 0 #xffffffff) s)))
     ;; uint64 _recognize_cancel_timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _recognize_cancel_timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _recognize_cancel_timestamp_us) (= (length (_recognize_cancel_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_recognize_cancel_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_recognize_cancel_timestamp_us . bv) 1) -1) s))
             ((and (class _recognize_cancel_timestamp_us) (= (length (_recognize_cancel_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_recognize_cancel_timestamp_us . bv) 0) s)
              (write-long (if (>= _recognize_cancel_timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _recognize_cancel_timestamp_us s)(write-long (if (>= _recognize_cancel_timestamp_us 0) 0 #xffffffff) s)))
     ;; dms_msgs/RecogResponseTypeEnum _recog_response
       (send _recog_response :serialize s)
     ;; dms_msgs/CancelResponseTypeEnum _cancel_response
       (send _cancel_response :serialize s)
     ;; dms_msgs/RecogStatusTypeEnum _recog_status
       (send _recog_status :serialize s)
     ;; dms_msgs/RecogErrorTypeEnum _recog_error
       (send _recog_error :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _user_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _user_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint64 _recognize_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _recognize_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _recognize_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _recognize_cancel_timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _recognize_cancel_timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _recognize_cancel_timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; dms_msgs/RecogResponseTypeEnum _recog_response
     (send _recog_response :deserialize buf ptr-) (incf ptr- (send _recog_response :serialization-length))
   ;; dms_msgs/CancelResponseTypeEnum _cancel_response
     (send _cancel_response :deserialize buf ptr-) (incf ptr- (send _cancel_response :serialization-length))
   ;; dms_msgs/RecogStatusTypeEnum _recog_status
     (send _recog_status :deserialize buf ptr-) (incf ptr- (send _recog_status :serialization-length))
   ;; dms_msgs/RecogErrorTypeEnum _recog_error
     (send _recog_error :deserialize buf ptr-) (incf ptr- (send _recog_error :serialization-length))
   ;;
   self)
  )

(setf (get dms_msgs::DMSFidRecogInfo :md5sum-) "4912ec8eff8547313caab542459893d6")
(setf (get dms_msgs::DMSFidRecogInfo :datatype-) "dms_msgs/DMSFidRecogInfo")
(setf (get dms_msgs::DMSFidRecogInfo :definition-)
      "uint8 REC_INFO_UN_AVAILABLE = 0
uint8 REC_INFO_AVAILABLE = 1
uint8 available
string user_id
uint64 recognize_timestamp_us
uint64 recognize_cancel_timestamp_us
dms_msgs/RecogResponseTypeEnum recog_response
dms_msgs/CancelResponseTypeEnum cancel_response
dms_msgs/RecogStatusTypeEnum recog_status
dms_msgs/RecogErrorTypeEnum recog_error

================================================================================
MSG: dms_msgs/RecogResponseTypeEnum
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
MSG: dms_msgs/RecogStatusTypeEnum
uint8 NO_ACTION = 0
uint8 Recognizing = 1
uint8 Recog_SUCCESS = 2
uint8 Recog_FAIL = 3
uint8 RESERVED = 4
uint8 RESERVED1 = 5
uint8 value

================================================================================
MSG: dms_msgs/RecogErrorTypeEnum
uint8 NO_ERROR = 0
uint8 CAMERA_ABNORMAL = 1
uint8 NO_FACE = 2
uint8 LOW_FACE_QUALITY = 3
uint8 FACE_NOT_ALIVE = 4
uint8 USER_NOT_EXIST = 5
uint8 TIME_OUT = 6
uint8 EMPTY_USER_LIST = 7
uint8 SYSTEM_ERROR = 8
uint8 RESERVED = 9
uint8 RESERVED1 = 10
uint8 RESERVED2 = 11
uint8 value

")



(provide :dms_msgs/DMSFidRecogInfo "4912ec8eff8547313caab542459893d6")


