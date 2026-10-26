;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SteeringReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SteeringReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::STEERINGREPORTDATA")
  (make-package "ENDPOINT_MSGS::STEERINGREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude SteeringReportData.msg.html


(defclass endpoint_msgs::SteeringReportData
  :super ros::object
  :slots (_timestamp_us _driver_work_type _steering_type _steering_cmd _steering_report _steering_wheel_angle_report _steering_wheel_torque_report _steering_follow_rate _rws_mode_report _rws_angle _override _steering_elc_assist_torque _steering_elc_assist_torque_valid _steering_total_torque _steering_total_torque_valid _eps_calibration_state _rws_direction_report _ready _valid ))

(defmethod endpoint_msgs::SteeringReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:driver_work_type __driver_work_type) (instance endpoint_msgs::WorkType :init))
    ((:steering_type __steering_type) (instance endpoint_msgs::SteeringType :init))
    ((:steering_cmd __steering_cmd) 0.0)
    ((:steering_report __steering_report) 0.0)
    ((:steering_wheel_angle_report __steering_wheel_angle_report) 0.0)
    ((:steering_wheel_torque_report __steering_wheel_torque_report) 0.0)
    ((:steering_follow_rate __steering_follow_rate) 0.0)
    ((:rws_mode_report __rws_mode_report) (instance endpoint_msgs::RWhSteerModType :init))
    ((:rws_angle __rws_angle) 0.0)
    ((:override __override) nil)
    ((:steering_elc_assist_torque __steering_elc_assist_torque) 0.0)
    ((:steering_elc_assist_torque_valid __steering_elc_assist_torque_valid) nil)
    ((:steering_total_torque __steering_total_torque) 0.0)
    ((:steering_total_torque_valid __steering_total_torque_valid) nil)
    ((:eps_calibration_state __eps_calibration_state) (instance endpoint_msgs::CalibrationType :init))
    ((:rws_direction_report __rws_direction_report) (instance endpoint_msgs::RWhSteerDirection :init))
    ((:ready __ready) nil)
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _driver_work_type __driver_work_type)
   (setq _steering_type __steering_type)
   (setq _steering_cmd (float __steering_cmd))
   (setq _steering_report (float __steering_report))
   (setq _steering_wheel_angle_report (float __steering_wheel_angle_report))
   (setq _steering_wheel_torque_report (float __steering_wheel_torque_report))
   (setq _steering_follow_rate (float __steering_follow_rate))
   (setq _rws_mode_report __rws_mode_report)
   (setq _rws_angle (float __rws_angle))
   (setq _override __override)
   (setq _steering_elc_assist_torque (float __steering_elc_assist_torque))
   (setq _steering_elc_assist_torque_valid __steering_elc_assist_torque_valid)
   (setq _steering_total_torque (float __steering_total_torque))
   (setq _steering_total_torque_valid __steering_total_torque_valid)
   (setq _eps_calibration_state __eps_calibration_state)
   (setq _rws_direction_report __rws_direction_report)
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
  (:steering_type
   (&rest __steering_type)
   (if (keywordp (car __steering_type))
       (send* _steering_type __steering_type)
     (progn
       (if __steering_type (setq _steering_type (car __steering_type)))
       _steering_type)))
  (:steering_cmd
   (&optional __steering_cmd)
   (if __steering_cmd (setq _steering_cmd __steering_cmd)) _steering_cmd)
  (:steering_report
   (&optional __steering_report)
   (if __steering_report (setq _steering_report __steering_report)) _steering_report)
  (:steering_wheel_angle_report
   (&optional __steering_wheel_angle_report)
   (if __steering_wheel_angle_report (setq _steering_wheel_angle_report __steering_wheel_angle_report)) _steering_wheel_angle_report)
  (:steering_wheel_torque_report
   (&optional __steering_wheel_torque_report)
   (if __steering_wheel_torque_report (setq _steering_wheel_torque_report __steering_wheel_torque_report)) _steering_wheel_torque_report)
  (:steering_follow_rate
   (&optional __steering_follow_rate)
   (if __steering_follow_rate (setq _steering_follow_rate __steering_follow_rate)) _steering_follow_rate)
  (:rws_mode_report
   (&rest __rws_mode_report)
   (if (keywordp (car __rws_mode_report))
       (send* _rws_mode_report __rws_mode_report)
     (progn
       (if __rws_mode_report (setq _rws_mode_report (car __rws_mode_report)))
       _rws_mode_report)))
  (:rws_angle
   (&optional __rws_angle)
   (if __rws_angle (setq _rws_angle __rws_angle)) _rws_angle)
  (:override
   (&optional (__override :null))
   (if (not (eq __override :null)) (setq _override __override)) _override)
  (:steering_elc_assist_torque
   (&optional __steering_elc_assist_torque)
   (if __steering_elc_assist_torque (setq _steering_elc_assist_torque __steering_elc_assist_torque)) _steering_elc_assist_torque)
  (:steering_elc_assist_torque_valid
   (&optional (__steering_elc_assist_torque_valid :null))
   (if (not (eq __steering_elc_assist_torque_valid :null)) (setq _steering_elc_assist_torque_valid __steering_elc_assist_torque_valid)) _steering_elc_assist_torque_valid)
  (:steering_total_torque
   (&optional __steering_total_torque)
   (if __steering_total_torque (setq _steering_total_torque __steering_total_torque)) _steering_total_torque)
  (:steering_total_torque_valid
   (&optional (__steering_total_torque_valid :null))
   (if (not (eq __steering_total_torque_valid :null)) (setq _steering_total_torque_valid __steering_total_torque_valid)) _steering_total_torque_valid)
  (:eps_calibration_state
   (&rest __eps_calibration_state)
   (if (keywordp (car __eps_calibration_state))
       (send* _eps_calibration_state __eps_calibration_state)
     (progn
       (if __eps_calibration_state (setq _eps_calibration_state (car __eps_calibration_state)))
       _eps_calibration_state)))
  (:rws_direction_report
   (&rest __rws_direction_report)
   (if (keywordp (car __rws_direction_report))
       (send* _rws_direction_report __rws_direction_report)
     (progn
       (if __rws_direction_report (setq _rws_direction_report (car __rws_direction_report)))
       _rws_direction_report)))
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
    ;; endpoint_msgs/SteeringType _steering_type
    (send _steering_type :serialization-length)
    ;; float32 _steering_cmd
    4
    ;; float32 _steering_report
    4
    ;; float32 _steering_wheel_angle_report
    4
    ;; float32 _steering_wheel_torque_report
    4
    ;; float32 _steering_follow_rate
    4
    ;; endpoint_msgs/RWhSteerModType _rws_mode_report
    (send _rws_mode_report :serialization-length)
    ;; float32 _rws_angle
    4
    ;; bool _override
    1
    ;; float32 _steering_elc_assist_torque
    4
    ;; bool _steering_elc_assist_torque_valid
    1
    ;; float32 _steering_total_torque
    4
    ;; bool _steering_total_torque_valid
    1
    ;; endpoint_msgs/CalibrationType _eps_calibration_state
    (send _eps_calibration_state :serialization-length)
    ;; endpoint_msgs/RWhSteerDirection _rws_direction_report
    (send _rws_direction_report :serialization-length)
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
     ;; endpoint_msgs/SteeringType _steering_type
       (send _steering_type :serialize s)
     ;; float32 _steering_cmd
       (sys::poke _steering_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_report
       (sys::poke _steering_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_wheel_angle_report
       (sys::poke _steering_wheel_angle_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_wheel_torque_report
       (sys::poke _steering_wheel_torque_report (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_follow_rate
       (sys::poke _steering_follow_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/RWhSteerModType _rws_mode_report
       (send _rws_mode_report :serialize s)
     ;; float32 _rws_angle
       (sys::poke _rws_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _override
       (if _override (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steering_elc_assist_torque
       (sys::poke _steering_elc_assist_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _steering_elc_assist_torque_valid
       (if _steering_elc_assist_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steering_total_torque
       (sys::poke _steering_total_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _steering_total_torque_valid
       (if _steering_total_torque_valid (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/CalibrationType _eps_calibration_state
       (send _eps_calibration_state :serialize s)
     ;; endpoint_msgs/RWhSteerDirection _rws_direction_report
       (send _rws_direction_report :serialize s)
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
   ;; endpoint_msgs/SteeringType _steering_type
     (send _steering_type :deserialize buf ptr-) (incf ptr- (send _steering_type :serialization-length))
   ;; float32 _steering_cmd
     (setq _steering_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_report
     (setq _steering_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_wheel_angle_report
     (setq _steering_wheel_angle_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_wheel_torque_report
     (setq _steering_wheel_torque_report (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_follow_rate
     (setq _steering_follow_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/RWhSteerModType _rws_mode_report
     (send _rws_mode_report :deserialize buf ptr-) (incf ptr- (send _rws_mode_report :serialization-length))
   ;; float32 _rws_angle
     (setq _rws_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _override
     (setq _override (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steering_elc_assist_torque
     (setq _steering_elc_assist_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _steering_elc_assist_torque_valid
     (setq _steering_elc_assist_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steering_total_torque
     (setq _steering_total_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _steering_total_torque_valid
     (setq _steering_total_torque_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/CalibrationType _eps_calibration_state
     (send _eps_calibration_state :deserialize buf ptr-) (incf ptr- (send _eps_calibration_state :serialization-length))
   ;; endpoint_msgs/RWhSteerDirection _rws_direction_report
     (send _rws_direction_report :deserialize buf ptr-) (incf ptr- (send _rws_direction_report :serialization-length))
   ;; bool _ready
     (setq _ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::SteeringReportData :md5sum-) "73ab7abff1beb2ddf3c5f3ef84d11617")
(setf (get endpoint_msgs::SteeringReportData :datatype-) "endpoint_msgs/SteeringReportData")
(setf (get endpoint_msgs::SteeringReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WorkType driver_work_type
endpoint_msgs/SteeringType steering_type
float32 steering_cmd
float32 steering_report
float32 steering_wheel_angle_report
float32 steering_wheel_torque_report
float32 steering_follow_rate
endpoint_msgs/RWhSteerModType rws_mode_report
float32 rws_angle
bool override
float32 steering_elc_assist_torque
bool steering_elc_assist_torque_valid
float32 steering_total_torque
bool steering_total_torque_valid
endpoint_msgs/CalibrationType eps_calibration_state
endpoint_msgs/RWhSteerDirection rws_direction_report
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
MSG: endpoint_msgs/CalibrationType
uint8 NONE = 0
uint8 CALIBRATION = 1
uint8 NOT_CALIBRATION = 2
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



(provide :endpoint_msgs/SteeringReportData "73ab7abff1beb2ddf3c5f3ef84d11617")


