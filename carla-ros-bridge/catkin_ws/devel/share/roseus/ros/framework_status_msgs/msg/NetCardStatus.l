;; Auto-generated. Do not edit!


(when (boundp 'framework_status_msgs::NetCardStatus)
  (if (not (find-package "FRAMEWORK_STATUS_MSGS"))
    (make-package "FRAMEWORK_STATUS_MSGS"))
  (shadow 'NetCardStatus (find-package "FRAMEWORK_STATUS_MSGS")))
(unless (find-package "FRAMEWORK_STATUS_MSGS::NETCARDSTATUS")
  (make-package "FRAMEWORK_STATUS_MSGS::NETCARDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude NetCardStatus.msg.html


(defclass framework_status_msgs::NetCardStatus
  :super ros::object
  :slots (_net_card_name _bytes_sent_rate _bytes_recv_rate _packets_sent_rate _packets_recv_rate _errin_rate _errout_rate _dropin_rate _dropout_rate _net_card_isup _duplex _speed _mtu _reserved_info ))

(defmethod framework_status_msgs::NetCardStatus
  (:init
   (&key
    ((:net_card_name __net_card_name) "")
    ((:bytes_sent_rate __bytes_sent_rate) 0.0)
    ((:bytes_recv_rate __bytes_recv_rate) 0.0)
    ((:packets_sent_rate __packets_sent_rate) 0.0)
    ((:packets_recv_rate __packets_recv_rate) 0.0)
    ((:errin_rate __errin_rate) 0.0)
    ((:errout_rate __errout_rate) 0.0)
    ((:dropin_rate __dropin_rate) 0.0)
    ((:dropout_rate __dropout_rate) 0.0)
    ((:net_card_isup __net_card_isup) nil)
    ((:duplex __duplex) 0)
    ((:speed __speed) 0)
    ((:mtu __mtu) 0)
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _net_card_name (string __net_card_name))
   (setq _bytes_sent_rate (float __bytes_sent_rate))
   (setq _bytes_recv_rate (float __bytes_recv_rate))
   (setq _packets_sent_rate (float __packets_sent_rate))
   (setq _packets_recv_rate (float __packets_recv_rate))
   (setq _errin_rate (float __errin_rate))
   (setq _errout_rate (float __errout_rate))
   (setq _dropin_rate (float __dropin_rate))
   (setq _dropout_rate (float __dropout_rate))
   (setq _net_card_isup __net_card_isup)
   (setq _duplex (round __duplex))
   (setq _speed (round __speed))
   (setq _mtu (round __mtu))
   (setq _reserved_info (string __reserved_info))
   self)
  (:net_card_name
   (&optional __net_card_name)
   (if __net_card_name (setq _net_card_name __net_card_name)) _net_card_name)
  (:bytes_sent_rate
   (&optional __bytes_sent_rate)
   (if __bytes_sent_rate (setq _bytes_sent_rate __bytes_sent_rate)) _bytes_sent_rate)
  (:bytes_recv_rate
   (&optional __bytes_recv_rate)
   (if __bytes_recv_rate (setq _bytes_recv_rate __bytes_recv_rate)) _bytes_recv_rate)
  (:packets_sent_rate
   (&optional __packets_sent_rate)
   (if __packets_sent_rate (setq _packets_sent_rate __packets_sent_rate)) _packets_sent_rate)
  (:packets_recv_rate
   (&optional __packets_recv_rate)
   (if __packets_recv_rate (setq _packets_recv_rate __packets_recv_rate)) _packets_recv_rate)
  (:errin_rate
   (&optional __errin_rate)
   (if __errin_rate (setq _errin_rate __errin_rate)) _errin_rate)
  (:errout_rate
   (&optional __errout_rate)
   (if __errout_rate (setq _errout_rate __errout_rate)) _errout_rate)
  (:dropin_rate
   (&optional __dropin_rate)
   (if __dropin_rate (setq _dropin_rate __dropin_rate)) _dropin_rate)
  (:dropout_rate
   (&optional __dropout_rate)
   (if __dropout_rate (setq _dropout_rate __dropout_rate)) _dropout_rate)
  (:net_card_isup
   (&optional (__net_card_isup :null))
   (if (not (eq __net_card_isup :null)) (setq _net_card_isup __net_card_isup)) _net_card_isup)
  (:duplex
   (&optional __duplex)
   (if __duplex (setq _duplex __duplex)) _duplex)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:mtu
   (&optional __mtu)
   (if __mtu (setq _mtu __mtu)) _mtu)
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; string _net_card_name
    4 (length _net_card_name)
    ;; float32 _bytes_sent_rate
    4
    ;; float32 _bytes_recv_rate
    4
    ;; float32 _packets_sent_rate
    4
    ;; float32 _packets_recv_rate
    4
    ;; float32 _errin_rate
    4
    ;; float32 _errout_rate
    4
    ;; float32 _dropin_rate
    4
    ;; float32 _dropout_rate
    4
    ;; bool _net_card_isup
    1
    ;; uint8 _duplex
    1
    ;; uint32 _speed
    4
    ;; uint32 _mtu
    4
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _net_card_name
       (write-long (length _net_card_name) s) (princ _net_card_name s)
     ;; float32 _bytes_sent_rate
       (sys::poke _bytes_sent_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bytes_recv_rate
       (sys::poke _bytes_recv_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _packets_sent_rate
       (sys::poke _packets_sent_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _packets_recv_rate
       (sys::poke _packets_recv_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _errin_rate
       (sys::poke _errin_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _errout_rate
       (sys::poke _errout_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dropin_rate
       (sys::poke _dropin_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dropout_rate
       (sys::poke _dropout_rate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _net_card_isup
       (if _net_card_isup (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _duplex
       (write-byte _duplex s)
     ;; uint32 _speed
       (write-long _speed s)
     ;; uint32 _mtu
       (write-long _mtu s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _net_card_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _net_card_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _bytes_sent_rate
     (setq _bytes_sent_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bytes_recv_rate
     (setq _bytes_recv_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _packets_sent_rate
     (setq _packets_sent_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _packets_recv_rate
     (setq _packets_recv_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _errin_rate
     (setq _errin_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _errout_rate
     (setq _errout_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dropin_rate
     (setq _dropin_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dropout_rate
     (setq _dropout_rate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _net_card_isup
     (setq _net_card_isup (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _duplex
     (setq _duplex (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _speed
     (setq _speed (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _mtu
     (setq _mtu (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get framework_status_msgs::NetCardStatus :md5sum-) "fffdcb72a8d94123d5dcaa023e00c013")
(setf (get framework_status_msgs::NetCardStatus :datatype-) "framework_status_msgs/NetCardStatus")
(setf (get framework_status_msgs::NetCardStatus :definition-)
      "string net_card_name
float32 bytes_sent_rate
float32 bytes_recv_rate
float32 packets_sent_rate
float32 packets_recv_rate
float32 errin_rate
float32 errout_rate
float32 dropin_rate
float32 dropout_rate
bool net_card_isup
uint8 duplex
uint32 speed
uint32 mtu
string reserved_info

")



(provide :framework_status_msgs/NetCardStatus "fffdcb72a8d94123d5dcaa023e00c013")


