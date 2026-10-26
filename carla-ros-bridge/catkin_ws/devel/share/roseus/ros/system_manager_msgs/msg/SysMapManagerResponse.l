;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysMapManagerResponse)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysMapManagerResponse (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSMAPMANAGERRESPONSE")
  (make-package "SYSTEM_MANAGER_MSGS::SYSMAPMANAGERRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude SysMapManagerResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*JSON*" (find-package "SYSTEM_MANAGER_MSGS::SYSMAPMANAGERRESPONSE"))
(shadow '*JSON* (find-package "SYSTEM_MANAGER_MSGS::SYSMAPMANAGERRESPONSE"))
(defconstant system_manager_msgs::SysMapManagerResponse::*JSON* 1)
(intern "*PROTOBUF*" (find-package "SYSTEM_MANAGER_MSGS::SYSMAPMANAGERRESPONSE"))
(shadow '*PROTOBUF* (find-package "SYSTEM_MANAGER_MSGS::SYSMAPMANAGERRESPONSE"))
(defconstant system_manager_msgs::SysMapManagerResponse::*PROTOBUF* 2)

(defun system_manager_msgs::SysMapManagerResponse-to-symbol (const)
  (cond
        ((= const 1) 'system_manager_msgs::SysMapManagerResponse::*JSON*)
        ((= const 2) 'system_manager_msgs::SysMapManagerResponse::*PROTOBUF*)
        (t nil)))

(defclass system_manager_msgs::SysMapManagerResponse
  :super ros::object
  :slots (_header _request_seq _route_response _type ))

(defmethod system_manager_msgs::SysMapManagerResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:request_seq __request_seq) 0)
    ((:route_response __route_response) "")
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _request_seq (round __request_seq))
   (setq _route_response (string __route_response))
   (setq _type (round __type))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:request_seq
   (&optional __request_seq)
   (if __request_seq (setq _request_seq __request_seq)) _request_seq)
  (:route_response
   (&optional __route_response)
   (if __route_response (setq _route_response __route_response)) _route_response)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _request_seq
    4
    ;; string _route_response
    4 (length _route_response)
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _request_seq
       (write-long _request_seq s)
     ;; string _route_response
       (write-long (length _route_response) s) (princ _route_response s)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _request_seq
     (setq _request_seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _route_response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _route_response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get system_manager_msgs::SysMapManagerResponse :md5sum-) "ab10b4057ea956418d01f4bf70d1e3b9")
(setf (get system_manager_msgs::SysMapManagerResponse :datatype-) "system_manager_msgs/SysMapManagerResponse")
(setf (get system_manager_msgs::SysMapManagerResponse :definition-)
      "uint8 JSON = 1
uint8 PROTOBUF = 2
std_msgs/Header header
uint32 request_seq
string route_response
uint8 type

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



(provide :system_manager_msgs/SysMapManagerResponse "ab10b4057ea956418d01f4bf70d1e3b9")


