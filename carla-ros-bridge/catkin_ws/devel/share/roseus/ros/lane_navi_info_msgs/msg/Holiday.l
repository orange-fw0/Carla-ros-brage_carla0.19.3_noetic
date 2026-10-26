;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Holiday)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Holiday (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::HOLIDAY")
  (make-package "LANE_NAVI_INFO_MSGS::HOLIDAY"))

(in-package "ROS")
;;//! \htmlinclude Holiday.msg.html


(defclass lane_navi_info_msgs::Holiday
  :super ros::object
  :slots (_holiday_type _is_limited ))

(defmethod lane_navi_info_msgs::Holiday
  (:init
   (&key
    ((:holiday_type __holiday_type) (instance lane_navi_info_msgs::HolidayType :init))
    ((:is_limited __is_limited) nil)
    )
   (send-super :init)
   (setq _holiday_type __holiday_type)
   (setq _is_limited __is_limited)
   self)
  (:holiday_type
   (&rest __holiday_type)
   (if (keywordp (car __holiday_type))
       (send* _holiday_type __holiday_type)
     (progn
       (if __holiday_type (setq _holiday_type (car __holiday_type)))
       _holiday_type)))
  (:is_limited
   (&optional (__is_limited :null))
   (if (not (eq __is_limited :null)) (setq _is_limited __is_limited)) _is_limited)
  (:serialization-length
   ()
   (+
    ;; lane_navi_info_msgs/HolidayType _holiday_type
    (send _holiday_type :serialization-length)
    ;; bool _is_limited
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; lane_navi_info_msgs/HolidayType _holiday_type
       (send _holiday_type :serialize s)
     ;; bool _is_limited
       (if _is_limited (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; lane_navi_info_msgs/HolidayType _holiday_type
     (send _holiday_type :deserialize buf ptr-) (incf ptr- (send _holiday_type :serialization-length))
   ;; bool _is_limited
     (setq _is_limited (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Holiday :md5sum-) "a0db7f769d6a1baf065796addc5060f4")
(setf (get lane_navi_info_msgs::Holiday :datatype-) "lane_navi_info_msgs/Holiday")
(setf (get lane_navi_info_msgs::Holiday :definition-)
      "lane_navi_info_msgs/HolidayType holiday_type
bool is_limited

================================================================================
MSG: lane_navi_info_msgs/HolidayType
uint8 HOLIDAYTYPE_NONE = 0
uint8 HOLIDAYTYPE_VALID = 1
uint8 HOLIDAYTYPE_EXCEPT = 2
uint8 type

")



(provide :lane_navi_info_msgs/Holiday "a0db7f769d6a1baf065796addc5060f4")


