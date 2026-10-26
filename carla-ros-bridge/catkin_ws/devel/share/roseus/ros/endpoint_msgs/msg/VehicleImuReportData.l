;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleImuReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleImuReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEIMUREPORTDATA")
  (make-package "ENDPOINT_MSGS::VEHICLEIMUREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleImuReportData.msg.html


(defclass endpoint_msgs::VehicleImuReportData
  :super ros::object
  :slots (_timestamp_us _linear_acceleration_lat _linear_acceleration_lon _linear_acceleration_vert _angular_velocity_roll _angular_velocity_pitch _angular_velocity_yaw _valid ))

(defmethod endpoint_msgs::VehicleImuReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:linear_acceleration_lat __linear_acceleration_lat) 0.0)
    ((:linear_acceleration_lon __linear_acceleration_lon) 0.0)
    ((:linear_acceleration_vert __linear_acceleration_vert) 0.0)
    ((:angular_velocity_roll __angular_velocity_roll) 0.0)
    ((:angular_velocity_pitch __angular_velocity_pitch) 0.0)
    ((:angular_velocity_yaw __angular_velocity_yaw) 0.0)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _linear_acceleration_lat (float __linear_acceleration_lat))
   (setq _linear_acceleration_lon (float __linear_acceleration_lon))
   (setq _linear_acceleration_vert (float __linear_acceleration_vert))
   (setq _angular_velocity_roll (float __angular_velocity_roll))
   (setq _angular_velocity_pitch (float __angular_velocity_pitch))
   (setq _angular_velocity_yaw (float __angular_velocity_yaw))
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:linear_acceleration_lat
   (&optional __linear_acceleration_lat)
   (if __linear_acceleration_lat (setq _linear_acceleration_lat __linear_acceleration_lat)) _linear_acceleration_lat)
  (:linear_acceleration_lon
   (&optional __linear_acceleration_lon)
   (if __linear_acceleration_lon (setq _linear_acceleration_lon __linear_acceleration_lon)) _linear_acceleration_lon)
  (:linear_acceleration_vert
   (&optional __linear_acceleration_vert)
   (if __linear_acceleration_vert (setq _linear_acceleration_vert __linear_acceleration_vert)) _linear_acceleration_vert)
  (:angular_velocity_roll
   (&optional __angular_velocity_roll)
   (if __angular_velocity_roll (setq _angular_velocity_roll __angular_velocity_roll)) _angular_velocity_roll)
  (:angular_velocity_pitch
   (&optional __angular_velocity_pitch)
   (if __angular_velocity_pitch (setq _angular_velocity_pitch __angular_velocity_pitch)) _angular_velocity_pitch)
  (:angular_velocity_yaw
   (&optional __angular_velocity_yaw)
   (if __angular_velocity_yaw (setq _angular_velocity_yaw __angular_velocity_yaw)) _angular_velocity_yaw)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _linear_acceleration_lat
    4
    ;; float32 _linear_acceleration_lon
    4
    ;; float32 _linear_acceleration_vert
    4
    ;; float32 _angular_velocity_roll
    4
    ;; float32 _angular_velocity_pitch
    4
    ;; float32 _angular_velocity_yaw
    4
    ;; bool _valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _timestamp_us
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp_us (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp_us . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp_us . bv) 1) -1) s))
             ((and (class _timestamp_us) (= (length (_timestamp_us . bv)) 1)) ;; big1
              (write-long (elt (_timestamp_us . bv) 0) s)
              (write-long (if (>= _timestamp_us 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp_us s)(write-long (if (>= _timestamp_us 0) 0 #xffffffff) s)))
     ;; float32 _linear_acceleration_lat
       (sys::poke _linear_acceleration_lat (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_acceleration_lon
       (sys::poke _linear_acceleration_lon (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_acceleration_vert
       (sys::poke _linear_acceleration_vert (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity_roll
       (sys::poke _angular_velocity_roll (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity_pitch
       (sys::poke _angular_velocity_pitch (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_velocity_yaw
       (sys::poke _angular_velocity_yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _timestamp_us
     
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp_us (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _linear_acceleration_lat
     (setq _linear_acceleration_lat (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_acceleration_lon
     (setq _linear_acceleration_lon (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_acceleration_vert
     (setq _linear_acceleration_vert (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity_roll
     (setq _angular_velocity_roll (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity_pitch
     (setq _angular_velocity_pitch (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_velocity_yaw
     (setq _angular_velocity_yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleImuReportData :md5sum-) "a88bce10ffda34b3908a00ee4f04bd9e")
(setf (get endpoint_msgs::VehicleImuReportData :datatype-) "endpoint_msgs/VehicleImuReportData")
(setf (get endpoint_msgs::VehicleImuReportData :definition-)
      "uint64 timestamp_us
float32 linear_acceleration_lat
float32 linear_acceleration_lon
float32 linear_acceleration_vert
float32 angular_velocity_roll
float32 angular_velocity_pitch
float32 angular_velocity_yaw
bool valid

")



(provide :endpoint_msgs/VehicleImuReportData "a88bce10ffda34b3908a00ee4f04bd9e")


