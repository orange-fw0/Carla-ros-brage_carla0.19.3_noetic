;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::PNPMapDownloadInfo)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'PNPMapDownloadInfo (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::PNPMAPDOWNLOADINFO")
  (make-package "PNP_MSGS::PNPMAPDOWNLOADINFO"))

(in-package "ROS")
;;//! \htmlinclude PNPMapDownloadInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pnp_msgs::PNPMapDownloadInfo
  :super ros::object
  :slots (_header _type _response_id _map_list _total_status _total_progress _error_msg ))

(defmethod pnp_msgs::PNPMapDownloadInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) (instance pnp_msgs::MapDownloadTypeEnum :init))
    ((:response_id __response_id) (instance pnp_msgs::MapDownloadResponseId :init))
    ((:map_list __map_list) ())
    ((:total_status __total_status) (instance pnp_msgs::DownloadStatusEnum :init))
    ((:total_progress __total_progress) 0)
    ((:error_msg __error_msg) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _type __type)
   (setq _response_id __response_id)
   (setq _map_list __map_list)
   (setq _total_status __total_status)
   (setq _total_progress (round __total_progress))
   (setq _error_msg (string __error_msg))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:response_id
   (&rest __response_id)
   (if (keywordp (car __response_id))
       (send* _response_id __response_id)
     (progn
       (if __response_id (setq _response_id (car __response_id)))
       _response_id)))
  (:map_list
   (&rest __map_list)
   (if (keywordp (car __map_list))
       (send* _map_list __map_list)
     (progn
       (if __map_list (setq _map_list (car __map_list)))
       _map_list)))
  (:total_status
   (&rest __total_status)
   (if (keywordp (car __total_status))
       (send* _total_status __total_status)
     (progn
       (if __total_status (setq _total_status (car __total_status)))
       _total_status)))
  (:total_progress
   (&optional __total_progress)
   (if __total_progress (setq _total_progress __total_progress)) _total_progress)
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; pnp_msgs/MapDownloadTypeEnum _type
    (send _type :serialization-length)
    ;; pnp_msgs/MapDownloadResponseId _response_id
    (send _response_id :serialization-length)
    ;; pnp_msgs/MapDownloadStatus[] _map_list
    (apply #'+ (send-all _map_list :serialization-length)) 4
    ;; pnp_msgs/DownloadStatusEnum _total_status
    (send _total_status :serialization-length)
    ;; uint8 _total_progress
    1
    ;; string _error_msg
    4 (length _error_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; pnp_msgs/MapDownloadTypeEnum _type
       (send _type :serialize s)
     ;; pnp_msgs/MapDownloadResponseId _response_id
       (send _response_id :serialize s)
     ;; pnp_msgs/MapDownloadStatus[] _map_list
     (write-long (length _map_list) s)
     (dolist (elem _map_list)
       (send elem :serialize s)
       )
     ;; pnp_msgs/DownloadStatusEnum _total_status
       (send _total_status :serialize s)
     ;; uint8 _total_progress
       (write-byte _total_progress s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; pnp_msgs/MapDownloadTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; pnp_msgs/MapDownloadResponseId _response_id
     (send _response_id :deserialize buf ptr-) (incf ptr- (send _response_id :serialization-length))
   ;; pnp_msgs/MapDownloadStatus[] _map_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _map_list (let (r) (dotimes (i n) (push (instance pnp_msgs::MapDownloadStatus :init) r)) r))
     (dolist (elem- _map_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pnp_msgs/DownloadStatusEnum _total_status
     (send _total_status :deserialize buf ptr-) (incf ptr- (send _total_status :serialization-length))
   ;; uint8 _total_progress
     (setq _total_progress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pnp_msgs::PNPMapDownloadInfo :md5sum-) "afbee8de108eeef3b359a44295c11441")
(setf (get pnp_msgs::PNPMapDownloadInfo :datatype-) "pnp_msgs/PNPMapDownloadInfo")
(setf (get pnp_msgs::PNPMapDownloadInfo :definition-)
      "std_msgs/Header header
pnp_msgs/MapDownloadTypeEnum type
pnp_msgs/MapDownloadResponseId response_id
pnp_msgs/MapDownloadStatus[] map_list
pnp_msgs/DownloadStatusEnum total_status
uint8 total_progress
string error_msg

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
MSG: pnp_msgs/MapDownloadTypeEnum
uint8 UNKNOWN = 0
uint8 CRUISING_SEARCH = 1
uint8 SD_DESTINATION_SEARCH = 2
uint8 SPECIFIC_ID = 3
uint8 RANGE_SEARCH = 4
uint8 status

================================================================================
MSG: pnp_msgs/MapDownloadResponseId
uint64 response_id
uint64 route_id

================================================================================
MSG: pnp_msgs/MapDownloadStatus
uint32 id
pnp_msgs/DownloadStatusEnum status
uint8 progress
string reserved

================================================================================
MSG: pnp_msgs/DownloadStatusEnum
uint8 UNKNOWN = 0
uint8 SUCCESS = 1
uint8 DOWNLOADING = 2
uint8 WAITING = 3
uint8 FAILED = 4
uint8 ERROR_TIMEOUT = 100
uint8 ERROR_NETWORK = 101
uint8 ERROR_DISK_FULL = 102
uint8 ERROR_PERMISSION = 103
uint8 status

")



(provide :pnp_msgs/PNPMapDownloadInfo "afbee8de108eeef3b359a44295c11441")


