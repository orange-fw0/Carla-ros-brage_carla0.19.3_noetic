;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UltrasonicEchoStatus)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UltrasonicEchoStatus (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::ULTRASONICECHOSTATUS")
  (make-package "SENSOR_INTERFACE_MSGS::ULTRASONICECHOSTATUS"))

(in-package "ROS")
;;//! \htmlinclude UltrasonicEchoStatus.msg.html


(defclass sensor_interface_msgs::UltrasonicEchoStatus
  :super ros::object
  :slots (_uss_status _uss_temperature _reserved ))

(defmethod sensor_interface_msgs::UltrasonicEchoStatus
  (:init
   (&key
    ((:uss_status __uss_status) 0)
    ((:uss_temperature __uss_temperature) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _uss_status (round __uss_status))
   (setq _uss_temperature (round __uss_temperature))
   (setq _reserved (round __reserved))
   self)
  (:uss_status
   (&optional __uss_status)
   (if __uss_status (setq _uss_status __uss_status)) _uss_status)
  (:uss_temperature
   (&optional __uss_temperature)
   (if __uss_temperature (setq _uss_temperature __uss_temperature)) _uss_temperature)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; uint8 _uss_status
    1
    ;; int16 _uss_temperature
    2
    ;; uint64 _reserved
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _uss_status
       (write-byte _uss_status s)
     ;; int16 _uss_temperature
       (write-word _uss_temperature s)
     ;; uint64 _reserved
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _reserved (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _reserved) (= (length (_reserved . bv)) 2)) ;; bignum
              (write-long (ash (elt (_reserved . bv) 0) 0) s)
              (write-long (ash (elt (_reserved . bv) 1) -1) s))
             ((and (class _reserved) (= (length (_reserved . bv)) 1)) ;; big1
              (write-long (elt (_reserved . bv) 0) s)
              (write-long (if (>= _reserved 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _reserved s)(write-long (if (>= _reserved 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _uss_status
     (setq _uss_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _uss_temperature
     (setq _uss_temperature (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _reserved
     
#+(or :alpha :irix6 :x86_64)
      (setf _reserved (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _reserved (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get sensor_interface_msgs::UltrasonicEchoStatus :md5sum-) "92066f99c351a98a053ffec5f86af339")
(setf (get sensor_interface_msgs::UltrasonicEchoStatus :datatype-) "sensor_interface_msgs/UltrasonicEchoStatus")
(setf (get sensor_interface_msgs::UltrasonicEchoStatus :definition-)
      "uint8 uss_status
int16 uss_temperature
uint64 reserved

")



(provide :sensor_interface_msgs/UltrasonicEchoStatus "92066f99c351a98a053ffec5f86af339")


