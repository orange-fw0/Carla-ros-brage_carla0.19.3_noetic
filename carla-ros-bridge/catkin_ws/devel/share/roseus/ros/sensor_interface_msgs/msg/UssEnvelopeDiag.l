;; Auto-generated. Do not edit!


(when (boundp 'sensor_interface_msgs::UssEnvelopeDiag)
  (if (not (find-package "SENSOR_INTERFACE_MSGS"))
    (make-package "SENSOR_INTERFACE_MSGS"))
  (shadow 'UssEnvelopeDiag (find-package "SENSOR_INTERFACE_MSGS")))
(unless (find-package "SENSOR_INTERFACE_MSGS::USSENVELOPEDIAG")
  (make-package "SENSOR_INTERFACE_MSGS::USSENVELOPEDIAG"))

(in-package "ROS")
;;//! \htmlinclude UssEnvelopeDiag.msg.html


(defclass sensor_interface_msgs::UssEnvelopeDiag
  :super ros::object
  :slots (_aRawient_temperature _cont_wav_noise_l _cont_wav_noise_h _sensor_status_valid _sensor_com_status_valid _thermal_warning _tx_fail _sensor_disturbed _white_band_noise _reserved ))

(defmethod sensor_interface_msgs::UssEnvelopeDiag
  (:init
   (&key
    ((:aRawient_temperature __aRawient_temperature) 0)
    ((:cont_wav_noise_l __cont_wav_noise_l) 0)
    ((:cont_wav_noise_h __cont_wav_noise_h) 0)
    ((:sensor_status_valid __sensor_status_valid) nil)
    ((:sensor_com_status_valid __sensor_com_status_valid) nil)
    ((:thermal_warning __thermal_warning) nil)
    ((:tx_fail __tx_fail) nil)
    ((:sensor_disturbed __sensor_disturbed) nil)
    ((:white_band_noise __white_band_noise) nil)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _aRawient_temperature (round __aRawient_temperature))
   (setq _cont_wav_noise_l (round __cont_wav_noise_l))
   (setq _cont_wav_noise_h (round __cont_wav_noise_h))
   (setq _sensor_status_valid __sensor_status_valid)
   (setq _sensor_com_status_valid __sensor_com_status_valid)
   (setq _thermal_warning __thermal_warning)
   (setq _tx_fail __tx_fail)
   (setq _sensor_disturbed __sensor_disturbed)
   (setq _white_band_noise __white_band_noise)
   (setq _reserved (round __reserved))
   self)
  (:aRawient_temperature
   (&optional __aRawient_temperature)
   (if __aRawient_temperature (setq _aRawient_temperature __aRawient_temperature)) _aRawient_temperature)
  (:cont_wav_noise_l
   (&optional __cont_wav_noise_l)
   (if __cont_wav_noise_l (setq _cont_wav_noise_l __cont_wav_noise_l)) _cont_wav_noise_l)
  (:cont_wav_noise_h
   (&optional __cont_wav_noise_h)
   (if __cont_wav_noise_h (setq _cont_wav_noise_h __cont_wav_noise_h)) _cont_wav_noise_h)
  (:sensor_status_valid
   (&optional (__sensor_status_valid :null))
   (if (not (eq __sensor_status_valid :null)) (setq _sensor_status_valid __sensor_status_valid)) _sensor_status_valid)
  (:sensor_com_status_valid
   (&optional (__sensor_com_status_valid :null))
   (if (not (eq __sensor_com_status_valid :null)) (setq _sensor_com_status_valid __sensor_com_status_valid)) _sensor_com_status_valid)
  (:thermal_warning
   (&optional (__thermal_warning :null))
   (if (not (eq __thermal_warning :null)) (setq _thermal_warning __thermal_warning)) _thermal_warning)
  (:tx_fail
   (&optional (__tx_fail :null))
   (if (not (eq __tx_fail :null)) (setq _tx_fail __tx_fail)) _tx_fail)
  (:sensor_disturbed
   (&optional (__sensor_disturbed :null))
   (if (not (eq __sensor_disturbed :null)) (setq _sensor_disturbed __sensor_disturbed)) _sensor_disturbed)
  (:white_band_noise
   (&optional (__white_band_noise :null))
   (if (not (eq __white_band_noise :null)) (setq _white_band_noise __white_band_noise)) _white_band_noise)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; int8 _aRawient_temperature
    1
    ;; uint8 _cont_wav_noise_l
    1
    ;; uint8 _cont_wav_noise_h
    1
    ;; bool _sensor_status_valid
    1
    ;; bool _sensor_com_status_valid
    1
    ;; bool _thermal_warning
    1
    ;; bool _tx_fail
    1
    ;; bool _sensor_disturbed
    1
    ;; bool _white_band_noise
    1
    ;; uint64 _reserved
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _aRawient_temperature
       (write-byte _aRawient_temperature s)
     ;; uint8 _cont_wav_noise_l
       (write-byte _cont_wav_noise_l s)
     ;; uint8 _cont_wav_noise_h
       (write-byte _cont_wav_noise_h s)
     ;; bool _sensor_status_valid
       (if _sensor_status_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _sensor_com_status_valid
       (if _sensor_com_status_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _thermal_warning
       (if _thermal_warning (write-byte -1 s) (write-byte 0 s))
     ;; bool _tx_fail
       (if _tx_fail (write-byte -1 s) (write-byte 0 s))
     ;; bool _sensor_disturbed
       (if _sensor_disturbed (write-byte -1 s) (write-byte 0 s))
     ;; bool _white_band_noise
       (if _white_band_noise (write-byte -1 s) (write-byte 0 s))
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
   ;; int8 _aRawient_temperature
     (setq _aRawient_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _aRawient_temperature 127) (setq _aRawient_temperature (- _aRawient_temperature 256)))
   ;; uint8 _cont_wav_noise_l
     (setq _cont_wav_noise_l (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cont_wav_noise_h
     (setq _cont_wav_noise_h (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _sensor_status_valid
     (setq _sensor_status_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sensor_com_status_valid
     (setq _sensor_com_status_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _thermal_warning
     (setq _thermal_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _tx_fail
     (setq _tx_fail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _sensor_disturbed
     (setq _sensor_disturbed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _white_band_noise
     (setq _white_band_noise (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get sensor_interface_msgs::UssEnvelopeDiag :md5sum-) "2af146137d90807c3d4b5c3b6eb99e23")
(setf (get sensor_interface_msgs::UssEnvelopeDiag :datatype-) "sensor_interface_msgs/UssEnvelopeDiag")
(setf (get sensor_interface_msgs::UssEnvelopeDiag :definition-)
      "int8 aRawient_temperature
uint8 cont_wav_noise_l
uint8 cont_wav_noise_h
bool sensor_status_valid
bool sensor_com_status_valid
bool thermal_warning
bool tx_fail
bool sensor_disturbed
bool white_band_noise
uint64 reserved

")



(provide :sensor_interface_msgs/UssEnvelopeDiag "2af146137d90807c3d4b5c3b6eb99e23")


