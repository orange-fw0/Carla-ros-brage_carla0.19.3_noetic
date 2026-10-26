;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSBodyEventInfo)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSBodyEventInfo (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSBODYEVENTINFO")
  (make-package "OMS_MSGS::OMSBODYEVENTINFO"))

(in-package "ROS")
;;//! \htmlinclude OMSBodyEventInfo.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*UNAVAILABLE* 0)
(intern "*HAND_OUT_OF_WINDOW*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*HAND_OUT_OF_WINDOW* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*HAND_OUT_OF_WINDOW* 1)
(intern "*BODY_LEAVING_THE_SEAT*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*BODY_LEAVING_THE_SEAT* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*BODY_LEAVING_THE_SEAT* 2)
(intern "*RESERVED1*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*RESERVED1* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*RESERVED1* 3)
(intern "*RESERVED2*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*RESERVED2* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*RESERVED2* 4)
(intern "*RESERVED3*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*RESERVED3* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*RESERVED3* 5)
(intern "*RESERVED4*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*RESERVED4* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*RESERVED4* 6)
(intern "*RESERVED5*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*RESERVED5* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*RESERVED5* 7)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSBODYEVENTINFO"))
(defconstant oms_msgs::OMSBodyEventInfo::*UNCERTAIN* 8)

(defun oms_msgs::OMSBodyEventInfo-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSBodyEventInfo::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSBodyEventInfo::*HAND_OUT_OF_WINDOW*)
        ((= const 2) 'oms_msgs::OMSBodyEventInfo::*BODY_LEAVING_THE_SEAT*)
        ((= const 3) 'oms_msgs::OMSBodyEventInfo::*RESERVED1*)
        ((= const 4) 'oms_msgs::OMSBodyEventInfo::*RESERVED2*)
        ((= const 5) 'oms_msgs::OMSBodyEventInfo::*RESERVED3*)
        ((= const 6) 'oms_msgs::OMSBodyEventInfo::*RESERVED4*)
        ((= const 7) 'oms_msgs::OMSBodyEventInfo::*RESERVED5*)
        ((= const 8) 'oms_msgs::OMSBodyEventInfo::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSBodyEventInfo
  :super ros::object
  :slots (_value _score _start_time _end_time ))

(defmethod oms_msgs::OMSBodyEventInfo
  (:init
   (&key
    ((:value __value) 0)
    ((:score __score) 0.0)
    ((:start_time __start_time) 0)
    ((:end_time __end_time) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   (setq _score (float __score))
   (setq _start_time (round __start_time))
   (setq _end_time (round __end_time))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:start_time
   (&optional __start_time)
   (if __start_time (setq _start_time __start_time)) _start_time)
  (:end_time
   (&optional __end_time)
   (if __end_time (setq _end_time __end_time)) _end_time)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ;; float32 _score
    4
    ;; uint64 _start_time
    8
    ;; uint64 _end_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;; float32 _score
       (sys::poke _score (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint64 _start_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _start_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _start_time) (= (length (_start_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_start_time . bv) 0) 0) s)
              (write-long (ash (elt (_start_time . bv) 1) -1) s))
             ((and (class _start_time) (= (length (_start_time . bv)) 1)) ;; big1
              (write-long (elt (_start_time . bv) 0) s)
              (write-long (if (>= _start_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _start_time s)(write-long (if (>= _start_time 0) 0 #xffffffff) s)))
     ;; uint64 _end_time
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _end_time (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _end_time) (= (length (_end_time . bv)) 2)) ;; bignum
              (write-long (ash (elt (_end_time . bv) 0) 0) s)
              (write-long (ash (elt (_end_time . bv) 1) -1) s))
             ((and (class _end_time) (= (length (_end_time . bv)) 1)) ;; big1
              (write-long (elt (_end_time . bv) 0) s)
              (write-long (if (>= _end_time 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _end_time s)(write-long (if (>= _end_time 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _score
     (setq _score (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint64 _start_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _start_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _start_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _end_time
     
#+(or :alpha :irix6 :x86_64)
      (setf _end_time (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _end_time (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get oms_msgs::OMSBodyEventInfo :md5sum-) "cb0cb3b1d6d9ed3e381ad4a37b829da8")
(setf (get oms_msgs::OMSBodyEventInfo :datatype-) "oms_msgs/OMSBodyEventInfo")
(setf (get oms_msgs::OMSBodyEventInfo :definition-)
      "uint8 UNAVAILABLE = 0
uint8 HAND_OUT_OF_WINDOW = 1
uint8 BODY_LEAVING_THE_SEAT = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 RESERVED4 = 6
uint8 RESERVED5 = 7
uint8 UNCERTAIN = 8
uint8 value
float32 score
uint64 start_time
uint64 end_time

")



(provide :oms_msgs/OMSBodyEventInfo "cb0cb3b1d6d9ed3e381ad4a37b829da8")


