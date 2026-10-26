;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::MapDownloadStatus)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'MapDownloadStatus (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::MAPDOWNLOADSTATUS")
  (make-package "PNP_MSGS::MAPDOWNLOADSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MapDownloadStatus.msg.html


(defclass pnp_msgs::MapDownloadStatus
  :super ros::object
  :slots (_id _status _progress _reserved ))

(defmethod pnp_msgs::MapDownloadStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:status __status) (instance pnp_msgs::DownloadStatusEnum :init))
    ((:progress __progress) 0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _status __status)
   (setq _progress (round __progress))
   (setq _reserved (string __reserved))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; pnp_msgs/DownloadStatusEnum _status
    (send _status :serialization-length)
    ;; uint8 _progress
    1
    ;; string _reserved
    4 (length _reserved)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; pnp_msgs/DownloadStatusEnum _status
       (send _status :serialize s)
     ;; uint8 _progress
       (write-byte _progress s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pnp_msgs/DownloadStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; uint8 _progress
     (setq _progress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pnp_msgs::MapDownloadStatus :md5sum-) "ff8c586ca872f50ab53f3cb8def515eb")
(setf (get pnp_msgs::MapDownloadStatus :datatype-) "pnp_msgs/MapDownloadStatus")
(setf (get pnp_msgs::MapDownloadStatus :definition-)
      "uint32 id
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



(provide :pnp_msgs/MapDownloadStatus "ff8c586ca872f50ab53f3cb8def515eb")


