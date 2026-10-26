;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::SDCameraInfo)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'SDCameraInfo (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::SDCAMERAINFO")
  (make-package "LANE_NAVI_INFO_MSGS::SDCAMERAINFO"))

(in-package "ROS")
;;//! \htmlinclude SDCameraInfo.msg.html


(defclass lane_navi_info_msgs::SDCameraInfo
  :super ros::object
  :slots (_offset _ecamera_type _speed_limit_value ))

(defmethod lane_navi_info_msgs::SDCameraInfo
  (:init
   (&key
    ((:offset __offset) 0.0)
    ((:ecamera_type __ecamera_type) (instance lane_navi_info_msgs::ECameraType :init))
    ((:speed_limit_value __speed_limit_value) 0)
    )
   (send-super :init)
   (setq _offset (float __offset))
   (setq _ecamera_type __ecamera_type)
   (setq _speed_limit_value (round __speed_limit_value))
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:ecamera_type
   (&rest __ecamera_type)
   (if (keywordp (car __ecamera_type))
       (send* _ecamera_type __ecamera_type)
     (progn
       (if __ecamera_type (setq _ecamera_type (car __ecamera_type)))
       _ecamera_type)))
  (:speed_limit_value
   (&optional __speed_limit_value)
   (if __speed_limit_value (setq _speed_limit_value __speed_limit_value)) _speed_limit_value)
  (:serialization-length
   ()
   (+
    ;; float32 _offset
    4
    ;; lane_navi_info_msgs/ECameraType _ecamera_type
    (send _ecamera_type :serialization-length)
    ;; uint32 _speed_limit_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/ECameraType _ecamera_type
       (send _ecamera_type :serialize s)
     ;; uint32 _speed_limit_value
       (write-long _speed_limit_value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _offset
     (setq _offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/ECameraType _ecamera_type
     (send _ecamera_type :deserialize buf ptr-) (incf ptr- (send _ecamera_type :serialization-length))
   ;; uint32 _speed_limit_value
     (setq _speed_limit_value (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::SDCameraInfo :md5sum-) "3087adc6327518167dcd0f490d93b989")
(setf (get lane_navi_info_msgs::SDCameraInfo :datatype-) "lane_navi_info_msgs/SDCameraInfo")
(setf (get lane_navi_info_msgs::SDCameraInfo :definition-)
      "float32 offset
lane_navi_info_msgs/ECameraType ecamera_type
uint32 speed_limit_value

================================================================================
MSG: lane_navi_info_msgs/ECameraType
uint8 ECAMERA_SPEED = 0
uint8 ECAMERA_MONITOR = 1
uint8 ECAMERA_TRAFIC_LIGHT = 2
uint8 ECAMERA_RULE = 3
uint8 ECAMERA_BUS = 4
uint8 ECAMERA_EMERGENCY = 5
uint8 ECAMERA_NON_MOTORIZED = 6
uint8 ECAMERA_RANGE = 7
uint8 ECAMERA_INTER_SPEED_START = 8
uint8 ECAMERA_INTER_SPEED_END = 9
uint8 ECAMERA_UNKNOWN = 255
uint8 type

")



(provide :lane_navi_info_msgs/SDCameraInfo "3087adc6327518167dcd0f490d93b989")


