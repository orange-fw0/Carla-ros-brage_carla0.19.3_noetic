;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TOSResponse)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TOSResponse (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TOSRESPONSE")
  (make-package "TOS_MSGS::TOSRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude TOSResponse.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::TOSResponse
  :super ros::object
  :slots (_header _decision _candidate ))

(defmethod tos_msgs::TOSResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:decision __decision) (instance tos_msgs::TOSResponseDecisionEnum :init))
    ((:candidate __candidate) (instance tos_msgs::TOSResponseCandidate :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _decision __decision)
   (setq _candidate __candidate)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:decision
   (&rest __decision)
   (if (keywordp (car __decision))
       (send* _decision __decision)
     (progn
       (if __decision (setq _decision (car __decision)))
       _decision)))
  (:candidate
   (&rest __candidate)
   (if (keywordp (car __candidate))
       (send* _candidate __candidate)
     (progn
       (if __candidate (setq _candidate (car __candidate)))
       _candidate)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; tos_msgs/TOSResponseDecisionEnum _decision
    (send _decision :serialization-length)
    ;; tos_msgs/TOSResponseCandidate _candidate
    (send _candidate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; tos_msgs/TOSResponseDecisionEnum _decision
       (send _decision :serialize s)
     ;; tos_msgs/TOSResponseCandidate _candidate
       (send _candidate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; tos_msgs/TOSResponseDecisionEnum _decision
     (send _decision :deserialize buf ptr-) (incf ptr- (send _decision :serialization-length))
   ;; tos_msgs/TOSResponseCandidate _candidate
     (send _candidate :deserialize buf ptr-) (incf ptr- (send _candidate :serialization-length))
   ;;
   self)
  )

(setf (get tos_msgs::TOSResponse :md5sum-) "7a4d73c8f2338d30ec9e7e8bed564936")
(setf (get tos_msgs::TOSResponse :datatype-) "tos_msgs/TOSResponse")
(setf (get tos_msgs::TOSResponse :definition-)
      "std_msgs/Header header
tos_msgs/TOSResponseDecisionEnum decision
tos_msgs/TOSResponseCandidate candidate

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

================================================================================
MSG: tos_msgs/TOSResponseDecisionEnum
uint8 UNKNOWN = 0
uint8 YES = 1
uint8 NO = 2
uint8 value

================================================================================
MSG: tos_msgs/TOSResponseCandidate
uint32 id

")



(provide :tos_msgs/TOSResponse "7a4d73c8f2338d30ec9e7e8bed564936")


