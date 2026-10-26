;; Auto-generated. Do not edit!


(when (boundp 'momenta_msgs::PredictionJunctionFeatures)
  (if (not (find-package "MOMENTA_MSGS"))
    (make-package "MOMENTA_MSGS"))
  (shadow 'PredictionJunctionFeatures (find-package "MOMENTA_MSGS")))
(unless (find-package "MOMENTA_MSGS::PREDICTIONJUNCTIONFEATURES")
  (make-package "MOMENTA_MSGS::PREDICTIONJUNCTIONFEATURES"))

(in-package "ROS")
;;//! \htmlinclude PredictionJunctionFeatures.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass momenta_msgs::PredictionJunctionFeatures
  :super ros::object
  :slots (_header _is_feature_invalid _id _type _x _y _yaw _diff_theta_car_lane _v _v_x _v_y _acc _acc_x _acc_y _diff_previous_yaw _diff_latest_yaw _diff_previous_x _diff_previous_y _diff_latest_x _diff_latest_y _diff_previous_v_x _diff_previous_v_y _diff_latest_v_x _diff_latest_v_y ))

(defmethod momenta_msgs::PredictionJunctionFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_feature_invalid __is_feature_invalid) nil)
    ((:id __id) 0)
    ((:type __type) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0.0)
    ((:diff_theta_car_lane __diff_theta_car_lane) 0.0)
    ((:v __v) 0.0)
    ((:v_x __v_x) 0.0)
    ((:v_y __v_y) 0.0)
    ((:acc __acc) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:diff_previous_yaw __diff_previous_yaw) 0.0)
    ((:diff_latest_yaw __diff_latest_yaw) 0.0)
    ((:diff_previous_x __diff_previous_x) 0.0)
    ((:diff_previous_y __diff_previous_y) 0.0)
    ((:diff_latest_x __diff_latest_x) 0.0)
    ((:diff_latest_y __diff_latest_y) 0.0)
    ((:diff_previous_v_x __diff_previous_v_x) 0.0)
    ((:diff_previous_v_y __diff_previous_v_y) 0.0)
    ((:diff_latest_v_x __diff_latest_v_x) 0.0)
    ((:diff_latest_v_y __diff_latest_v_y) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_feature_invalid __is_feature_invalid)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (float __yaw))
   (setq _diff_theta_car_lane (float __diff_theta_car_lane))
   (setq _v (float __v))
   (setq _v_x (float __v_x))
   (setq _v_y (float __v_y))
   (setq _acc (float __acc))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _diff_previous_yaw (float __diff_previous_yaw))
   (setq _diff_latest_yaw (float __diff_latest_yaw))
   (setq _diff_previous_x (float __diff_previous_x))
   (setq _diff_previous_y (float __diff_previous_y))
   (setq _diff_latest_x (float __diff_latest_x))
   (setq _diff_latest_y (float __diff_latest_y))
   (setq _diff_previous_v_x (float __diff_previous_v_x))
   (setq _diff_previous_v_y (float __diff_previous_v_y))
   (setq _diff_latest_v_x (float __diff_latest_v_x))
   (setq _diff_latest_v_y (float __diff_latest_v_y))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_feature_invalid
   (&optional (__is_feature_invalid :null))
   (if (not (eq __is_feature_invalid :null)) (setq _is_feature_invalid __is_feature_invalid)) _is_feature_invalid)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:diff_theta_car_lane
   (&optional __diff_theta_car_lane)
   (if __diff_theta_car_lane (setq _diff_theta_car_lane __diff_theta_car_lane)) _diff_theta_car_lane)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:v_x
   (&optional __v_x)
   (if __v_x (setq _v_x __v_x)) _v_x)
  (:v_y
   (&optional __v_y)
   (if __v_y (setq _v_y __v_y)) _v_y)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:diff_previous_yaw
   (&optional __diff_previous_yaw)
   (if __diff_previous_yaw (setq _diff_previous_yaw __diff_previous_yaw)) _diff_previous_yaw)
  (:diff_latest_yaw
   (&optional __diff_latest_yaw)
   (if __diff_latest_yaw (setq _diff_latest_yaw __diff_latest_yaw)) _diff_latest_yaw)
  (:diff_previous_x
   (&optional __diff_previous_x)
   (if __diff_previous_x (setq _diff_previous_x __diff_previous_x)) _diff_previous_x)
  (:diff_previous_y
   (&optional __diff_previous_y)
   (if __diff_previous_y (setq _diff_previous_y __diff_previous_y)) _diff_previous_y)
  (:diff_latest_x
   (&optional __diff_latest_x)
   (if __diff_latest_x (setq _diff_latest_x __diff_latest_x)) _diff_latest_x)
  (:diff_latest_y
   (&optional __diff_latest_y)
   (if __diff_latest_y (setq _diff_latest_y __diff_latest_y)) _diff_latest_y)
  (:diff_previous_v_x
   (&optional __diff_previous_v_x)
   (if __diff_previous_v_x (setq _diff_previous_v_x __diff_previous_v_x)) _diff_previous_v_x)
  (:diff_previous_v_y
   (&optional __diff_previous_v_y)
   (if __diff_previous_v_y (setq _diff_previous_v_y __diff_previous_v_y)) _diff_previous_v_y)
  (:diff_latest_v_x
   (&optional __diff_latest_v_x)
   (if __diff_latest_v_x (setq _diff_latest_v_x __diff_latest_v_x)) _diff_latest_v_x)
  (:diff_latest_v_y
   (&optional __diff_latest_v_y)
   (if __diff_latest_v_y (setq _diff_latest_v_y __diff_latest_v_y)) _diff_latest_v_y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_feature_invalid
    1
    ;; int32 _id
    4
    ;; int32 _type
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _yaw
    4
    ;; float32 _diff_theta_car_lane
    4
    ;; float32 _v
    4
    ;; float32 _v_x
    4
    ;; float32 _v_y
    4
    ;; float32 _acc
    4
    ;; float32 _acc_x
    4
    ;; float32 _acc_y
    4
    ;; float32 _diff_previous_yaw
    4
    ;; float32 _diff_latest_yaw
    4
    ;; float32 _diff_previous_x
    4
    ;; float32 _diff_previous_y
    4
    ;; float32 _diff_latest_x
    4
    ;; float32 _diff_latest_y
    4
    ;; float32 _diff_previous_v_x
    4
    ;; float32 _diff_previous_v_y
    4
    ;; float32 _diff_latest_v_x
    4
    ;; float32 _diff_latest_v_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_feature_invalid
       (if _is_feature_invalid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_theta_car_lane
       (sys::poke _diff_theta_car_lane (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v
       (sys::poke _v (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_x
       (sys::poke _v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_y
       (sys::poke _v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_previous_yaw
       (sys::poke _diff_previous_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_latest_yaw
       (sys::poke _diff_latest_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_previous_x
       (sys::poke _diff_previous_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_previous_y
       (sys::poke _diff_previous_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_latest_x
       (sys::poke _diff_latest_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_latest_y
       (sys::poke _diff_latest_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_previous_v_x
       (sys::poke _diff_previous_v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_previous_v_y
       (sys::poke _diff_previous_v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_latest_v_x
       (sys::poke _diff_latest_v_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _diff_latest_v_y
       (sys::poke _diff_latest_v_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_feature_invalid
     (setq _is_feature_invalid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_theta_car_lane
     (setq _diff_theta_car_lane (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v
     (setq _v (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_x
     (setq _v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_y
     (setq _v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc
     (setq _acc (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_x
     (setq _acc_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _acc_y
     (setq _acc_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_previous_yaw
     (setq _diff_previous_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_latest_yaw
     (setq _diff_latest_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_previous_x
     (setq _diff_previous_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_previous_y
     (setq _diff_previous_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_latest_x
     (setq _diff_latest_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_latest_y
     (setq _diff_latest_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_previous_v_x
     (setq _diff_previous_v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_previous_v_y
     (setq _diff_previous_v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_latest_v_x
     (setq _diff_latest_v_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _diff_latest_v_y
     (setq _diff_latest_v_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get momenta_msgs::PredictionJunctionFeatures :md5sum-) "5dad8ff97f78ec2cbfac4e9c6552482b")
(setf (get momenta_msgs::PredictionJunctionFeatures :datatype-) "momenta_msgs/PredictionJunctionFeatures")
(setf (get momenta_msgs::PredictionJunctionFeatures :definition-)
      "std_msgs/Header header
bool is_feature_invalid
int32 id
int32 type
float32 x
float32 y
float32 yaw
float32 diff_theta_car_lane
float32 v
float32 v_x
float32 v_y
float32 acc
float32 acc_x
float32 acc_y
float32 diff_previous_yaw
float32 diff_latest_yaw
float32 diff_previous_x
float32 diff_previous_y
float32 diff_latest_x
float32 diff_latest_y
float32 diff_previous_v_x
float32 diff_previous_v_y
float32 diff_latest_v_x
float32 diff_latest_v_y

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :momenta_msgs/PredictionJunctionFeatures "5dad8ff97f78ec2cbfac4e9c6552482b")


