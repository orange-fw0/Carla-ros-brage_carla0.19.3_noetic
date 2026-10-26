;; Auto-generated. Do not edit!


(when (boundp 'pnp_msgs::MapDownloadTypeEnum)
  (if (not (find-package "PNP_MSGS"))
    (make-package "PNP_MSGS"))
  (shadow 'MapDownloadTypeEnum (find-package "PNP_MSGS")))
(unless (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM")
  (make-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))

(in-package "ROS")
;;//! \htmlinclude MapDownloadTypeEnum.msg.html


(intern "*UNKNOWN*" (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(shadow '*UNKNOWN* (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(defconstant pnp_msgs::MapDownloadTypeEnum::*UNKNOWN* 0)
(intern "*CRUISING_SEARCH*" (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(shadow '*CRUISING_SEARCH* (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(defconstant pnp_msgs::MapDownloadTypeEnum::*CRUISING_SEARCH* 1)
(intern "*SD_DESTINATION_SEARCH*" (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(shadow '*SD_DESTINATION_SEARCH* (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(defconstant pnp_msgs::MapDownloadTypeEnum::*SD_DESTINATION_SEARCH* 2)
(intern "*SPECIFIC_ID*" (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(shadow '*SPECIFIC_ID* (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(defconstant pnp_msgs::MapDownloadTypeEnum::*SPECIFIC_ID* 3)
(intern "*RANGE_SEARCH*" (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(shadow '*RANGE_SEARCH* (find-package "PNP_MSGS::MAPDOWNLOADTYPEENUM"))
(defconstant pnp_msgs::MapDownloadTypeEnum::*RANGE_SEARCH* 4)

(defun pnp_msgs::MapDownloadTypeEnum-to-symbol (const)
  (cond
        ((= const 0) 'pnp_msgs::MapDownloadTypeEnum::*UNKNOWN*)
        ((= const 1) 'pnp_msgs::MapDownloadTypeEnum::*CRUISING_SEARCH*)
        ((= const 2) 'pnp_msgs::MapDownloadTypeEnum::*SD_DESTINATION_SEARCH*)
        ((= const 3) 'pnp_msgs::MapDownloadTypeEnum::*SPECIFIC_ID*)
        ((= const 4) 'pnp_msgs::MapDownloadTypeEnum::*RANGE_SEARCH*)
        (t nil)))

(defclass pnp_msgs::MapDownloadTypeEnum
  :super ros::object
  :slots (_status ))

(defmethod pnp_msgs::MapDownloadTypeEnum
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

(setf (get pnp_msgs::MapDownloadTypeEnum :md5sum-) "a12b9adcbb91d261498227c0f0a80ef6")
(setf (get pnp_msgs::MapDownloadTypeEnum :datatype-) "pnp_msgs/MapDownloadTypeEnum")
(setf (get pnp_msgs::MapDownloadTypeEnum :definition-)
      "uint8 UNKNOWN = 0
uint8 CRUISING_SEARCH = 1
uint8 SD_DESTINATION_SEARCH = 2
uint8 SPECIFIC_ID = 3
uint8 RANGE_SEARCH = 4
uint8 status

")



(provide :pnp_msgs/MapDownloadTypeEnum "a12b9adcbb91d261498227c0f0a80ef6")


