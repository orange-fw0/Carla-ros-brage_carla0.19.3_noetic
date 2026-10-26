;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SteeringCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SteeringCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::STEERINGCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::STEERINGCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude SteeringCommandData.msg.html


(defclass endpoint_msgs::SteeringCommandData
  :super ros::object
  :slots (_timestamp_us _steering_enable _steering_type _steering_command _steering_rate _rwheel_steer_mode _rwheel_command _rwheel_steer_direction ))

(defmethod endpoint_msgs::SteeringCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:steering_enable __steering_enable) nil)
    ((:steering_type __steering_type) (instance endpoint_msgs::SteeringType :init))
    ((:steering_command __steering_command) 0.0)
    ((:steering_rate __steering_rate) 0.0)
    ((:rwheel_steer_mode __rwheel_steer_mode) (instance endpoint_msgs::RWhSteerModType :init))
    ((:rwheel_command __rwheel_command) 0.0)
    ((:rwheel_steer_direction __rwheel_steer_direction) (instance endpoint_msgs::RWhSteerDirection :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _steering_enable __steering_enable)
   (setq _steering_type __steering_type)
   (setq _steering_command (float __steering_command))
   (setq _steering_rate (float __steering_rate))
   (setq _rwheel_steer_mode __rwheel_steer_mode)
   (setq _rwheel_command (float __rwheel_command))
   (setq _rwheel_steer_direction __rwheel_steer_direction)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:steering_enable
   (&optional (__steering_enable :null))
   (if (not (eq __steering_enable :null)) (setq _steering_enable __steering_enable)) _steering_enable)
  (:steering_type
   (&rest __steering_type)
   (if (keywordp (car __steering_type))
       (send* _steering_type __steering_type)
     (progn
       (if __steering_type (setq _steering_type (car __steering_type)))
       _steering_type)))
  (:steering_command
   (&optional __steering_command)
   (if __steering_command (setq _steering_command __steering_command)) _steering_command)
  (:steering_rate
   (&optional __steering_rate)
   (if __steering_rate (setq _steering_rate __steering_rate)) _steering_rate)
  (:rwheel_steer_mode
   (&rest __rwheel_steer_mode)
   (if (keywordp (car __rwheel_steer_mode))
       (send* _rwheel_steer_mode __rwheel_steer_mode)
     (progn
       (if __rwheel_steer_mode (setq _rwheel_steer_mode (car __rwheel_steer_mode)))
       _rwheel_steer_mode)))
  (:rwheel_command
   (&optional __rwheel_command)
   (if __rwheel_command (setq _rwheel_command __rwheel_command)) _rwheel_command)
  (:rwheel_steer_direction
   (&rest __rwheel_steer_direction)
   (if (keywordp (car __rwheel_steer_direction))
       (send* _rwheel_steer_direction __rwheel_steer_direction)
     (progn
       (if __rwheel_steer_direction (setq _rwheel_steer_direction (car __rwheel_steer_direction)))
       _rwheel_steer_direction)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _steering_enable
    1
    ;; endpoint_msgs/SteeringType _steering_type
    (send _steering_type :serialization-length)
    ;; float32 _steering_command
    4
    ;; float32 _steering_rate
    4
    ;; endpoint_msgs/RWhSteerModType _rwheel_steer_mode
    (send _rwheel_steer_mode :serialization-length)
    ;; float32 _rwheel_command
    4
    ;; endpoint_msgs/RWhSteerDirection _rwheel_steer_direction
    (send _rwheel_steer_direction :serialization-length)
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
     ;; bool _steering_enable
       (if _steering_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/SteeringType _steering_type
       (send _steering_type :serialize s)
     ;; float32 _steering_command
       (sys::poke _steering_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_rate
       (sys::poke _steering_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/RWhSteerModType _rwheel_steer_mode
       (send _rwheel_steer_mode :serialize s)
     ;; float32 _rwheel_command
       (sys::poke _rwheel_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/RWhSteerDirection _rwheel_steer_direction
       (send _rwheel_steer_direction :serialize s)
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
   ;; bool _steering_enable
     (setq _steering_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/SteeringType _steering_type
     (send _steering_type :deserialize buf ptr-) (incf ptr- (send _steering_type :serialization-length))
   ;; float32 _steering_command
     (setq _steering_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_rate
     (setq _steering_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/RWhSteerModType _rwheel_steer_mode
     (send _rwheel_steer_mode :deserialize buf ptr-) (incf ptr- (send _rwheel_steer_mode :serialization-length))
   ;; float32 _rwheel_command
     (setq _rwheel_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/RWhSteerDirection _rwheel_steer_direction
     (send _rwheel_steer_direction :deserialize buf ptr-) (incf ptr- (send _rwheel_steer_direction :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SteeringCommandData :md5sum-) "74daa77130cbc9d11a8502a26e4f9bc0")
(setf (get endpoint_msgs::SteeringCommandData :datatype-) "endpoint_msgs/SteeringCommandData")
(setf (get endpoint_msgs::SteeringCommandData :definition-)
      "uint64 timestamp_us
bool steering_enable
endpoint_msgs/SteeringType steering_type
float32 steering_command
float32 steering_rate
endpoint_msgs/RWhSteerModType rwheel_steer_mode
float32 rwheel_command
endpoint_msgs/RWhSteerDirection rwheel_steer_direction

================================================================================
MSG: endpoint_msgs/SteeringType
uint8 STEERING_ANGLE = 1
uint8 FRONT_WHEEL_ANGLE = 2
uint8 YAW_RATE = 3
uint8 TORQUE = 4
uint8 ANGLE_SPEED = 5
uint8 CURVATURE = 6
uint8 RESERVED = 7
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerModType
uint8 NO_REQUEST = 0
uint8 CONTROL_REQUEST = 1
uint8 LOCK_REQUEST = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

================================================================================
MSG: endpoint_msgs/RWhSteerDirection
uint8 NONE = 0
uint8 SAME_DIRECTION = 1
uint8 OPPOSITE_DIRECTION = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 value

")



(provide :endpoint_msgs/SteeringCommandData "74daa77130cbc9d11a8502a26e4f9bc0")


