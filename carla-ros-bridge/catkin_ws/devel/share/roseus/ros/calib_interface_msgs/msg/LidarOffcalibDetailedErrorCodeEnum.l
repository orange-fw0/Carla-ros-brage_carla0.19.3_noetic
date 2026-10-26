;; Auto-generated. Do not edit!


(when (boundp 'calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum)
  (if (not (find-package "CALIB_INTERFACE_MSGS"))
    (make-package "CALIB_INTERFACE_MSGS"))
  (shadow 'LidarOffcalibDetailedErrorCodeEnum (find-package "CALIB_INTERFACE_MSGS")))
(unless (find-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBDETAILEDERRORCODEENUM")
  (make-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBDETAILEDERRORCODEENUM"))

(in-package "ROS")
;;//! \htmlinclude LidarOffcalibDetailedErrorCodeEnum.msg.html


(intern "*NORMAL*" (find-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBDETAILEDERRORCODEENUM"))
(shadow '*NORMAL* (find-package "CALIB_INTERFACE_MSGS::LIDAROFFCALIBDETAILEDERRORCODEENUM"))
(defconstant calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum::*NORMAL* 0)

(defun calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum-to-symbol (const)
  (cond
        ((= const 0) 'calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum::*NORMAL*)
        (t nil)))

(defclass calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum
  :super ros::object
  :slots (_value ))

(defmethod calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum
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
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum :md5sum-) "6260181ac4dfaf104c54bba3d58df919")
(setf (get calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum :datatype-) "calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum")
(setf (get calib_interface_msgs::LidarOffcalibDetailedErrorCodeEnum :definition-)
      "uint16 NORMAL = 0
uint16 value

")



(provide :calib_interface_msgs/LidarOffcalibDetailedErrorCodeEnum "6260181ac4dfaf104c54bba3d58df919")


