;; Auto-generated. Do not edit!


(when (boundp 'dms_msgs::DMSEventInfo)
  (if (not (find-package "DMS_MSGS"))
    (make-package "DMS_MSGS"))
  (shadow 'DMSEventInfo (find-package "DMS_MSGS")))
(unless (find-package "DMS_MSGS::DMSEVENTINFO")
  (make-package "DMS_MSGS::DMSEVENTINFO"))

(in-package "ROS")
;;//! \htmlinclude DMSEventInfo.msg.html


(intern "*UN_AVAILABLE*" (find-package "DMS_MSGS::DMSEVENTINFO"))
(shadow '*UN_AVAILABLE* (find-package "DMS_MSGS::DMSEVENTINFO"))
(defconstant dms_msgs::DMSEventInfo::*UN_AVAILABLE* 0)
(intern "*AVAILABLE*" (find-package "DMS_MSGS::DMSEVENTINFO"))
(shadow '*AVAILABLE* (find-package "DMS_MSGS::DMSEVENTINFO"))
(defconstant dms_msgs::DMSEventInfo::*AVAILABLE* 1)

(defun dms_msgs::DMSEventInfo-to-symbol (const)
  (cond
        ((= const 0) 'dms_msgs::DMSEventInfo::*UN_AVAILABLE*)
        ((= const 1) 'dms_msgs::DMSEventInfo::*AVAILABLE*)
        (t nil)))

(defclass dms_msgs::DMSEventInfo
  :super ros::object
  :slots (_available _event_type _time_start _time_end _event_desc _event_id ))

(defmethod dms_msgs::DMSEventInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:event_type __event_type) (instance dms_msgs::DMSEventTypeEnum :init))
    ((:time_start __time_start) 0)
    ((:time_end __time_end) 0)
    ((:event_desc __event_desc) "")
    ((:event_id __event_id) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _event_type __event_type)
   (setq _time_start (round __time_start))
   (setq _time_end (round __time_end))
   (setq _event_desc (string __event_desc))
   (setq _event_id (string __event_id))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:event_type
   (&rest __event_type)
   (if (keywordp (car __event_type))
       (send* _event_type __event_type)
     (progn
       (if __event_type (setq _event_type (car __event_type)))
       _event_type)))
  (:time_start
   (&optional __time_start)
   (if __time_start (setq _time_start __time_start)) _time_start)
  (:time_end
   (&optional __time_end)
   (if __time_end (setq _time_end __time_end)) _time_end)
  (:event_desc
   (&optional __event_desc)
   (if __event_desc (setq _event_desc __event_desc)) _event_desc)
  (:event_id
   (&optional __event_id)
   (if __event_id (setq _event_id __event_id)) _event_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; dms_msgs/DMSEventTypeEnum _event_type
    (send _event_type :serialization-length)
    ;; uint64 _time_start
    8
    ;; uint64 _time_end
    8
    ;; string _event_desc
    4 (length _event_desc)
    ;; string _event_id
    4 (length _event_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; dms_msgs/DMSEventTypeEnum _event_type
       (send _event_type :serialize s)
     ;; uint64 _time_start
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_start (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_start) (= (length (_time_start . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_start . bv) 0) 0) s)
              (write-long (ash (elt (_time_start . bv) 1) -1) s))
             ((and (class _time_start) (= (length (_time_start . bv)) 1)) ;; big1
              (write-long (elt (_time_start . bv) 0) s)
              (write-long (if (>= _time_start 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_start s)(write-long (if (>= _time_start 0) 0 #xffffffff) s)))
     ;; uint64 _time_end
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_end (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_end) (= (length (_time_end . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_end . bv) 0) 0) s)
              (write-long (ash (elt (_time_end . bv) 1) -1) s))
             ((and (class _time_end) (= (length (_time_end . bv)) 1)) ;; big1
              (write-long (elt (_time_end . bv) 0) s)
              (write-long (if (>= _time_end 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_end s)(write-long (if (>= _time_end 0) 0 #xffffffff) s)))
     ;; string _event_desc
       (write-long (length _event_desc) s) (princ _event_desc s)
     ;; string _event_id
       (write-long (length _event_id) s) (princ _event_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; dms_msgs/DMSEventTypeEnum _event_type
     (send _event_type :deserialize buf ptr-) (incf ptr- (send _event_type :serialization-length))
   ;; uint64 _time_start
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_start (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_start (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _time_end
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_end (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_end (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _event_desc
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event_desc (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _event_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _event_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get dms_msgs::DMSEventInfo :md5sum-) "c277d0f695293a1e0a5af5bc5bd13fc4")
(setf (get dms_msgs::DMSEventInfo :datatype-) "dms_msgs/DMSEventInfo")
(setf (get dms_msgs::DMSEventInfo :definition-)
      "uint8 UN_AVAILABLE = 0
uint8 AVAILABLE = 1
uint8 available
dms_msgs/DMSEventTypeEnum event_type
uint64 time_start
uint64 time_end
string event_desc
string event_id

================================================================================
MSG: dms_msgs/DMSEventTypeEnum
uint8 DMS_EVENT_UNKNOWN = 0
uint8 DMS_EVENT_FEATURE_EXTRACT_SUCCESS = 1
uint8 DMS_EVENT_FEATURE_EXTRACT_FAIL = 2
uint8 DMS_EVENT_WARNING_EYE_CLOSE = 100
uint8 DMS_EVENT_WARNING_YAWN = 101
uint8 DMS_EVENT_WARNING_DRINK = 102
uint8 DMS_EVENT_WARNING_PHONE_CALL = 103
uint8 DMS_EVENT_WARNING_SMOKE = 104
uint8 DMS_EVENT_WARNING_DROWSINESS = 105
uint8 DMS_EVENT_DISTRACTION = 106
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_SUCCESS = 107
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_FAIL = 108
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE1_SUCCESS = 109
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_STRICT_MODE2_SUCCESS = 110
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_LOOSE_MODE_SUCCESS = 111
uint8 DMS_EVENT_EXTRINSIC_CALIBRATION_BACKUP_MODE_SUCCESS = 112
uint8 DMS_EVENT_HEAD_SHAKE = 109
uint8 DMS_EVENT_HEAD_NOD = 110
uint8 DMS_EVENT_MUTE = 111
uint8 DMS_EVENT_RESERVED = 112
uint8 DMS_EVENT_RESERVED1 = 113
uint8 DMS_EVENT_RESERVED2 = 114
uint8 DMS_EVENT_RESERVED3 = 115
uint8 DMS_EVENT_RESERVED4 = 116
uint8 value

")



(provide :dms_msgs/DMSEventInfo "c277d0f695293a1e0a5af5bc5bd13fc4")


