;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WirelessChargerReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WirelessChargerReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WIRELESSCHARGERREPORTDATA")
  (make-package "ENDPOINT_MSGS::WIRELESSCHARGERREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WirelessChargerReportData.msg.html


(defclass endpoint_msgs::WirelessChargerReportData
  :super ros::object
  :slots (_timestamp_us _link_state _detected_state _is_offset_x_vaild _is_offset_y_vaild _is_yaw_valid _offset_x _offset_y _yaw _rltv_pos_of_charge_board_x _rltv_pos_of_charge_board_y _charge_board_size_x _charge_board_size_y _reserved ))

(defmethod endpoint_msgs::WirelessChargerReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:link_state __link_state) (instance endpoint_msgs::WrlsChrgWifiSts :init))
    ((:detected_state __detected_state) (instance endpoint_msgs::WrlsChrgDetResult :init))
    ((:is_offset_x_vaild __is_offset_x_vaild) nil)
    ((:is_offset_y_vaild __is_offset_y_vaild) nil)
    ((:is_yaw_valid __is_yaw_valid) nil)
    ((:offset_x __offset_x) 0)
    ((:offset_y __offset_y) 0)
    ((:yaw __yaw) 0.0)
    ((:rltv_pos_of_charge_board_x __rltv_pos_of_charge_board_x) 0)
    ((:rltv_pos_of_charge_board_y __rltv_pos_of_charge_board_y) 0)
    ((:charge_board_size_x __charge_board_size_x) 0)
    ((:charge_board_size_y __charge_board_size_y) 0)
    ((:reserved __reserved) "")
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _link_state __link_state)
   (setq _detected_state __detected_state)
   (setq _is_offset_x_vaild __is_offset_x_vaild)
   (setq _is_offset_y_vaild __is_offset_y_vaild)
   (setq _is_yaw_valid __is_yaw_valid)
   (setq _offset_x (round __offset_x))
   (setq _offset_y (round __offset_y))
   (setq _yaw (float __yaw))
   (setq _rltv_pos_of_charge_board_x (round __rltv_pos_of_charge_board_x))
   (setq _rltv_pos_of_charge_board_y (round __rltv_pos_of_charge_board_y))
   (setq _charge_board_size_x (round __charge_board_size_x))
   (setq _charge_board_size_y (round __charge_board_size_y))
   (setq _reserved (string __reserved))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:link_state
   (&rest __link_state)
   (if (keywordp (car __link_state))
       (send* _link_state __link_state)
     (progn
       (if __link_state (setq _link_state (car __link_state)))
       _link_state)))
  (:detected_state
   (&rest __detected_state)
   (if (keywordp (car __detected_state))
       (send* _detected_state __detected_state)
     (progn
       (if __detected_state (setq _detected_state (car __detected_state)))
       _detected_state)))
  (:is_offset_x_vaild
   (&optional (__is_offset_x_vaild :null))
   (if (not (eq __is_offset_x_vaild :null)) (setq _is_offset_x_vaild __is_offset_x_vaild)) _is_offset_x_vaild)
  (:is_offset_y_vaild
   (&optional (__is_offset_y_vaild :null))
   (if (not (eq __is_offset_y_vaild :null)) (setq _is_offset_y_vaild __is_offset_y_vaild)) _is_offset_y_vaild)
  (:is_yaw_valid
   (&optional (__is_yaw_valid :null))
   (if (not (eq __is_yaw_valid :null)) (setq _is_yaw_valid __is_yaw_valid)) _is_yaw_valid)
  (:offset_x
   (&optional __offset_x)
   (if __offset_x (setq _offset_x __offset_x)) _offset_x)
  (:offset_y
   (&optional __offset_y)
   (if __offset_y (setq _offset_y __offset_y)) _offset_y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:rltv_pos_of_charge_board_x
   (&optional __rltv_pos_of_charge_board_x)
   (if __rltv_pos_of_charge_board_x (setq _rltv_pos_of_charge_board_x __rltv_pos_of_charge_board_x)) _rltv_pos_of_charge_board_x)
  (:rltv_pos_of_charge_board_y
   (&optional __rltv_pos_of_charge_board_y)
   (if __rltv_pos_of_charge_board_y (setq _rltv_pos_of_charge_board_y __rltv_pos_of_charge_board_y)) _rltv_pos_of_charge_board_y)
  (:charge_board_size_x
   (&optional __charge_board_size_x)
   (if __charge_board_size_x (setq _charge_board_size_x __charge_board_size_x)) _charge_board_size_x)
  (:charge_board_size_y
   (&optional __charge_board_size_y)
   (if __charge_board_size_y (setq _charge_board_size_y __charge_board_size_y)) _charge_board_size_y)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/WrlsChrgWifiSts _link_state
    (send _link_state :serialization-length)
    ;; endpoint_msgs/WrlsChrgDetResult _detected_state
    (send _detected_state :serialization-length)
    ;; bool _is_offset_x_vaild
    1
    ;; bool _is_offset_y_vaild
    1
    ;; bool _is_yaw_valid
    1
    ;; int32 _offset_x
    4
    ;; int32 _offset_y
    4
    ;; float32 _yaw
    4
    ;; int32 _rltv_pos_of_charge_board_x
    4
    ;; int32 _rltv_pos_of_charge_board_y
    4
    ;; int32 _charge_board_size_x
    4
    ;; int32 _charge_board_size_y
    4
    ;; string _reserved
    4 (length _reserved)
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
     ;; endpoint_msgs/WrlsChrgWifiSts _link_state
       (send _link_state :serialize s)
     ;; endpoint_msgs/WrlsChrgDetResult _detected_state
       (send _detected_state :serialize s)
     ;; bool _is_offset_x_vaild
       (if _is_offset_x_vaild (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_offset_y_vaild
       (if _is_offset_y_vaild (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_yaw_valid
       (if _is_yaw_valid (write-byte -1 s) (write-byte 0 s))
     ;; int32 _offset_x
       (write-long _offset_x s)
     ;; int32 _offset_y
       (write-long _offset_y s)
     ;; float32 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _rltv_pos_of_charge_board_x
       (write-long _rltv_pos_of_charge_board_x s)
     ;; int32 _rltv_pos_of_charge_board_y
       (write-long _rltv_pos_of_charge_board_y s)
     ;; int32 _charge_board_size_x
       (write-long _charge_board_size_x s)
     ;; int32 _charge_board_size_y
       (write-long _charge_board_size_y s)
     ;; string _reserved
       (write-long (length _reserved) s) (princ _reserved s)
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
   ;; endpoint_msgs/WrlsChrgWifiSts _link_state
     (send _link_state :deserialize buf ptr-) (incf ptr- (send _link_state :serialization-length))
   ;; endpoint_msgs/WrlsChrgDetResult _detected_state
     (send _detected_state :deserialize buf ptr-) (incf ptr- (send _detected_state :serialization-length))
   ;; bool _is_offset_x_vaild
     (setq _is_offset_x_vaild (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_offset_y_vaild
     (setq _is_offset_y_vaild (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_yaw_valid
     (setq _is_yaw_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _offset_x
     (setq _offset_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _offset_y
     (setq _offset_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _yaw
     (setq _yaw (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _rltv_pos_of_charge_board_x
     (setq _rltv_pos_of_charge_board_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rltv_pos_of_charge_board_y
     (setq _rltv_pos_of_charge_board_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charge_board_size_x
     (setq _charge_board_size_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _charge_board_size_y
     (setq _charge_board_size_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _reserved
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get endpoint_msgs::WirelessChargerReportData :md5sum-) "a8dbebe4cb8ec743a217e9c33001c217")
(setf (get endpoint_msgs::WirelessChargerReportData :datatype-) "endpoint_msgs/WirelessChargerReportData")
(setf (get endpoint_msgs::WirelessChargerReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/WrlsChrgWifiSts link_state
endpoint_msgs/WrlsChrgDetResult detected_state
bool is_offset_x_vaild
bool is_offset_y_vaild
bool is_yaw_valid
int32 offset_x
int32 offset_y
float32 yaw
int32 rltv_pos_of_charge_board_x
int32 rltv_pos_of_charge_board_y
int32 charge_board_size_x
int32 charge_board_size_y
string reserved

================================================================================
MSG: endpoint_msgs/WrlsChrgWifiSts
uint8 WIRELESS_CHARGER_WIFI_DEFAULT = 0
uint8 WIRELESS_CHARGER_WIFI_ON = 1
uint8 WIRELESS_CHARGER_WIFI_OFF = 2
uint8 WIRELESS_CHARGER_WIFI_CONNECTED = 3
uint8 WIRELESS_CHARGER_WIFI_FAILURE = 4
uint8 value

================================================================================
MSG: endpoint_msgs/WrlsChrgDetResult
uint8 WIRELESS_CHARGER_DETECED_RESULT_DEFAULT = 0
uint8 WIRELESS_CHARGER_DETECED_RESULT_OK = 1
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_X_NOT_OK = 2
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_Y_NOT_OK = 3
uint8 WIRELESS_CHARGER_DETECED_RESULT_OFFSET_XY_NOT_OK = 4
uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL = 5
uint8 WIRELESS_CHARGER_DETECED_RESULT_LIVING = 6
uint8 WIRELESS_CHARGER_DETECED_RESULT_METAL_OFFSET_NOT_OK = 7
uint8 WIRELESS_CHARGER_DETECED_RESULT_NETA_LIVING = 8
uint8 value

")



(provide :endpoint_msgs/WirelessChargerReportData "a8dbebe4cb8ec743a217e9c33001c217")


