;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::AebCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'AebCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::AEBCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::AEBCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude AebCommandData.msg.html


(defclass endpoint_msgs::AebCommandData
  :super ros::object
  :slots (_timestamp_us _awb_request _dcl_req_state _dcl_req_command _hba_request_level _prefill_request ))

(defmethod endpoint_msgs::AebCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:awb_request __awb_request) (instance endpoint_msgs::AebBrkJerkReq :init))
    ((:dcl_req_state __dcl_req_state) (instance endpoint_msgs::AebDclReqSts :init))
    ((:dcl_req_command __dcl_req_command) 0.0)
    ((:hba_request_level __hba_request_level) (instance endpoint_msgs::AebHydBrkReq :init))
    ((:prefill_request __prefill_request) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _awb_request __awb_request)
   (setq _dcl_req_state __dcl_req_state)
   (setq _dcl_req_command (float __dcl_req_command))
   (setq _hba_request_level __hba_request_level)
   (setq _prefill_request __prefill_request)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:awb_request
   (&rest __awb_request)
   (if (keywordp (car __awb_request))
       (send* _awb_request __awb_request)
     (progn
       (if __awb_request (setq _awb_request (car __awb_request)))
       _awb_request)))
  (:dcl_req_state
   (&rest __dcl_req_state)
   (if (keywordp (car __dcl_req_state))
       (send* _dcl_req_state __dcl_req_state)
     (progn
       (if __dcl_req_state (setq _dcl_req_state (car __dcl_req_state)))
       _dcl_req_state)))
  (:dcl_req_command
   (&optional __dcl_req_command)
   (if __dcl_req_command (setq _dcl_req_command __dcl_req_command)) _dcl_req_command)
  (:hba_request_level
   (&rest __hba_request_level)
   (if (keywordp (car __hba_request_level))
       (send* _hba_request_level __hba_request_level)
     (progn
       (if __hba_request_level (setq _hba_request_level (car __hba_request_level)))
       _hba_request_level)))
  (:prefill_request
   (&optional (__prefill_request :null))
   (if (not (eq __prefill_request :null)) (setq _prefill_request __prefill_request)) _prefill_request)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/AebBrkJerkReq _awb_request
    (send _awb_request :serialization-length)
    ;; endpoint_msgs/AebDclReqSts _dcl_req_state
    (send _dcl_req_state :serialization-length)
    ;; float32 _dcl_req_command
    4
    ;; endpoint_msgs/AebHydBrkReq _hba_request_level
    (send _hba_request_level :serialization-length)
    ;; bool _prefill_request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; endpoint_msgs/AebBrkJerkReq _awb_request
       (send _awb_request :serialize s)
     ;; endpoint_msgs/AebDclReqSts _dcl_req_state
       (send _dcl_req_state :serialize s)
     ;; float32 _dcl_req_command
       (sys::poke _dcl_req_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/AebHydBrkReq _hba_request_level
       (send _hba_request_level :serialize s)
     ;; bool _prefill_request
       (if _prefill_request (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; endpoint_msgs/AebBrkJerkReq _awb_request
     (send _awb_request :deserialize buf ptr-) (incf ptr- (send _awb_request :serialization-length))
   ;; endpoint_msgs/AebDclReqSts _dcl_req_state
     (send _dcl_req_state :deserialize buf ptr-) (incf ptr- (send _dcl_req_state :serialization-length))
   ;; float32 _dcl_req_command
     (setq _dcl_req_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/AebHydBrkReq _hba_request_level
     (send _hba_request_level :deserialize buf ptr-) (incf ptr- (send _hba_request_level :serialization-length))
   ;; bool _prefill_request
     (setq _prefill_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::AebCommandData :md5sum-) "2664fcc8b4bedb987279119824de4255")
(setf (get endpoint_msgs::AebCommandData :datatype-) "endpoint_msgs/AebCommandData")
(setf (get endpoint_msgs::AebCommandData :definition-)
      "uint64 timestamp_us
endpoint_msgs/AebBrkJerkReq awb_request
endpoint_msgs/AebDclReqSts dcl_req_state
float32 dcl_req_command
endpoint_msgs/AebHydBrkReq hba_request_level
bool prefill_request

================================================================================
MSG: endpoint_msgs/AebBrkJerkReq
uint8 AEB_BRAKE_JERK_NO_REQUEST = 0
uint8 AEB_BRAKE_JERK_LOW_LEVEL = 1
uint8 AEB_BRAKE_JERK_MID_LEVEL = 2
uint8 AEB_BRAKE_JERK_HIGH_LEVEL = 3
uint8 AEV_BRAKE_JERK_RESERVED = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AebDclReqSts
uint8 AEB_DLC_STATE_NO_REQUEST = 0
uint8 AEB_DLC_STATE_DECELERATION = 1
uint8 AEB_DLC_STATE_RESERVED = 2
uint8 value

================================================================================
MSG: endpoint_msgs/AebHydBrkReq
uint8 AEB_HYD_BRAKE_NO_REQUEST = 0
uint8 AEB_HYD_BRAKE_LOW_LEVEL = 1
uint8 AEB_HYD_BRAKE_MID_LEVEL = 2
uint8 AEB_HYD_BRAKE_HIGH_LEVEL = 3
uint8 AEB_HYD_BRAKE_RESERVED1 = 4
uint8 AEB_HYD_BRAKE_RESERVED2 = 5
uint8 AEB_HYD_BRAKE_RESERVED3 = 6
uint8 AEB_HYD_BRAKE_RESERVED4 = 7
uint8 value

")



(provide :endpoint_msgs/AebCommandData "2664fcc8b4bedb987279119824de4255")


