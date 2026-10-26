;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ThrottleReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ThrottleReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::THROTTLEREPORTDATA")
  (make-package "ENDPOINT_MSGS::THROTTLEREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude ThrottleReportData.msg.html


(defclass endpoint_msgs::ThrottleReportData
  :super ros::object
  :slots (_timestamp_us _type _driver_work_type _pedal_input _command _throttle_output _override _vcu_max_neg_torque _vcu_max_pos_torque _vcu_max_neg_torque_valid _vcu_max_pos_torque_valid _vcu_exec_throttle_torque _vcu_exec_throttle_torque_valid _ready _valid ))

(defmethod endpoint_msgs::ThrottleReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:type __type) (instance endpoint_msgs::ThrottleType :init))
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:pedal_input __pedal_input) 0.0)
    ((:command __command) 0.0)
    ((:throttle_output __throttle_output) 0.0)
    ((:override __override) nil)
    ((:vcu_max_neg_torque __vcu_max_neg_torque) 0.0)
    ((:vcu_max_pos_torque __vcu_max_pos_torque) 0.0)
    ((:vcu_max_neg_torque_valid __vcu_max_neg_torque_valid) nil)
    ((:vcu_max_pos_torque_valid __vcu_max_pos_torque_valid) nil)
    ((:vcu_exec_throttle_torque __vcu_exec_throttle_torque) 0.0)
    ((:vcu_exec_throttle_torque_valid __vcu_exec_throttle_torque_valid) nil)
    ((:ready __ready) nil)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _type __type)
   (setq _driver_work_type __driver_work_type)
   (setq _pedal_input (float __pedal_input))
   (setq _command (float __command))
   (setq _throttle_output (float __throttle_output))
   (setq _override __override)
   (setq _vcu_max_neg_torque (float __vcu_max_neg_torque))
   (setq _vcu_max_pos_torque (float __vcu_max_pos_torque))
   (setq _vcu_max_neg_torque_valid __vcu_max_neg_torque_valid)
   (setq _vcu_max_pos_torque_valid __vcu_max_pos_torque_valid)
   (setq _vcu_exec_throttle_torque (float __vcu_exec_throttle_torque))
   (setq _vcu_exec_throttle_torque_valid __vcu_exec_throttle_torque_valid)
   (setq _ready __ready)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:driver_work_type
   (&rest __driver_work_type)
   (if (keywordp (car __driver_work_type))
       (send* _driver_work_type __driver_work_type)
     (progn
       (if __driver_work_type (setq _driver_work_type (car __driver_work_type)))
       _driver_work_type)))
  (:pedal_input
   (&optional __pedal_input)
   (if __pedal_input (setq _pedal_input __pedal_input)) _pedal_input)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:throttle_output
   (&optional __throttle_output)
   (if __throttle_output (setq _throttle_output __throttle_output)) _throttle_output)
  (:override
   (&optional (__override :null))
   (if (not (eq __override :null)) (setq _override __override)) _override)
  (:vcu_max_neg_torque
   (&optional __vcu_max_neg_torque)
   (if __vcu_max_neg_torque (setq _vcu_max_neg_torque __vcu_max_neg_torque)) _vcu_max_neg_torque)
  (:vcu_max_pos_torque
   (&optional __vcu_max_pos_torque)
   (if __vcu_max_pos_torque (setq _vcu_max_pos_torque __vcu_max_pos_torque)) _vcu_max_pos_torque)
  (:vcu_max_neg_torque_valid
   (&optional (__vcu_max_neg_torque_valid :null))
   (if (not (eq __vcu_max_neg_torque_valid :null)) (setq _vcu_max_neg_torque_valid __vcu_max_neg_torque_valid)) _vcu_max_neg_torque_valid)
  (:vcu_max_pos_torque_valid
   (&optional (__vcu_max_pos_torque_valid :null))
   (if (not (eq __vcu_max_pos_torque_valid :null)) (setq _vcu_max_pos_torque_valid __vcu_max_pos_torque_valid)) _vcu_max_pos_torque_valid)
  (:vcu_exec_throttle_torque
   (&optional __vcu_exec_throttle_torque)
   (if __vcu_exec_throttle_torque (setq _vcu_exec_throttle_torque __vcu_exec_throttle_torque)) _vcu_exec_throttle_torque)
  (:vcu_exec_throttle_torque_valid
   (&optional (__vcu_exec_throttle_torque_valid :null))
   (if (not (eq __vcu_exec_throttle_torque_valid :null)) (setq _vcu_exec_throttle_torque_valid __vcu_exec_throttle_torque_valid)) _vcu_exec_throttle_torque_valid)
  (:ready
   (&optional (__ready :null))
   (if (not (eq __ready :null)) (setq _ready __ready)) _ready)
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/ThrottleType _type
    (send _type :serialization-length)
    ;; endpoint_msgs/WorkType _driver_work_type
    (send _driver_work_type :serialization-length)
    ;; float32 _pedal_input
    4
    ;; float32 _command
    4
    ;; float32 _throttle_output
    4
    ;; bool _override
    1
    ;; float32 _vcu_max_neg_torque
    4
    ;; float32 _vcu_max_pos_torque
    4
    ;; bool _vcu_max_neg_torque_valid
    1
    ;; bool _vcu_max_pos_torque_valid
    1
    ;; float32 _vcu_exec_throttle_torque
    4
    ;; bool _vcu_exec_throttle_torque_valid
    1
    ;; bool _ready
    1
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
     ;; endpoint_msgs/ThrottleType _type
       (send _type :serialize s)
     ;; endpoint_msgs/WorkType _driver_work_type
       (send _driver_work_type :serialize s)
     ;; float32 _pedal_input
       (sys::poke _pedal_input (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _command
       (sys::poke _command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _throttle_output
       (sys::poke _throttle_output (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _override
       (if _override (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vcu_max_neg_torque
       (sys::poke _vcu_max_neg_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vcu_max_pos_torque
       (sys::poke _vcu_max_pos_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vcu_max_neg_torque_valid
       (if _vcu_max_neg_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vcu_max_pos_torque_valid
       (if _vcu_max_pos_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vcu_exec_throttle_torque
       (sys::poke _vcu_exec_throttle_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _vcu_exec_throttle_torque_valid
       (if _vcu_exec_throttle_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _ready
       (if _ready (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/ThrottleType _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; endpoint_msgs/WorkType _driver_work_type
     (send _driver_work_type :deserialize buf ptr-) (incf ptr- (send _driver_work_type :serialization-length))
   ;; float32 _pedal_input
     (setq _pedal_input (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _command
     (setq _command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _throttle_output
     (setq _throttle_output (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _override
     (setq _override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vcu_max_neg_torque
     (setq _vcu_max_neg_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vcu_max_pos_torque
     (setq _vcu_max_pos_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vcu_max_neg_torque_valid
     (setq _vcu_max_neg_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vcu_max_pos_torque_valid
     (setq _vcu_max_pos_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vcu_exec_throttle_torque
     (setq _vcu_exec_throttle_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _vcu_exec_throttle_torque_valid
     (setq _vcu_exec_throttle_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready
     (setq _ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::ThrottleReportData :md5sum-) "49ebd9dca1e8f74993b8da2ab73bd493")
(setf (get endpoint_msgs::ThrottleReportData :datatype-) "endpoint_msgs/ThrottleReportData")
(setf (get endpoint_msgs::ThrottleReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/ThrottleType type
endpoint_msgs/WorkType driver_work_type
float32 pedal_input
float32 command
float32 throttle_output
bool override
float32 vcu_max_neg_torque
float32 vcu_max_pos_torque
bool vcu_max_neg_torque_valid
bool vcu_max_pos_torque_valid
float32 vcu_exec_throttle_torque
bool vcu_exec_throttle_torque_valid
bool ready
bool valid

================================================================================
MSG: endpoint_msgs/ThrottleType
uint8 PEDAL = 0
uint8 THROTTLE = 1
uint8 TORQUE = 2
uint8 ACCELERATION = 3
uint8 SPEED = 4
uint8 SV = 5
uint8 RESERVED = 6
uint8 value

================================================================================
MSG: endpoint_msgs/WorkType
uint8 MANUALPILOT = 0
uint8 AUTOPILOT_PILOT = 1
uint8 AUTOPILOT_APA = 2
uint8 AUTOPILOT_ACC = 3
uint8 AUTOPILOT_RESERVED1 = 4
uint8 AUTOPILOT_RESERVED2 = 5
uint8 AUTOPILOT_RESERVED3 = 6
uint8 AUTOPILOT_RESERVED4 = 7
uint8 value

")



(provide :endpoint_msgs/ThrottleReportData "49ebd9dca1e8f74993b8da2ab73bd493")


