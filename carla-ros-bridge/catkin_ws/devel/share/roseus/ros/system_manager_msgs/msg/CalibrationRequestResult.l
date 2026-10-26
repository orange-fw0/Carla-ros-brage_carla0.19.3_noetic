;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::CalibrationRequestResult)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'CalibrationRequestResult (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT")
  (make-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))

(in-package "ROS")
;;//! \htmlinclude CalibrationRequestResult.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*SUCCESS*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(shadow '*SUCCESS* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(defconstant system_manager_msgs::CalibrationRequestResult::*SUCCESS* 0)
(intern "*PENDING*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(shadow '*PENDING* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(defconstant system_manager_msgs::CalibrationRequestResult::*PENDING* 1)
(intern "*FAILED*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(shadow '*FAILED* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(defconstant system_manager_msgs::CalibrationRequestResult::*FAILED* 2)
(intern "*TIMEOUT*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(shadow '*TIMEOUT* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(defconstant system_manager_msgs::CalibrationRequestResult::*TIMEOUT* 3)
(intern "*INVALID_STATE*" (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(shadow '*INVALID_STATE* (find-package "SYSTEM_MANAGER_MSGS::CALIBRATIONREQUESTRESULT"))
(defconstant system_manager_msgs::CalibrationRequestResult::*INVALID_STATE* 4)

(defun system_manager_msgs::CalibrationRequestResult-to-symbol (const)
  (cond
        ((= const 0) 'system_manager_msgs::CalibrationRequestResult::*SUCCESS*)
        ((= const 1) 'system_manager_msgs::CalibrationRequestResult::*PENDING*)
        ((= const 2) 'system_manager_msgs::CalibrationRequestResult::*FAILED*)
        ((= const 3) 'system_manager_msgs::CalibrationRequestResult::*TIMEOUT*)
        ((= const 4) 'system_manager_msgs::CalibrationRequestResult::*INVALID_STATE*)
        (t nil)))

(defclass system_manager_msgs::CalibrationRequestResult
  :super ros::object
  :slots (_header _source _id _code _message ))

(defmethod system_manager_msgs::CalibrationRequestResult
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:source __source) "")
    ((:id __id) 0)
    ((:code __code) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _source (string __source))
   (setq _id (round __id))
   (setq _code (round __code))
   (setq _message (string __message))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _source
    4 (length _source)
    ;; uint32 _id
    4
    ;; uint8 _code
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _code
       (write-byte _code s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get system_manager_msgs::CalibrationRequestResult :md5sum-) "7da5e4761467ac05af95f593ddf2aefe")
(setf (get system_manager_msgs::CalibrationRequestResult :datatype-) "system_manager_msgs/CalibrationRequestResult")
(setf (get system_manager_msgs::CalibrationRequestResult :definition-)
      "uint8 SUCCESS = 0
uint8 PENDING = 1
uint8 FAILED = 2
uint8 TIMEOUT = 3
uint8 INVALID_STATE = 4
std_msgs/Header header
string source
uint32 id
uint8 code
string message

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :system_manager_msgs/CalibrationRequestResult "7da5e4761467ac05af95f593ddf2aefe")


