;; Auto-generated. Do not edit!


(when (boundp 'v2x_msgs::V2xOverHorizonInfo)
  (if (not (find-package "V2X_MSGS"))
    (make-package "V2X_MSGS"))
  (shadow 'V2xOverHorizonInfo (find-package "V2X_MSGS")))
(unless (find-package "V2X_MSGS::V2XOVERHORIZONINFO")
  (make-package "V2X_MSGS::V2XOVERHORIZONINFO"))

(in-package "ROS")
;;//! \htmlinclude V2xOverHorizonInfo.msg.html


(intern "*V2X_OVER_HORIZON_DATA*" (find-package "V2X_MSGS::V2XOVERHORIZONINFO"))
(shadow '*V2X_OVER_HORIZON_DATA* (find-package "V2X_MSGS::V2XOVERHORIZONINFO"))
(defconstant v2x_msgs::V2xOverHorizonInfo::*V2X_OVER_HORIZON_DATA* 1)

(defun v2x_msgs::V2xOverHorizonInfo-to-symbol (const)
  (cond
        ((= const 1) 'v2x_msgs::V2xOverHorizonInfo::*V2X_OVER_HORIZON_DATA*)
        (t nil)))

(defclass v2x_msgs::V2xOverHorizonInfo
  :super ros::object
  :slots (_available _v2x_over_horizon_data ))

(defmethod v2x_msgs::V2xOverHorizonInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:v2x_over_horizon_data __v2x_over_horizon_data) (instance v2x_msgs::V2xOverHorizonData :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _v2x_over_horizon_data __v2x_over_horizon_data)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:v2x_over_horizon_data
   (&rest __v2x_over_horizon_data)
   (if (keywordp (car __v2x_over_horizon_data))
       (send* _v2x_over_horizon_data __v2x_over_horizon_data)
     (progn
       (if __v2x_over_horizon_data (setq _v2x_over_horizon_data (car __v2x_over_horizon_data)))
       _v2x_over_horizon_data)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; v2x_msgs/V2xOverHorizonData _v2x_over_horizon_data
    (send _v2x_over_horizon_data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; v2x_msgs/V2xOverHorizonData _v2x_over_horizon_data
       (send _v2x_over_horizon_data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; v2x_msgs/V2xOverHorizonData _v2x_over_horizon_data
     (send _v2x_over_horizon_data :deserialize buf ptr-) (incf ptr- (send _v2x_over_horizon_data :serialization-length))
   ;;
   self)
  )

(setf (get v2x_msgs::V2xOverHorizonInfo :md5sum-) "9db2d5066d1096c28b17d4fbc24f2ef0")
(setf (get v2x_msgs::V2xOverHorizonInfo :datatype-) "v2x_msgs/V2xOverHorizonInfo")
(setf (get v2x_msgs::V2xOverHorizonInfo :definition-)
      "uint8 V2X_OVER_HORIZON_DATA = 1
uint8 available
v2x_msgs/V2xOverHorizonData v2x_over_horizon_data

================================================================================
MSG: v2x_msgs/V2xOverHorizonData
int32 intersection_id
string video_url

")



(provide :v2x_msgs/V2xOverHorizonInfo "9db2d5066d1096c28b17d4fbc24f2ef0")


