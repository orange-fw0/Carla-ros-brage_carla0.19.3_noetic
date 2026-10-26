;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::BrakeCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'BrakeCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BRAKECOMMANDDATA")
  (make-package "ENDPOINT_MSGS::BRAKECOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude BrakeCommandData.msg.html


(defclass endpoint_msgs::BrakeCommandData
  :super ros::object
  :slots (_timestamp_us _brake_enable _brake_type _brake_command _brake_control_type _brake_acc_standstill _brake_acc_go _epb_enable _epb_command _auto_hold_command ))

(defmethod endpoint_msgs::BrakeCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:brake_enable __brake_enable) nil)
    ((:brake_type __brake_type) (instance endpoint_msgs::BrakeType :init))
    ((:brake_command __brake_command) 0.0)
    ((:brake_control_type __brake_control_type) (instance endpoint_msgs::BrakeControlType :init))
    ((:brake_acc_standstill __brake_acc_standstill) (instance endpoint_msgs::AccStandstillType :init))
    ((:brake_acc_go __brake_acc_go) nil)
    ((:epb_enable __epb_enable) nil)
    ((:epb_command __epb_command) nil)
    ((:auto_hold_command __auto_hold_command) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _brake_enable __brake_enable)
   (setq _brake_type __brake_type)
   (setq _brake_command (float __brake_command))
   (setq _brake_control_type __brake_control_type)
   (setq _brake_acc_standstill __brake_acc_standstill)
   (setq _brake_acc_go __brake_acc_go)
   (setq _epb_enable __epb_enable)
   (setq _epb_command __epb_command)
   (setq _auto_hold_command __auto_hold_command)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:brake_enable
   (&optional (__brake_enable :null))
   (if (not (eq __brake_enable :null)) (setq _brake_enable __brake_enable)) _brake_enable)
  (:brake_type
   (&rest __brake_type)
   (if (keywordp (car __brake_type))
       (send* _brake_type __brake_type)
     (progn
       (if __brake_type (setq _brake_type (car __brake_type)))
       _brake_type)))
  (:brake_command
   (&optional __brake_command)
   (if __brake_command (setq _brake_command __brake_command)) _brake_command)
  (:brake_control_type
   (&rest __brake_control_type)
   (if (keywordp (car __brake_control_type))
       (send* _brake_control_type __brake_control_type)
     (progn
       (if __brake_control_type (setq _brake_control_type (car __brake_control_type)))
       _brake_control_type)))
  (:brake_acc_standstill
   (&rest __brake_acc_standstill)
   (if (keywordp (car __brake_acc_standstill))
       (send* _brake_acc_standstill __brake_acc_standstill)
     (progn
       (if __brake_acc_standstill (setq _brake_acc_standstill (car __brake_acc_standstill)))
       _brake_acc_standstill)))
  (:brake_acc_go
   (&optional (__brake_acc_go :null))
   (if (not (eq __brake_acc_go :null)) (setq _brake_acc_go __brake_acc_go)) _brake_acc_go)
  (:epb_enable
   (&optional (__epb_enable :null))
   (if (not (eq __epb_enable :null)) (setq _epb_enable __epb_enable)) _epb_enable)
  (:epb_command
   (&optional (__epb_command :null))
   (if (not (eq __epb_command :null)) (setq _epb_command __epb_command)) _epb_command)
  (:auto_hold_command
   (&optional (__auto_hold_command :null))
   (if (not (eq __auto_hold_command :null)) (setq _auto_hold_command __auto_hold_command)) _auto_hold_command)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _brake_enable
    1
    ;; endpoint_msgs/BrakeType _brake_type
    (send _brake_type :serialization-length)
    ;; float32 _brake_command
    4
    ;; endpoint_msgs/BrakeControlType _brake_control_type
    (send _brake_control_type :serialization-length)
    ;; endpoint_msgs/AccStandstillType _brake_acc_standstill
    (send _brake_acc_standstill :serialization-length)
    ;; bool _brake_acc_go
    1
    ;; bool _epb_enable
    1
    ;; bool _epb_command
    1
    ;; bool _auto_hold_command
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
     ;; bool _brake_enable
       (if _brake_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/BrakeType _brake_type
       (send _brake_type :serialize s)
     ;; float32 _brake_command
       (sys::poke _brake_command (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/BrakeControlType _brake_control_type
       (send _brake_control_type :serialize s)
     ;; endpoint_msgs/AccStandstillType _brake_acc_standstill
       (send _brake_acc_standstill :serialize s)
     ;; bool _brake_acc_go
       (if _brake_acc_go (write-byte -1 s) (write-byte 0 s))
     ;; bool _epb_enable
       (if _epb_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _epb_command
       (if _epb_command (write-byte -1 s) (write-byte 0 s))
     ;; bool _auto_hold_command
       (if _auto_hold_command (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _brake_enable
     (setq _brake_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/BrakeType _brake_type
     (send _brake_type :deserialize buf ptr-) (incf ptr- (send _brake_type :serialization-length))
   ;; float32 _brake_command
     (setq _brake_command (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/BrakeControlType _brake_control_type
     (send _brake_control_type :deserialize buf ptr-) (incf ptr- (send _brake_control_type :serialization-length))
   ;; endpoint_msgs/AccStandstillType _brake_acc_standstill
     (send _brake_acc_standstill :deserialize buf ptr-) (incf ptr- (send _brake_acc_standstill :serialization-length))
   ;; bool _brake_acc_go
     (setq _brake_acc_go (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _epb_enable
     (setq _epb_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _epb_command
     (setq _epb_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _auto_hold_command
     (setq _auto_hold_command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::BrakeCommandData :md5sum-) "f81045d29af37bdc362fe6429fbe41b3")
(setf (get endpoint_msgs::BrakeCommandData :datatype-) "endpoint_msgs/BrakeCommandData")
(setf (get endpoint_msgs::BrakeCommandData :definition-)
      "uint64 timestamp_us
bool brake_enable
endpoint_msgs/BrakeType brake_type
float32 brake_command
endpoint_msgs/BrakeControlType brake_control_type
endpoint_msgs/AccStandstillType brake_acc_standstill
bool brake_acc_go
bool epb_enable
bool epb_command
bool auto_hold_command

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

================================================================================
MSG: endpoint_msgs/BrakeControlType
uint8 NORMAL = 1
uint8 EMERGENT = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 value

================================================================================
MSG: endpoint_msgs/AccStandstillType
uint8 NO_REQUEST = 0
uint8 REQUEST = 1
uint8 REMIND_DRIVE_GO = 2
uint8 RESERVED = 3
uint8 value

")



(provide :endpoint_msgs/BrakeCommandData "f81045d29af37bdc362fe6429fbe41b3")


