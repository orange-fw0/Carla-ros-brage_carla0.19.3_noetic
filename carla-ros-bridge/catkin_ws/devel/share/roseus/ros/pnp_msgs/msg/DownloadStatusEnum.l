;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::DownloadStatusEnum)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'DownloadStatusEnum (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::DOWNLOADSTATUSENUM")
  (make-package "PNP_MSGS::DOWNLOADSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude DownloadStatusEnum.msg.html


(intern "*UNKNOWN*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*UNKNOWN* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*UNKNOWN* 0)
(intern "*SUCCESS*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*SUCCESS* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*SUCCESS* 1)
(intern "*DOWNLOADING*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*DOWNLOADING* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*DOWNLOADING* 2)
(intern "*WAITING*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*WAITING* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*WAITING* 3)
(intern "*FAILED*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*FAILED* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*FAILED* 4)
(intern "*ERROR_TIMEOUT*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*ERROR_TIMEOUT* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*ERROR_TIMEOUT* 100)
(intern "*ERROR_NETWORK*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*ERROR_NETWORK* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*ERROR_NETWORK* 101)
(intern "*ERROR_DISK_FULL*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*ERROR_DISK_FULL* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*ERROR_DISK_FULL* 102)
(intern "*ERROR_PERMISSION*" (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(shadow '*ERROR_PERMISSION* (find-package "PNP_MSGS::DOWNLOADSTATUSENUM"))
(defconstant pnp_msgs::DownloadStatusEnum::*ERROR_PERMISSION* 103)

(defun pnp_msgs::DownloadStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'pnp_msgs::DownloadStatusEnum::*UNKNOWN*)
        ((= const 1) 'pnp_msgs::DownloadStatusEnum::*SUCCESS*)
        ((= const 2) 'pnp_msgs::DownloadStatusEnum::*DOWNLOADING*)
        ((= const 3) 'pnp_msgs::DownloadStatusEnum::*WAITING*)
        ((= const 4) 'pnp_msgs::DownloadStatusEnum::*FAILED*)
        ((= const 100) 'pnp_msgs::DownloadStatusEnum::*ERROR_TIMEOUT*)
        ((= const 101) 'pnp_msgs::DownloadStatusEnum::*ERROR_NETWORK*)
        ((= const 102) 'pnp_msgs::DownloadStatusEnum::*ERROR_DISK_FULL*)
        ((= const 103) 'pnp_msgs::DownloadStatusEnum::*ERROR_PERMISSION*)
        (t nil)))

(defclass pnp_msgs::DownloadStatusEnum
  :super ros::object
  :slots (_status ))

(defmethod pnp_msgs::DownloadStatusEnum
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pnp_msgs::DownloadStatusEnum :md5sum-) "42c07cefb0526e56a353247602ed2068")
(setf (get pnp_msgs::DownloadStatusEnum :datatype-) "pnp_msgs/DownloadStatusEnum")
(setf (get pnp_msgs::DownloadStatusEnum :definition-)
      "uint8 UNKNOWN = 0
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



(provide :pnp_msgs/DownloadStatusEnum "42c07cefb0526e56a353247602ed2068")


