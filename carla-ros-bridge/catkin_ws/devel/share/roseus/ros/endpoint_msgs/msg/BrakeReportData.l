;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKEREPORTDATA")
  (make-package "ENDPOINT_MSGS::BRAKEREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude BrakeReportData.msg.html


(defclass endpoint_msgs::BrakeReportData
  :super ros::object
  :slots (_timestamp_us _driver_work_type _brake_type _pedal_input _brake_command _brake_output _override _ahb_exec_brake_force _ahb_exec_brake_force_valid _ready _valid ))

(defmethod endpoint_msgs::BrakeReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:brake_type __brake_type) (instance endpoint_msgs::BrakeType :init))
    ((:pedal_input __pedal_input) 0.0)
    ((:brake_command __brake_command) 0.0)
    ((:brake_output __brake_output) 0.0)
    ((:override __override) nil)
    ((:ahb_exec_brake_force __ahb_exec_brake_force) 0.0)
    ((:ahb_exec_brake_force_valid __ahb_exec_brake_force_valid) nil)
    ((:ready __ready) nil)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _driver_work_type __driver_work_type)
   (setq _brake_type __brake_type)
   (setq _pedal_input (float __pedal_input))
   (setq _brake_command (float __brake_command))
   (setq _brake_output (float __brake_output))
   (setq _override __override)
   (setq _ahb_exec_brake_force (float __ahb_exec_brake_force))
   (setq _ahb_exec_brake_force_valid __ahb_exec_brake_force_valid)
   (setq _ready __ready)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:driver_work_type
   (&rest __driver_work_type)
   (if (keywordp (car __driver_work_type))
       (send* _driver_work_type __driver_work_type)
     (progn
       (if __driver_work_type (setq _driver_work_type (car __driver_work_type)))
       _driver_work_type)))
  (:brake_type
   (&rest __brake_type)
   (if (keywordp (car __brake_type))
       (send* _brake_type __brake_type)
     (progn
       (if __brake_type (setq _brake_type (car __brake_type)))
       _brake_type)))
  (:pedal_input
   (&optional __pedal_input)
   (if __pedal_input (setq _pedal_input __pedal_input)) _pedal_input)
  (:brake_command
   (&optional __brake_command)
   (if __brake_command (setq _brake_command __brake_command)) _brake_command)
  (:brake_output
   (&optional __brake_output)
   (if __brake_output (setq _brake_output __brake_output)) _brake_output)
  (:override
   (&optional (__override :null))
   (if (not (eq __override :null)) (setq _override __override)) _override)
  (:ahb_exec_brake_force
   (&optional __ahb_exec_brake_force)
   (if __ahb_exec_brake_force (setq _ahb_exec_brake_force __ahb_exec_brake_force)) _ahb_exec_brake_force)
  (:ahb_exec_brake_force_valid
   (&optional (__ahb_exec_brake_force_valid :null))
   (if (not (eq __ahb_exec_brake_force_valid :null)) (setq _ahb_exec_brake_force_valid __ahb_exec_brake_force_valid)) _ahb_exec_brake_force_valid)
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
    ;; endpoint_msgs/WorkType _driver_work_type
    (send _driver_work_type :serialization-length)
    ;; endpoint_msgs/BrakeType _brake_type
    (send _brake_type :serialization-length)
    ;; float32 _pedal_input
    4
    ;; float32 _brake_command
    4
    ;; float32 _brake_output
    4
    ;; bool _override
    1
    ;; float32 _ahb_exec_brake_force
    4
    ;; bool _ahb_exec_brake_force_valid
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
     ;; endpoint_msgs/WorkType _driver_work_type
       (send _driver_work_type :serialize s)
     ;; endpoint_msgs/BrakeType _brake_type
       (send _brake_type :serialize s)
     ;; float32 _pedal_input
       (sys::poke _pedal_input (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_command
       (sys::poke _brake_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brake_output
       (sys::poke _brake_output (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _override
       (if _override (write-byte -1 s) (write-byte 0 s))
     ;; float32 _ahb_exec_brake_force
       (sys::poke _ahb_exec_brake_force (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _ahb_exec_brake_force_valid
       (if _ahb_exec_brake_force_valid (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/WorkType _driver_work_type
     (send _driver_work_type :deserialize buf ptr-) (incf ptr- (send _driver_work_type :serialization-length))
   ;; endpoint_msgs/BrakeType _brake_type
     (send _brake_type :deserialize buf ptr-) (incf ptr- (send _brake_type :serialization-length))
   ;; float32 _pedal_input
     (setq _pedal_input (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_command
     (setq _brake_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brake_output
     (setq _brake_output (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _override
     (setq _override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _ahb_exec_brake_force
     (setq _ahb_exec_brake_force (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _ahb_exec_brake_force_valid
     (setq _ahb_exec_brake_force_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ready
     (setq _ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::BrakeReportData :md5sum-) "bf668966e40d0ee16cd0a310cbbab49e")
(setf (get endpoint_msgs::BrakeReportData :datatype-) "endpoint_msgs/BrakeReportData")
(setf (get endpoint_msgs::BrakeReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/BrakeType brake_type
float32 pedal_input
float32 brake_command
float32 brake_output
bool override
float32 ahb_exec_brake_force
bool ahb_exec_brake_force_valid
bool ready
bool valid

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

================================================================================
MSG: endpoint_msgs/BrakeType
uint8 PEDAL = 1
uint8 DECELERATION = 2
uint8 MASTER_CYLINDERPRESSURE = 3
uint8 WHEEL_CYLINDERPRESSURE = 4
uint8 TORQUE = 5
uint8 DISTANCE = 6
uint8 SV = 7
uint8 RESERVED = 8
uint8 value

")



(provide :endpoint_msgs/BrakeReportData "bf668966e40d0ee16cd0a310cbbab49e")


