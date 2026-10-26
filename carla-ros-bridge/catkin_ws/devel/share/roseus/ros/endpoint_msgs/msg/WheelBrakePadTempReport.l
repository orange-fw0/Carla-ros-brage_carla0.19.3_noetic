;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WheelBrakePadTempReport)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WheelBrakePadTempReport (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WHEELBRAKEPADTEMPREPORT")
  (make-package "ENDPOINT_MSGS::WHEELBRAKEPADTEMPREPORT"))

(in-package "ROS")
;;//! \htmlinclude WheelBrakePadTempReport.msg.html


(intern "*WHEEL_BRAKE_PAD_TEMP_REPORT_DATA*" (find-package "ENDPOINT_MSGS::WHEELBRAKEPADTEMPREPORT"))
(shadow '*WHEEL_BRAKE_PAD_TEMP_REPORT_DATA* (find-package "ENDPOINT_MSGS::WHEELBRAKEPADTEMPREPORT"))
(defconstant endpoint_msgs::WheelBrakePadTempReport::*WHEEL_BRAKE_PAD_TEMP_REPORT_DATA* 1)

(defun endpoint_msgs::WheelBrakePadTempReport-to-symbol (const)
  (cond
        ((= const 1) 'endpoint_msgs::WheelBrakePadTempReport::*WHEEL_BRAKE_PAD_TEMP_REPORT_DATA*)
        (t nil)))

(defclass endpoint_msgs::WheelBrakePadTempReport
  :super ros::object
  :slots (_available _wheel_brake_pad_temp_data ))

(defmethod endpoint_msgs::WheelBrakePadTempReport
  (:init
   (&key
    ((:available __available) 0)
    ((:wheel_brake_pad_temp_data __wheel_brake_pad_temp_data) (instance endpoint_msgs::WheelBrakePadTempData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _wheel_brake_pad_temp_data __wheel_brake_pad_temp_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:wheel_brake_pad_temp_data
   (&rest __wheel_brake_pad_temp_data)
   (if (keywordp (car __wheel_brake_pad_temp_data))
       (send* _wheel_brake_pad_temp_data __wheel_brake_pad_temp_data)
     (progn
       (if __wheel_brake_pad_temp_data (setq _wheel_brake_pad_temp_data (car __wheel_brake_pad_temp_data)))
       _wheel_brake_pad_temp_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; endpoint_msgs/WheelBrakePadTempData _wheel_brake_pad_temp_data
    (send _wheel_brake_pad_temp_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; endpoint_msgs/WheelBrakePadTempData _wheel_brake_pad_temp_data
       (send _wheel_brake_pad_temp_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; endpoint_msgs/WheelBrakePadTempData _wheel_brake_pad_temp_data
     (send _wheel_brake_pad_temp_data :deserialize buf ptr-) (incf ptr- (send _wheel_brake_pad_temp_data :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WheelBrakePadTempReport :md5sum-) "7c06db4a91197a98259780edeaec81e2")
(setf (get endpoint_msgs::WheelBrakePadTempReport :datatype-) "endpoint_msgs/WheelBrakePadTempReport")
(setf (get endpoint_msgs::WheelBrakePadTempReport :definition-)
      "uint8 WHEEL_BRAKE_PAD_TEMP_REPORT_DATA = 1
uint8 available
endpoint_msgs/WheelBrakePadTempData wheel_brake_pad_temp_data

================================================================================
MSG: endpoint_msgs/WheelBrakePadTempData
uint64 timestamp_us
float32 front_left
float32 front_right
float32 rear_left
float32 rear_right
bool valid

")



(provide :endpoint_msgs/WheelBrakePadTempReport "7c06db4a91197a98259780edeaec81e2")


