;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssEnvelopeId)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssEnvelopeId (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSENVELOPEID")
  (make-package "SENSOR_INTERFACE_MSGS::USSENVELOPEID"))

(in-package "ROS")
;;//! \htmlinclude UssEnvelopeId.msg.html


(defclass sensor_interface_msgs::UssEnvelopeId
  :super ros::object
  :slots (_tx_sensor_id _rx_sensor_id _host_timestamp _meta ))

(defmethod sensor_interface_msgs::UssEnvelopeId
  (:init
   (&key
    ((:tx_sensor_id __tx_sensor_id) 0)
    ((:rx_sensor_id __rx_sensor_id) 0)
    ((:host_timestamp __host_timestamp) 0)
    ((:meta __meta) (instance sensor_interface_msgs::UltrasonicResultMeta :init))
    )
   (send-super :init)
   (setq _tx_sensor_id (round __tx_sensor_id))
   (setq _rx_sensor_id (round __rx_sensor_id))
   (setq _host_timestamp (round __host_timestamp))
   (setq _meta __meta)
   self)
  (:tx_sensor_id
   (&optional __tx_sensor_id)
   (if __tx_sensor_id (setq _tx_sensor_id __tx_sensor_id)) _tx_sensor_id)
  (:rx_sensor_id
   (&optional __rx_sensor_id)
   (if __rx_sensor_id (setq _rx_sensor_id __rx_sensor_id)) _rx_sensor_id)
  (:host_timestamp
   (&optional __host_timestamp)
   (if __host_timestamp (setq _host_timestamp __host_timestamp)) _host_timestamp)
  (:meta
   (&rest __meta)
   (if (keywordp (car __meta))
       (send* _meta __meta)
     (progn
       (if __meta (setq _meta (car __meta)))
       _meta)))
  (:serialization-length
   ()
   (+
    ;; uint8 _tx_sensor_id
    1
    ;; uint8 _rx_sensor_id
    1
    ;; uint64 _host_timestamp
    8
    ;; sensor_interface_msgs/UltrasonicResultMeta _meta
    (send _meta :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _tx_sensor_id
       (write-byte _tx_sensor_id s)
     ;; uint8 _rx_sensor_id
       (write-byte _rx_sensor_id s)
     ;; uint64 _host_timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _host_timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _host_timestamp) (= (length (_host_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_host_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_host_timestamp . bv) 1) -1) s))
             ((and (class _host_timestamp) (= (length (_host_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_host_timestamp . bv) 0) s)
              (write-long (if (>= _host_timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _host_timestamp s)(write-long (if (>= _host_timestamp 0) 0 #xffffffff) s)))
     ;; sensor_interface_msgs/UltrasonicResultMeta _meta
       (send _meta :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _tx_sensor_id
     (setq _tx_sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _rx_sensor_id
     (setq _rx_sensor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _host_timestamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _host_timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _host_timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; sensor_interface_msgs/UltrasonicResultMeta _meta
     (send _meta :deserialize buf ptr-) (incf ptr- (send _meta :serialization-length))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UssEnvelopeId :md5sum-) "a61116ae7661c86f18987f9ab42039db")
(setf (get sensor_interface_msgs::UssEnvelopeId :datatype-) "sensor_interface_msgs/UssEnvelopeId")
(setf (get sensor_interface_msgs::UssEnvelopeId :definition-)
      "uint8 tx_sensor_id
uint8 rx_sensor_id
uint64 host_timestamp
sensor_interface_msgs/UltrasonicResultMeta meta

================================================================================
MSG: sensor_interface_msgs/UltrasonicResultMeta
uint64 timestamp_us
uint64 seq

")



(provide :sensor_interface_msgs/UssEnvelopeId "a61116ae7661c86f18987f9ab42039db")


