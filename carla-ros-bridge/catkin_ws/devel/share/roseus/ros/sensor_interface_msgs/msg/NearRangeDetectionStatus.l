;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::NearRangeDetectionStatus)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'NearRangeDetectionStatus (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS")
  (make-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NearRangeDetectionStatus.msg.html


(intern "*USS_NEAR_RANGE_UNAVAILABLE*" (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))
(shadow '*USS_NEAR_RANGE_UNAVAILABLE* (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))
(defconstant sensor_interface_msgs::NearRangeDetectionStatus::*USS_NEAR_RANGE_UNAVAILABLE* 0)
(intern "*USS_NEAR_RANGE_NO_DETECTION*" (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))
(shadow '*USS_NEAR_RANGE_NO_DETECTION* (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))
(defconstant sensor_interface_msgs::NearRangeDetectionStatus::*USS_NEAR_RANGE_NO_DETECTION* 1)
(intern "*USS_NEAR_RANGE_VALID_DETECTION*" (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))
(shadow '*USS_NEAR_RANGE_VALID_DETECTION* (find-package "SENSOR_INTERFACE_MSGS::NEARRANGEDETECTIONSTATUS"))
(defconstant sensor_interface_msgs::NearRangeDetectionStatus::*USS_NEAR_RANGE_VALID_DETECTION* 2)

(defun sensor_interface_msgs::NearRangeDetectionStatus-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::NearRangeDetectionStatus::*USS_NEAR_RANGE_UNAVAILABLE*)
        ((= const 1) 'sensor_interface_msgs::NearRangeDetectionStatus::*USS_NEAR_RANGE_NO_DETECTION*)
        ((= const 2) 'sensor_interface_msgs::NearRangeDetectionStatus::*USS_NEAR_RANGE_VALID_DETECTION*)
        (t nil)))

(defclass sensor_interface_msgs::NearRangeDetectionStatus
  :super ros::object
  :slots (_value ))

(defmethod sensor_interface_msgs::NearRangeDetectionStatus
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

(setf (get sensor_interface_msgs::NearRangeDetectionStatus :md5sum-) "ef23a94b1c181048f18af9846917817a")
(setf (get sensor_interface_msgs::NearRangeDetectionStatus :datatype-) "sensor_interface_msgs/NearRangeDetectionStatus")
(setf (get sensor_interface_msgs::NearRangeDetectionStatus :definition-)
      "uint8 USS_NEAR_RANGE_UNAVAILABLE = 0
uint8 USS_NEAR_RANGE_NO_DETECTION = 1
uint8 USS_NEAR_RANGE_VALID_DETECTION = 2
uint8 value

")



(provide :sensor_interface_msgs/NearRangeDetectionStatus "ef23a94b1c181048f18af9846917817a")


