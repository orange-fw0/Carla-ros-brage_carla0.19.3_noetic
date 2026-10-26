;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicUpaDistance)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicUpaDistance (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicUpaDistance.msg.html


(intern "*FRONT_LEFT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*FRONT_LEFT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_LEFT_SIDE* 0)
(intern "*FRONT_LEFT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*FRONT_LEFT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_LEFT_CORNER* 1)
(intern "*FRONT_LEFT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*FRONT_LEFT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_LEFT_CENTER* 2)
(intern "*FRONT_RIGHT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*FRONT_RIGHT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_RIGHT_CENTER* 3)
(intern "*FRONT_RIGHT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*FRONT_RIGHT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_RIGHT_CORNER* 4)
(intern "*FRONT_RIGHT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*FRONT_RIGHT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_RIGHT_SIDE* 5)
(intern "*REAR_RIGHT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*REAR_RIGHT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*REAR_RIGHT_SIDE* 6)
(intern "*REAR_RIGHT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*REAR_RIGHT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*REAR_RIGHT_CORNER* 7)
(intern "*REAR_RIGHT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*REAR_RIGHT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*REAR_RIGHT_CENTER* 8)
(intern "*REAR_LEFT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*REAR_LEFT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*REAR_LEFT_CENTER* 9)
(intern "*REAR_LEFT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*REAR_LEFT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*REAR_LEFT_CORNER* 10)
(intern "*REAR_LEFT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(shadow '*REAR_LEFT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICUPADISTANCE"))
(defconstant sensor_interface_msgs::UltrasonicUpaDistance::*REAR_LEFT_SIDE* 11)

(defun sensor_interface_msgs::UltrasonicUpaDistance-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_LEFT_SIDE*)
        ((= const 1) 'sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_LEFT_CORNER*)
        ((= const 2) 'sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_LEFT_CENTER*)
        ((= const 3) 'sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_RIGHT_CENTER*)
        ((= const 4) 'sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_RIGHT_CORNER*)
        ((= const 5) 'sensor_interface_msgs::UltrasonicUpaDistance::*FRONT_RIGHT_SIDE*)
        ((= const 6) 'sensor_interface_msgs::UltrasonicUpaDistance::*REAR_RIGHT_SIDE*)
        ((= const 7) 'sensor_interface_msgs::UltrasonicUpaDistance::*REAR_RIGHT_CORNER*)
        ((= const 8) 'sensor_interface_msgs::UltrasonicUpaDistance::*REAR_RIGHT_CENTER*)
        ((= const 9) 'sensor_interface_msgs::UltrasonicUpaDistance::*REAR_LEFT_CENTER*)
        ((= const 10) 'sensor_interface_msgs::UltrasonicUpaDistance::*REAR_LEFT_CORNER*)
        ((= const 11) 'sensor_interface_msgs::UltrasonicUpaDistance::*REAR_LEFT_SIDE*)
        (t nil)))

(defclass sensor_interface_msgs::UltrasonicUpaDistance
  :super ros::object
  :slots (_sonar ))

(defmethod sensor_interface_msgs::UltrasonicUpaDistance
  (:init
   (&key
    ((:sonar __sonar) ())
    )
   (send-super :init)
   (setq _sonar __sonar)
   self)
  (:sonar
   (&rest __sonar)
   (if (keywordp (car __sonar))
       (send* _sonar __sonar)
     (progn
       (if __sonar (setq _sonar (car __sonar)))
       _sonar)))
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UltrasonicUpaData[] _sonar
    (apply #'+ (send-all _sonar :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UltrasonicUpaData[] _sonar
     (write-long (length _sonar) s)
     (dolist (elem _sonar)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UltrasonicUpaData[] _sonar
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sonar (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UltrasonicUpaData :init) r)) r))
     (dolist (elem- _sonar)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicUpaDistance :md5sum-) "a917f80a8e68fd3fd205ee3a5f7bad35")
(setf (get sensor_interface_msgs::UltrasonicUpaDistance :datatype-) "sensor_interface_msgs/UltrasonicUpaDistance")
(setf (get sensor_interface_msgs::UltrasonicUpaDistance :definition-)
      "uint8 FRONT_LEFT_SIDE = 0
uint8 FRONT_LEFT_CORNER = 1
uint8 FRONT_LEFT_CENTER = 2
uint8 FRONT_RIGHT_CENTER = 3
uint8 FRONT_RIGHT_CORNER = 4
uint8 FRONT_RIGHT_SIDE = 5
uint8 REAR_RIGHT_SIDE = 6
uint8 REAR_RIGHT_CORNER = 7
uint8 REAR_RIGHT_CENTER = 8
uint8 REAR_LEFT_CENTER = 9
uint8 REAR_LEFT_CORNER = 10
uint8 REAR_LEFT_SIDE = 11
sensor_interface_msgs/UltrasonicUpaData[] sonar

================================================================================
MSG: sensor_interface_msgs/UltrasonicUpaData
uint8 available
sensor_interface_msgs/UltrasonicResultMeta meta
float32 upadistance
string reserved_info

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

")



(provide :sensor_interface_msgs/UltrasonicUpaDistance "a917f80a8e68fd3fd205ee3a5f7bad35")


