;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicleLightCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicleLightCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLELIGHTCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::VEHICLELIGHTCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude VehicleLightCommandData.msg.html


(defclass endpoint_msgs::VehicleLightCommandData
  :super ros::object
  :slots (_timestamp_us _light_enable _turn_signal _front_light _width_light _reversing_light _front_fog_light _rear_fog_light ))

(defmethod endpoint_msgs::VehicleLightCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:light_enable __light_enable) nil)
    ((:turn_signal __turn_signal) (instance endpoint_msgs::TurnSignal :init))
    ((:front_light __front_light) (instance endpoint_msgs::FrontLightState :init))
    ((:width_light __width_light) nil)
    ((:reversing_light __reversing_light) nil)
    ((:front_fog_light __front_fog_light) nil)
    ((:rear_fog_light __rear_fog_light) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _light_enable __light_enable)
   (setq _turn_signal __turn_signal)
   (setq _front_light __front_light)
   (setq _width_light __width_light)
   (setq _reversing_light __reversing_light)
   (setq _front_fog_light __front_fog_light)
   (setq _rear_fog_light __rear_fog_light)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:light_enable
   (&optional (__light_enable :null))
   (if (not (eq __light_enable :null)) (setq _light_enable __light_enable)) _light_enable)
  (:turn_signal
   (&rest __turn_signal)
   (if (keywordp (car __turn_signal))
       (send* _turn_signal __turn_signal)
     (progn
       (if __turn_signal (setq _turn_signal (car __turn_signal)))
       _turn_signal)))
  (:front_light
   (&rest __front_light)
   (if (keywordp (car __front_light))
       (send* _front_light __front_light)
     (progn
       (if __front_light (setq _front_light (car __front_light)))
       _front_light)))
  (:width_light
   (&optional (__width_light :null))
   (if (not (eq __width_light :null)) (setq _width_light __width_light)) _width_light)
  (:reversing_light
   (&optional (__reversing_light :null))
   (if (not (eq __reversing_light :null)) (setq _reversing_light __reversing_light)) _reversing_light)
  (:front_fog_light
   (&optional (__front_fog_light :null))
   (if (not (eq __front_fog_light :null)) (setq _front_fog_light __front_fog_light)) _front_fog_light)
  (:rear_fog_light
   (&optional (__rear_fog_light :null))
   (if (not (eq __rear_fog_light :null)) (setq _rear_fog_light __rear_fog_light)) _rear_fog_light)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _light_enable
    1
    ;; endpoint_msgs/TurnSignal _turn_signal
    (send _turn_signal :serialization-length)
    ;; endpoint_msgs/FrontLightState _front_light
    (send _front_light :serialization-length)
    ;; bool _width_light
    1
    ;; bool _reversing_light
    1
    ;; bool _front_fog_light
    1
    ;; bool _rear_fog_light
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
     ;; bool _light_enable
       (if _light_enable (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/TurnSignal _turn_signal
       (send _turn_signal :serialize s)
     ;; endpoint_msgs/FrontLightState _front_light
       (send _front_light :serialize s)
     ;; bool _width_light
       (if _width_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _reversing_light
       (if _reversing_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _front_fog_light
       (if _front_fog_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_fog_light
       (if _rear_fog_light (write-byte -1 s) (write-byte 0 s))
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
   ;; bool _light_enable
     (setq _light_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/TurnSignal _turn_signal
     (send _turn_signal :deserialize buf ptr-) (incf ptr- (send _turn_signal :serialization-length))
   ;; endpoint_msgs/FrontLightState _front_light
     (send _front_light :deserialize buf ptr-) (incf ptr- (send _front_light :serialization-length))
   ;; bool _width_light
     (setq _width_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reversing_light
     (setq _reversing_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _front_fog_light
     (setq _front_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_fog_light
     (setq _rear_fog_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicleLightCommandData :md5sum-) "fa194b3e2cac2ea7fdf59c9b8fa0d5c5")
(setf (get endpoint_msgs::VehicleLightCommandData :datatype-) "endpoint_msgs/VehicleLightCommandData")
(setf (get endpoint_msgs::VehicleLightCommandData :definition-)
      "uint64 timestamp_us
bool light_enable
endpoint_msgs/TurnSignal turn_signal
endpoint_msgs/FrontLightState front_light
bool width_light
bool reversing_light
bool front_fog_light
bool rear_fog_light

================================================================================
MSG: endpoint_msgs/TurnSignal
uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 EMERGENCY_FLASHER = 3
uint8 INVALID = 255
uint8 value

================================================================================
MSG: endpoint_msgs/FrontLightState
uint8 LIGHT_OFF = 0
uint8 LOW_BEAM_LIGHT = 1
uint8 HIGH_BEAM_LIGHT = 2
uint8 OVERTAKING_FLASH = 3
uint8 LIGHT_AUTO = 4
uint8 value

")



(provide :endpoint_msgs/VehicleLightCommandData "fa194b3e2cac2ea7fdf59c9b8fa0d5c5")


