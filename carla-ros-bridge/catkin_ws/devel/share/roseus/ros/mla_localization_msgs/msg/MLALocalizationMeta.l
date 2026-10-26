;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLALocalizationMeta)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLALocalizationMeta (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATIONMETA")
  (make-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATIONMETA"))

(in-package "ROS")
;;//! \htmlinclude MLALocalizationMeta.msg.html


(intern "*MLA_PARKING*" (find-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATIONMETA"))
(shadow '*MLA_PARKING* (find-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATIONMETA"))
(defconstant mla_localization_msgs::MLALocalizationMeta::*MLA_PARKING* 1)
(intern "*MLA_PILOT*" (find-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATIONMETA"))
(shadow '*MLA_PILOT* (find-package "MLA_LOCALIZATION_MSGS::MLALOCALIZATIONMETA"))
(defconstant mla_localization_msgs::MLALocalizationMeta::*MLA_PILOT* 2)

(defun mla_localization_msgs::MLALocalizationMeta-to-symbol (const)
  (cond
        ((= const 1) 'mla_localization_msgs::MLALocalizationMeta::*MLA_PARKING*)
        ((= const 2) 'mla_localization_msgs::MLALocalizationMeta::*MLA_PILOT*)
        (t nil)))

(defclass mla_localization_msgs::MLALocalizationMeta
  :super ros::object
  :slots (_timestamp_us _seq _type ))

(defmethod mla_localization_msgs::MLALocalizationMeta
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:seq __seq) 0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _seq (round __seq))
   (setq _type (round __type))
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; uint64 _seq
    8
    ;; uint8 _type
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
     ;; uint64 _seq
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _seq (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _seq) (= (length (_seq . bv)) 2)) ;; bignum
              (write-long (ash (elt (_seq . bv) 0) 0) s)
              (write-long (ash (elt (_seq . bv) 1) -1) s))
             ((and (class _seq) (= (length (_seq . bv)) 1)) ;; big1
              (write-long (elt (_seq . bv) 0) s)
              (write-long (if (>= _seq 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _seq s)(write-long (if (>= _seq 0) 0 #xffffffff) s)))
     ;; uint8 _type
       (write-byte _type s)
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
   ;; uint64 _seq
     
#+(or :alpha :irix6 :x86_64)
      (setf _seq (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _seq (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLALocalizationMeta :md5sum-) "80458cf41934df80ec1c11ea394bde16")
(setf (get mla_localization_msgs::MLALocalizationMeta :datatype-) "mla_localization_msgs/MLALocalizationMeta")
(setf (get mla_localization_msgs::MLALocalizationMeta :definition-)
      "uint8 MLA_PARKING = 1
uint8 MLA_PILOT = 2
uint64 timestamp_us
uint64 seq
uint8 type

")



(provide :mla_localization_msgs/MLALocalizationMeta "80458cf41934df80ec1c11ea394bde16")


