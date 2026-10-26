;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::RoadAttribute)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'RoadAttribute (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::ROADATTRIBUTE")
  (make-package "LANE_NAVI_INFO_MSGS::ROADATTRIBUTE"))

(in-package "ROS")
;;//! \htmlinclude RoadAttribute.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass lane_navi_info_msgs::RoadAttribute
  :super ros::object
  :slots (_speed_limits _experience_speed_limits _curvatures _slopes _special_situation ))

(defmethod lane_navi_info_msgs::RoadAttribute
  (:init
   (&key
    ((:speed_limits __speed_limits) ())
    ((:experience_speed_limits __experience_speed_limits) ())
    ((:curvatures __curvatures) ())
    ((:slopes __slopes) ())
    ((:special_situation __special_situation) ())
    )
   (send-super :init)
   (setq _speed_limits __speed_limits)
   (setq _experience_speed_limits __experience_speed_limits)
   (setq _curvatures __curvatures)
   (setq _slopes __slopes)
   (setq _special_situation __special_situation)
   self)
  (:speed_limits
   (&rest __speed_limits)
   (if (keywordp (car __speed_limits))
       (send* _speed_limits __speed_limits)
     (progn
       (if __speed_limits (setq _speed_limits (car __speed_limits)))
       _speed_limits)))
  (:experience_speed_limits
   (&rest __experience_speed_limits)
   (if (keywordp (car __experience_speed_limits))
       (send* _experience_speed_limits __experience_speed_limits)
     (progn
       (if __experience_speed_limits (setq _experience_speed_limits (car __experience_speed_limits)))
       _experience_speed_limits)))
  (:curvatures
   (&rest __curvatures)
   (if (keywordp (car __curvatures))
       (send* _curvatures __curvatures)
     (progn
       (if __curvatures (setq _curvatures (car __curvatures)))
       _curvatures)))
  (:slopes
   (&rest __slopes)
   (if (keywordp (car __slopes))
       (send* _slopes __slopes)
     (progn
       (if __slopes (setq _slopes (car __slopes)))
       _slopes)))
  (:special_situation
   (&rest __special_situation)
   (if (keywordp (car __special_situation))
       (send* _special_situation __special_situation)
     (progn
       (if __special_situation (setq _special_situation (car __special_situation)))
       _special_situation)))
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/SpeedLimit[] _speed_limits
    (apply #'+ (send-all _speed_limits :serialization-length)) 4
    ;; lane_navi_info_msgs/ExperienceSpeedLimit[] _experience_speed_limits
    (apply #'+ (send-all _experience_speed_limits :serialization-length)) 4
    ;; lane_navi_info_msgs/Curvature[] _curvatures
    (apply #'+ (send-all _curvatures :serialization-length)) 4
    ;; lane_navi_info_msgs/Slope[] _slopes
    (apply #'+ (send-all _slopes :serialization-length)) 4
    ;; landmark_msgs/SpecialSituation[] _special_situation
    (apply #'+ (send-all _special_situation :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/SpeedLimit[] _speed_limits
     (write-long (length _speed_limits) s)
     (dolist (elem _speed_limits)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/ExperienceSpeedLimit[] _experience_speed_limits
     (write-long (length _experience_speed_limits) s)
     (dolist (elem _experience_speed_limits)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Curvature[] _curvatures
     (write-long (length _curvatures) s)
     (dolist (elem _curvatures)
       (send elem :serialize s)
       )
     ;; lane_navi_info_msgs/Slope[] _slopes
     (write-long (length _slopes) s)
     (dolist (elem _slopes)
       (send elem :serialize s)
       )
     ;; landmark_msgs/SpecialSituation[] _special_situation
     (write-long (length _special_situation) s)
     (dolist (elem _special_situation)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/SpeedLimit[] _speed_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _speed_limits (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::SpeedLimit :init) r)) r))
     (dolist (elem- _speed_limits)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/ExperienceSpeedLimit[] _experience_speed_limits
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _experience_speed_limits (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::ExperienceSpeedLimit :init) r)) r))
     (dolist (elem- _experience_speed_limits)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Curvature[] _curvatures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _curvatures (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Curvature :init) r)) r))
     (dolist (elem- _curvatures)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; lane_navi_info_msgs/Slope[] _slopes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _slopes (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::Slope :init) r)) r))
     (dolist (elem- _slopes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; landmark_msgs/SpecialSituation[] _special_situation
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _special_situation (let (r) (dotimes (i n) (push (instance landmark_msgs::SpecialSituation :init) r)) r))
     (dolist (elem- _special_situation)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::RoadAttribute :md5sum-) "1024dd2551dabd4ed614f34f10170ecb")
(setf (get lane_navi_info_msgs::RoadAttribute :datatype-) "lane_navi_info_msgs/RoadAttribute")
(setf (get lane_navi_info_msgs::RoadAttribute :definition-)
      "lane_navi_info_msgs/SpeedLimit[] speed_limits
lane_navi_info_msgs/ExperienceSpeedLimit[] experience_speed_limits
lane_navi_info_msgs/Curvature[] curvatures
lane_navi_info_msgs/Slope[] slopes
landmark_msgs/SpecialSituation[] special_situation

================================================================================
MSG: lane_navi_info_msgs/SpeedLimit
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/InterpolationType
uint8 UNKNOWN = 0
uint8 STEP = 1
uint8 LINEAR = 2
uint8 GENERAL = 3
uint8 OHTERS = 255
uint8 type
float32[] addition_values
float32[] params

================================================================================
MSG: lane_navi_info_msgs/ExperienceSpeedLimit
float32 value
float32 start_offset
float32 end_offset

================================================================================
MSG: lane_navi_info_msgs/Curvature
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: lane_navi_info_msgs/Slope
float32 value
float32 start_offset
float32 end_offset
lane_navi_info_msgs/InterpolationType interpolation_type

================================================================================
MSG: landmark_msgs/SpecialSituation
uint32 UNKNOWN = 0
uint32 TUNNEL_BEGIN = 1
uint32 TUNNEL_END = 2
uint32 BAD_WEATHER_EFFECTED_ZONE_BEGIN = 3
uint32 BAD_WEATHER_EFFECTED_ZONE_END = 4
uint32 value

")



(provide :lane_navi_info_msgs/RoadAttribute "1024dd2551dabd4ed614f34f10170ecb")


