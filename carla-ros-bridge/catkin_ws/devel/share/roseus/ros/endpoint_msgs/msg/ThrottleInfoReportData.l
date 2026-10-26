;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleInfoReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleInfoReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLEINFOREPORTDATA")
  (make-package "ENDPOINT_MSGS::THROTTLEINFOREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude ThrottleInfoReportData.msg.html


(defclass endpoint_msgs::ThrottleInfoReportData
  :super ros::object
  :slots (_timestamp_us _front_left_mot_rpm _front_left_mot_rpm_valid _front_right_mot_rpm _front_right_mot_rpm_valid _rear_left_mot_rpm _rear_left_mot_rpm_valid _rear_right_mot_rpm _rear_right_mot_rpm_valid _throttle_pedal_percent _throttle_pedal_rate _vehicle_speed_average _vehicle_speed_average_valid _vehicle_mileage _throttle_torque_delivery _throttle_torque_delivery_valid _pressure _input_shaft_speed _output_shaft_speed _curr_transmission_gear _curr_gear_ration _input_shaft_speed_valid _output_shaft_speed_valid _curr_transmission_gear_valid _curr_gear_ration_valid _reserved1 _reserved2 ))

(defmethod endpoint_msgs::ThrottleInfoReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:front_left_mot_rpm __front_left_mot_rpm) 0.0)
    ((:front_left_mot_rpm_valid __front_left_mot_rpm_valid) nil)
    ((:front_right_mot_rpm __front_right_mot_rpm) 0.0)
    ((:front_right_mot_rpm_valid __front_right_mot_rpm_valid) nil)
    ((:rear_left_mot_rpm __rear_left_mot_rpm) 0.0)
    ((:rear_left_mot_rpm_valid __rear_left_mot_rpm_valid) nil)
    ((:rear_right_mot_rpm __rear_right_mot_rpm) 0.0)
    ((:rear_right_mot_rpm_valid __rear_right_mot_rpm_valid) nil)
    ((:throttle_pedal_percent __throttle_pedal_percent) 0.0)
    ((:throttle_pedal_rate __throttle_pedal_rate) 0.0)
    ((:vehicle_speed_average __vehicle_speed_average) 0.0)
    ((:vehicle_speed_average_valid __vehicle_speed_average_valid) nil)
    ((:vehicle_mileage __vehicle_mileage) 0.0)
    ((:throttle_torque_delivery __throttle_torque_delivery) 0.0)
    ((:throttle_torque_delivery_valid __throttle_torque_delivery_valid) nil)
    ((:pressure __pressure) nil)
    ((:input_shaft_speed __input_shaft_speed) 0.0)
    ((:output_shaft_speed __output_shaft_speed) 0.0)
    ((:curr_transmission_gear __curr_transmission_gear) 0)
    ((:curr_gear_ration __curr_gear_ration) 0.0)
    ((:input_shaft_speed_valid __input_shaft_speed_valid) nil)
    ((:output_shaft_speed_valid __output_shaft_speed_valid) nil)
    ((:curr_transmission_gear_valid __curr_transmission_gear_valid) nil)
    ((:curr_gear_ration_valid __curr_gear_ration_valid) nil)
    ((:reserved1 __reserved1) 0.0)
    ((:reserved2 __reserved2) 0.0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _front_left_mot_rpm (float __front_left_mot_rpm))
   (setq _front_left_mot_rpm_valid __front_left_mot_rpm_valid)
   (setq _front_right_mot_rpm (float __front_right_mot_rpm))
   (setq _front_right_mot_rpm_valid __front_right_mot_rpm_valid)
   (setq _rear_left_mot_rpm (float __rear_left_mot_rpm))
   (setq _rear_left_mot_rpm_valid __rear_left_mot_rpm_valid)
   (setq _rear_right_mot_rpm (float __rear_right_mot_rpm))
   (setq _rear_right_mot_rpm_valid __rear_right_mot_rpm_valid)
   (setq _throttle_pedal_percent (float __throttle_pedal_percent))
   (setq _throttle_pedal_rate (float __throttle_pedal_rate))
   (setq _vehicle_speed_average (float __vehicle_speed_average))
   (setq _vehicle_speed_average_valid __vehicle_speed_average_valid)
   (setq _vehicle_mileage (float __vehicle_mileage))
   (setq _throttle_torque_delivery (float __throttle_torque_delivery))
   (setq _throttle_torque_delivery_valid __throttle_torque_delivery_valid)
   (setq _pressure __pressure)
   (setq _input_shaft_speed (float __input_shaft_speed))
   (setq _output_shaft_speed (float __output_shaft_speed))
   (setq _curr_transmission_gear (round __curr_transmission_gear))
   (setq _curr_gear_ration (float __curr_gear_ration))
   (setq _input_shaft_speed_valid __input_shaft_speed_valid)
   (setq _output_shaft_speed_valid __output_shaft_speed_valid)
   (setq _curr_transmission_gear_valid __curr_transmission_gear_valid)
   (setq _curr_gear_ration_valid __curr_gear_ration_valid)
   (setq _reserved1 (float __reserved1))
   (setq _reserved2 (float __reserved2))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:front_left_mot_rpm
   (&optional __front_left_mot_rpm)
   (if __front_left_mot_rpm (setq _front_left_mot_rpm __front_left_mot_rpm)) _front_left_mot_rpm)
  (:front_left_mot_rpm_valid
   (&optional (__front_left_mot_rpm_valid :null))
   (if (not (eq __front_left_mot_rpm_valid :null)) (setq _front_left_mot_rpm_valid __front_left_mot_rpm_valid)) _front_left_mot_rpm_valid)
  (:front_right_mot_rpm
   (&optional __front_right_mot_rpm)
   (if __front_right_mot_rpm (setq _front_right_mot_rpm __front_right_mot_rpm)) _front_right_mot_rpm)
  (:front_right_mot_rpm_valid
   (&optional (__front_right_mot_rpm_valid :null))
   (if (not (eq __front_right_mot_rpm_valid :null)) (setq _front_right_mot_rpm_valid __front_right_mot_rpm_valid)) _front_right_mot_rpm_valid)
  (:rear_left_mot_rpm
   (&optional __rear_left_mot_rpm)
   (if __rear_left_mot_rpm (setq _rear_left_mot_rpm __rear_left_mot_rpm)) _rear_left_mot_rpm)
  (:rear_left_mot_rpm_valid
   (&optional (__rear_left_mot_rpm_valid :null))
   (if (not (eq __rear_left_mot_rpm_valid :null)) (setq _rear_left_mot_rpm_valid __rear_left_mot_rpm_valid)) _rear_left_mot_rpm_valid)
  (:rear_right_mot_rpm
   (&optional __rear_right_mot_rpm)
   (if __rear_right_mot_rpm (setq _rear_right_mot_rpm __rear_right_mot_rpm)) _rear_right_mot_rpm)
  (:rear_right_mot_rpm_valid
   (&optional (__rear_right_mot_rpm_valid :null))
   (if (not (eq __rear_right_mot_rpm_valid :null)) (setq _rear_right_mot_rpm_valid __rear_right_mot_rpm_valid)) _rear_right_mot_rpm_valid)
  (:throttle_pedal_percent
   (&optional __throttle_pedal_percent)
   (if __throttle_pedal_percent (setq _throttle_pedal_percent __throttle_pedal_percent)) _throttle_pedal_percent)
  (:throttle_pedal_rate
   (&optional __throttle_pedal_rate)
   (if __throttle_pedal_rate (setq _throttle_pedal_rate __throttle_pedal_rate)) _throttle_pedal_rate)
  (:vehicle_speed_average
   (&optional __vehicle_speed_average)
   (if __vehicle_speed_average (setq _vehicle_speed_average __vehicle_speed_average)) _vehicle_speed_average)
  (:vehicle_speed_average_valid
   (&optional (__vehicle_speed_average_valid :null))
   (if (not (eq __vehicle_speed_average_valid :null)) (setq _vehicle_speed_average_valid __vehicle_speed_average_valid)) _vehicle_speed_average_valid)
  (:vehicle_mileage
   (&optional __vehicle_mileage)
   (if __vehicle_mileage (setq _vehicle_mileage __vehicle_mileage)) _vehicle_mileage)
  (:throttle_torque_delivery
   (&optional __throttle_torque_delivery)
   (if __throttle_torque_delivery (setq _throttle_torque_delivery __throttle_torque_delivery)) _throttle_torque_delivery)
  (:throttle_torque_delivery_valid
   (&optional (__throttle_torque_delivery_valid :null))
   (if (not (eq __throttle_torque_delivery_valid :null)) (setq _throttle_torque_delivery_valid __throttle_torque_delivery_valid)) _throttle_torque_delivery_valid)
  (:pressure
   (&optional (__pressure :null))
   (if (not (eq __pressure :null)) (setq _pressure __pressure)) _pressure)
  (:input_shaft_speed
   (&optional __input_shaft_speed)
   (if __input_shaft_speed (setq _input_shaft_speed __input_shaft_speed)) _input_shaft_speed)
  (:output_shaft_speed
   (&optional __output_shaft_speed)
   (if __output_shaft_speed (setq _output_shaft_speed __output_shaft_speed)) _output_shaft_speed)
  (:curr_transmission_gear
   (&optional __curr_transmission_gear)
   (if __curr_transmission_gear (setq _curr_transmission_gear __curr_transmission_gear)) _curr_transmission_gear)
  (:curr_gear_ration
   (&optional __curr_gear_ration)
   (if __curr_gear_ration (setq _curr_gear_ration __curr_gear_ration)) _curr_gear_ration)
  (:input_shaft_speed_valid
   (&optional (__input_shaft_speed_valid :null))
   (if (not (eq __input_shaft_speed_valid :null)) (setq _input_shaft_speed_valid __input_shaft_speed_valid)) _input_shaft_speed_valid)
  (:output_shaft_speed_valid
   (&optional (__output_shaft_speed_valid :null))
   (if (not (eq __output_shaft_speed_valid :null)) (setq _output_shaft_speed_valid __output_shaft_speed_valid)) _output_shaft_speed_valid)
  (:curr_transmission_gear_valid
   (&optional (__curr_transmission_gear_valid :null))
   (if (not (eq __curr_transmission_gear_valid :null)) (setq _curr_transmission_gear_valid __curr_transmission_gear_valid)) _curr_transmission_gear_valid)
  (:curr_gear_ration_valid
   (&optional (__curr_gear_ration_valid :null))
   (if (not (eq __curr_gear_ration_valid :null)) (setq _curr_gear_ration_valid __curr_gear_ration_valid)) _curr_gear_ration_valid)
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; float32 _front_left_mot_rpm
    4
    ;; bool _front_left_mot_rpm_valid
    1
    ;; float32 _front_right_mot_rpm
    4
    ;; bool _front_right_mot_rpm_valid
    1
    ;; float32 _rear_left_mot_rpm
    4
    ;; bool _rear_left_mot_rpm_valid
    1
    ;; float32 _rear_right_mot_rpm
    4
    ;; bool _rear_right_mot_rpm_valid
    1
    ;; float32 _throttle_pedal_percent
    4
    ;; float32 _throttle_pedal_rate
    4
    ;; float32 _vehicle_speed_average
    4
    ;; bool _vehicle_speed_average_valid
    1
    ;; float32 _vehicle_mileage
    4
    ;; float32 _throttle_torque_delivery
    4
    ;; bool _throttle_torque_delivery_valid
    1
    ;; bool _pressure
    1
    ;; float32 _input_shaft_speed
    4
    ;; float32 _output_shaft_speed
    4
    ;; int8 _curr_transmission_gear
    1
    ;; float32 _curr_gear_ration
    4
    ;; bool _input_shaft_speed_valid
    1
    ;; bool _output_shaft_speed_valid
    1
    ;; bool _curr_transmission_gear_valid
    1
    ;; bool _curr_gear_ration_valid
    1
    ;; float32 _reserved1
    4
    ;; float32 _reserved2
    4
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
     ;; float32 _front_left_mot_rpm
       (sys::poke _front_left_mot_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _front_left_mot_rpm_valid
       (if _front_left_mot_rpm_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _front_right_mot_rpm
       (sys::poke _front_right_mot_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _front_right_mot_rpm_valid
       (if _front_right_mot_rpm_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _rear_left_mot_rpm
       (sys::poke _rear_left_mot_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rear_left_mot_rpm_valid
       (if _rear_left_mot_rpm_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _rear_right_mot_rpm
       (sys::poke _rear_right_mot_rpm (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rear_right_mot_rpm_valid
       (if _rear_right_mot_rpm_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _throttle_pedal_percent
       (sys::poke _throttle_pedal_percent (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_pedal_rate
       (sys::poke _throttle_pedal_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_speed_average
       (sys::poke _vehicle_speed_average (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vehicle_speed_average_valid
       (if _vehicle_speed_average_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vehicle_mileage
       (sys::poke _vehicle_mileage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_torque_delivery
       (sys::poke _throttle_torque_delivery (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _throttle_torque_delivery_valid
       (if _throttle_torque_delivery_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _pressure
       (if _pressure (write-byte -1 s) (write-byte 0 s))
     ;; float32 _input_shaft_speed
       (sys::poke _input_shaft_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _output_shaft_speed
       (sys::poke _output_shaft_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _curr_transmission_gear
       (write-byte _curr_transmission_gear s)
     ;; float32 _curr_gear_ration
       (sys::poke _curr_gear_ration (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _input_shaft_speed_valid
       (if _input_shaft_speed_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _output_shaft_speed_valid
       (if _output_shaft_speed_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _curr_transmission_gear_valid
       (if _curr_transmission_gear_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _curr_gear_ration_valid
       (if _curr_gear_ration_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved2
       (sys::poke _reserved2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32 _front_left_mot_rpm
     (setq _front_left_mot_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _front_left_mot_rpm_valid
     (setq _front_left_mot_rpm_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _front_right_mot_rpm
     (setq _front_right_mot_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _front_right_mot_rpm_valid
     (setq _front_right_mot_rpm_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _rear_left_mot_rpm
     (setq _rear_left_mot_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rear_left_mot_rpm_valid
     (setq _rear_left_mot_rpm_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _rear_right_mot_rpm
     (setq _rear_right_mot_rpm (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rear_right_mot_rpm_valid
     (setq _rear_right_mot_rpm_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _throttle_pedal_percent
     (setq _throttle_pedal_percent (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_pedal_rate
     (setq _throttle_pedal_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_speed_average
     (setq _vehicle_speed_average (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vehicle_speed_average_valid
     (setq _vehicle_speed_average_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vehicle_mileage
     (setq _vehicle_mileage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_torque_delivery
     (setq _throttle_torque_delivery (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _throttle_torque_delivery_valid
     (setq _throttle_torque_delivery_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pressure
     (setq _pressure (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _input_shaft_speed
     (setq _input_shaft_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _output_shaft_speed
     (setq _output_shaft_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _curr_transmission_gear
     (setq _curr_transmission_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _curr_transmission_gear 127) (setq _curr_transmission_gear (- _curr_transmission_gear 256)))
   ;; float32 _curr_gear_ration
     (setq _curr_gear_ration (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _input_shaft_speed_valid
     (setq _input_shaft_speed_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _output_shaft_speed_valid
     (setq _output_shaft_speed_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _curr_transmission_gear_valid
     (setq _curr_transmission_gear_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _curr_gear_ration_valid
     (setq _curr_gear_ration_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get endpoint_msgs::ThrottleInfoReportData :md5sum-) "585fc9da6858b598f65e3db3cfbda26e")
(setf (get endpoint_msgs::ThrottleInfoReportData :datatype-) "endpoint_msgs/ThrottleInfoReportData")
(setf (get endpoint_msgs::ThrottleInfoReportData :definition-)
      "uint64 timestamp_us
float32 front_left_mot_rpm
bool front_left_mot_rpm_valid
float32 front_right_mot_rpm
bool front_right_mot_rpm_valid
float32 rear_left_mot_rpm
bool rear_left_mot_rpm_valid
float32 rear_right_mot_rpm
bool rear_right_mot_rpm_valid
float32 throttle_pedal_percent
float32 throttle_pedal_rate
float32 vehicle_speed_average
bool vehicle_speed_average_valid
float32 vehicle_mileage
float32 throttle_torque_delivery
bool throttle_torque_delivery_valid
bool pressure
float32 input_shaft_speed
float32 output_shaft_speed
int8 curr_transmission_gear
float32 curr_gear_ration
bool input_shaft_speed_valid
bool output_shaft_speed_valid
bool curr_transmission_gear_valid
bool curr_gear_ration_valid
float32 reserved1
float32 reserved2

")



(provide :endpoint_msgs/ThrottleInfoReportData "585fc9da6858b598f65e3db3cfbda26e")


