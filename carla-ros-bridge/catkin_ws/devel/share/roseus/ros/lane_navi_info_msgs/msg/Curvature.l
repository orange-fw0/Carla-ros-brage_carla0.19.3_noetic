;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Curvature)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Curvature (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::CURVATURE")
  (make-package "LANE_NAVI_INFO_MSGS::CURVATURE"))

(in-package "ROS")
;;//! \htmlinclude Curvature.msg.html


(defclass lane_navi_info_msgs::Curvature
  :super ros::object
  :slots (_value _start_offset _end_offset _interpolation_type ))

(defmethod lane_navi_info_msgs::Curvature
  (:init
   (&key
    ((:value __value) 0.0)
    ((:start_offset __start_offset) 0.0)
    ((:end_offset __end_offset) 0.0)
    ((:interpolation_type __interpolation_type) (instance lane_navi_info_msgs::InterpolationType :init))
    )
   (send-super :init)
   (setq _value (float __value))
   (setq _start_offset (float __start_offset))
   (setq _end_offset (float __end_offset))
   (setq _interpolation_type __interpolation_type)
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:end_offset
   (&optional __end_offset)
   (if __end_offset (setq _end_offset __end_offset)) _end_offset)
  (:interpolation_type
   (&rest __interpolation_type)
   (if (keywordp (car __interpolation_type))
       (send* _interpolation_type __interpolation_type)
     (progn
       (if __interpolation_type (setq _interpolation_type (car __interpolation_type)))
       _interpolation_type)))
  (:serialization-length
   ()
   (+
    ;; float32 _value
    4
    ;; float32 _start_offset
    4
    ;; float32 _end_offset
    4
    ;; lane_navi_info_msgs/InterpolationType _interpolation_type
    (send _interpolation_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _end_offset
       (sys::poke _end_offset (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; lane_navi_info_msgs/InterpolationType _interpolation_type
       (send _interpolation_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _start_offset
     (setq _start_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _end_offset
     (setq _end_offset (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; lane_navi_info_msgs/InterpolationType _interpolation_type
     (send _interpolation_type :deserialize buf ptr-) (incf ptr- (send _interpolation_type :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Curvature :md5sum-) "5eaa6f0473111dadc3e0e90330027926")
(setf (get lane_navi_info_msgs::Curvature :datatype-) "lane_navi_info_msgs/Curvature")
(setf (get lane_navi_info_msgs::Curvature :definition-)
      "float32 value
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

")



(provide :lane_navi_info_msgs/Curvature "5eaa6f0473111dadc3e0e90330027926")


