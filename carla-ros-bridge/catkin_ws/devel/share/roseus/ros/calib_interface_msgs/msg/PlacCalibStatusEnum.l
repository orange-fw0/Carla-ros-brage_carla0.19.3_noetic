;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::PlacCalibStatusEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'PlacCalibStatusEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM")
  (make-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))

(in-package "ROS")
;;//! \htmlinclude PlacCalibStatusEnum.msg.html


(intern "*CALIB_STATUS_IDLE*" (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(shadow '*CALIB_STATUS_IDLE* (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(defconstant calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_IDLE* 0)
(intern "*CALIB_STATUS_RUNNING*" (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(shadow '*CALIB_STATUS_RUNNING* (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(defconstant calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_RUNNING* 1)
(intern "*CALIB_STATUS_SUCCESS*" (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(shadow '*CALIB_STATUS_SUCCESS* (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(defconstant calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_SUCCESS* 2)
(intern "*CALIB_STATUS_FAIL*" (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(shadow '*CALIB_STATUS_FAIL* (find-package "CALIB_INTERFACE_MSGS::PLACCALIBSTATUSENUM"))
(defconstant calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_FAIL* 3)

(defun calib_interface_msgs::PlacCalibStatusEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_IDLE*)
        ((= const 1) 'calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_RUNNING*)
        ((= const 2) 'calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_SUCCESS*)
        ((= const 3) 'calib_interface_msgs::PlacCalibStatusEnum::*CALIB_STATUS_FAIL*)
        (t nil)))

(defclass calib_interface_msgs::PlacCalibStatusEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::PlacCalibStatusEnum
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get calib_interface_msgs::PlacCalibStatusEnum :md5sum-) "14931cc4e4fe154bc24d7611ff34cd95")
(setf (get calib_interface_msgs::PlacCalibStatusEnum :datatype-) "calib_interface_msgs/PlacCalibStatusEnum")
(setf (get calib_interface_msgs::PlacCalibStatusEnum :definition-)
      "uint8 CALIB_STATUS_IDLE = 0
uint8 CALIB_STATUS_RUNNING = 1
uint8 CALIB_STATUS_SUCCESS = 2
uint8 CALIB_STATUS_FAIL = 3
uint8 value

")



(provide :calib_interface_msgs/PlacCalibStatusEnum "14931cc4e4fe154bc24d7611ff34cd95")


