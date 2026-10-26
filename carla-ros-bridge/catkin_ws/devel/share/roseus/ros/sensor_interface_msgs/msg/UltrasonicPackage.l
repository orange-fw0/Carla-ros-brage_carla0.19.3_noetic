;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicPackage)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicPackage (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicPackage.msg.html


(intern "*FRONT_LEFT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*FRONT_LEFT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*FRONT_LEFT_SIDE* 0)
(intern "*FRONT_LEFT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*FRONT_LEFT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*FRONT_LEFT_CORNER* 1)
(intern "*FRONT_LEFT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*FRONT_LEFT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*FRONT_LEFT_CENTER* 2)
(intern "*FRONT_RIGHT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*FRONT_RIGHT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*FRONT_RIGHT_CENTER* 3)
(intern "*FRONT_RIGHT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*FRONT_RIGHT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*FRONT_RIGHT_CORNER* 4)
(intern "*FRONT_RIGHT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*FRONT_RIGHT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*FRONT_RIGHT_SIDE* 5)
(intern "*REAR_RIGHT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*REAR_RIGHT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*REAR_RIGHT_SIDE* 6)
(intern "*REAR_RIGHT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*REAR_RIGHT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*REAR_RIGHT_CORNER* 7)
(intern "*REAR_RIGHT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*REAR_RIGHT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*REAR_RIGHT_CENTER* 8)
(intern "*REAR_LEFT_CENTER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*REAR_LEFT_CENTER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*REAR_LEFT_CENTER* 9)
(intern "*REAR_LEFT_CORNER*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*REAR_LEFT_CORNER* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*REAR_LEFT_CORNER* 10)
(intern "*REAR_LEFT_SIDE*" (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(shadow '*REAR_LEFT_SIDE* (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICPACKAGE"))
(defconstant sensor_interface_msgs::UltrasonicPackage::*REAR_LEFT_SIDE* 11)

(defun sensor_interface_msgs::UltrasonicPackage-to-symbol (const)
  (cond
        ((= const 0) 'sensor_interface_msgs::UltrasonicPackage::*FRONT_LEFT_SIDE*)
        ((= const 1) 'sensor_interface_msgs::UltrasonicPackage::*FRONT_LEFT_CORNER*)
        ((= const 2) 'sensor_interface_msgs::UltrasonicPackage::*FRONT_LEFT_CENTER*)
        ((= const 3) 'sensor_interface_msgs::UltrasonicPackage::*FRONT_RIGHT_CENTER*)
        ((= const 4) 'sensor_interface_msgs::UltrasonicPackage::*FRONT_RIGHT_CORNER*)
        ((= const 5) 'sensor_interface_msgs::UltrasonicPackage::*FRONT_RIGHT_SIDE*)
        ((= const 6) 'sensor_interface_msgs::UltrasonicPackage::*REAR_RIGHT_SIDE*)
        ((= const 7) 'sensor_interface_msgs::UltrasonicPackage::*REAR_RIGHT_CORNER*)
        ((= const 8) 'sensor_interface_msgs::UltrasonicPackage::*REAR_RIGHT_CENTER*)
        ((= const 9) 'sensor_interface_msgs::UltrasonicPackage::*REAR_LEFT_CENTER*)
        ((= const 10) 'sensor_interface_msgs::UltrasonicPackage::*REAR_LEFT_CORNER*)
        ((= const 11) 'sensor_interface_msgs::UltrasonicPackage::*REAR_LEFT_SIDE*)
        (t nil)))

(defclass sensor_interface_msgs::UltrasonicPackage
  :super ros::object
  :slots (_uss_base_info _rolling_cnt _reserved ))

(defmethod sensor_interface_msgs::UltrasonicPackage
  (:init
   (&key
    ((:uss_base_info __uss_base_info) ())
    ((:rolling_cnt __rolling_cnt) 0)
    ((:reserved __reserved) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _uss_base_info __uss_base_info)
   (setq _rolling_cnt (round __rolling_cnt))
   (setq _reserved __reserved)
   self)
  (:uss_base_info
   (&rest __uss_base_info)
   (if (keywordp (car __uss_base_info))
       (send* _uss_base_info __uss_base_info)
     (progn
       (if __uss_base_info (setq _uss_base_info (car __uss_base_info)))
       _uss_base_info)))
  (:rolling_cnt
   (&optional __rolling_cnt)
   (if __rolling_cnt (setq _rolling_cnt __rolling_cnt)) _rolling_cnt)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; sensor_interface_msgs/UltrasonicBaseInfo[] _uss_base_info
    (apply #'+ (send-all _uss_base_info :serialization-length)) 4
    ;; uint8 _rolling_cnt
    1
    ;; uint8[] _reserved
    (* 1    (length _reserved)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_interface_msgs/UltrasonicBaseInfo[] _uss_base_info
     (write-long (length _uss_base_info) s)
     (dolist (elem _uss_base_info)
       (send elem :serialize s)
       )
     ;; uint8 _rolling_cnt
       (write-byte _rolling_cnt s)
     ;; uint8[] _reserved
     (write-long (length _reserved) s)
     (princ _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_interface_msgs/UltrasonicBaseInfo[] _uss_base_info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _uss_base_info (let (r) (dotimes (i n) (push (instance sensor_interface_msgs::UltrasonicBaseInfo :init) r)) r))
     (dolist (elem- _uss_base_info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _rolling_cnt
     (setq _rolling_cnt (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _reserved
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _reserved (make-array n :element-type :char))
     (replace _reserved buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicPackage :md5sum-) "42fc979e3e904aff02c78cfbb89b32b4")
(setf (get sensor_interface_msgs::UltrasonicPackage :datatype-) "sensor_interface_msgs/UltrasonicPackage")
(setf (get sensor_interface_msgs::UltrasonicPackage :definition-)
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
sensor_interface_msgs/UltrasonicBaseInfo[] uss_base_info
uint8 rolling_cnt
uint8[] reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicBaseInfo
sensor_interface_msgs/UltrasonicEhcoInfo[] uss_echo_info
uint16 first_echo_amplitude
int16 uss_temperature
uint64 timestamp_us
uint8 burst_mode
uint8 uss_rt_width
uint8 uss_config_status
string reserved

================================================================================
MSG: sensor_interface_msgs/UltrasonicEhcoInfo
float32 uss_echo_distance
uint64 uss_echo_width

")



(provide :sensor_interface_msgs/UltrasonicPackage "42fc979e3e904aff02c78cfbb89b32b4")


