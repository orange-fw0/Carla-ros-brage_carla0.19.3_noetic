;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::WeatherRule)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'WeatherRule (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::WEATHERRULE")
  (make-package "LANE_NAVI_INFO_MSGS::WEATHERRULE"))

(in-package "ROS")
;;//! \htmlinclude WeatherRule.msg.html


(defclass lane_navi_info_msgs::WeatherRule
  :super ros::object
  :slots (_weather_rule_type _is_limited ))

(defmethod lane_navi_info_msgs::WeatherRule
  (:init
   (&key
    ((:weather_rule_type __weather_rule_type) ())
    ((:is_limited __is_limited) nil)
    )
   (send-super :init)
   (setq _weather_rule_type __weather_rule_type)
   (setq _is_limited __is_limited)
   self)
  (:weather_rule_type
   (&rest __weather_rule_type)
   (if (keywordp (car __weather_rule_type))
       (send* _weather_rule_type __weather_rule_type)
     (progn
       (if __weather_rule_type (setq _weather_rule_type (car __weather_rule_type)))
       _weather_rule_type)))
  (:is_limited
   (&optional (__is_limited :null))
   (if (not (eq __is_limited :null)) (setq _is_limited __is_limited)) _is_limited)
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/WeatherRuleType[] _weather_rule_type
    (apply #'+ (send-all _weather_rule_type :serialization-length)) 4
    ;; bool _is_limited
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/WeatherRuleType[] _weather_rule_type
     (write-long (length _weather_rule_type) s)
     (dolist (elem _weather_rule_type)
       (send elem :serialize s)
       )
     ;; bool _is_limited
       (if _is_limited (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/WeatherRuleType[] _weather_rule_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _weather_rule_type (let (r) (dotimes (i n) (push (instance lane_navi_info_msgs::WeatherRuleType :init) r)) r))
     (dolist (elem- _weather_rule_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _is_limited
     (setq _is_limited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::WeatherRule :md5sum-) "641fafa69f93c44b2fc9f1ec0104482a")
(setf (get lane_navi_info_msgs::WeatherRule :datatype-) "lane_navi_info_msgs/WeatherRule")
(setf (get lane_navi_info_msgs::WeatherRule :definition-)
      "lane_navi_info_msgs/WeatherRuleType[] weather_rule_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/WeatherRuleType
uint8 WEATHERTYPE_INVALID = 0
uint8 WEATHERTYPE_SUNSHINE = 1
uint8 WEATHERTYPE_RAINSNOW = 2
uint8 WEATHERTYPE_ICE = 3
uint8 WEATHERTYPE_FOG = 4
uint8 WEATHERTYPE_WIND = 5
uint8 type

")



(provide :lane_navi_info_msgs/WeatherRule "641fafa69f93c44b2fc9f1ec0104482a")


