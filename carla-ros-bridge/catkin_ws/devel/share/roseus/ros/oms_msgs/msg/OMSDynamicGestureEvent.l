;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSDynamicGestureEvent)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSDynamicGestureEvent (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT")
  (make-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))

(in-package "ROS")
;;//! \htmlinclude OMSDynamicGestureEvent.msg.html


(intern "*UNAVAILABLE*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*UNAVAILABLE* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*UNAVAILABLE* 0)
(intern "*DYNAMIC_GESTURE_FINGER_LASER*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_FINGER_LASER* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FINGER_LASER* 1)
(intern "*DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT* 2)
(intern "*DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT* 3)
(intern "*DYNAMIC_GESTURE_PINCH*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_PINCH* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_PINCH* 4)
(intern "*DYNAMIC_GESTURE_FIST*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_FIST* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FIST* 5)
(intern "*DYNAMIC_GESTURE_GRAB*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_GRAB* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_GRAB* 6)
(intern "*DYNAMIC_GESTURE_PALM*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_PALM* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_PALM* 7)
(intern "*DYNAMIC_GESTURE_OK*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_OK* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_OK* 8)
(intern "*DYNAMIC_GESTURE_THUMBUP_CLICK*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_THUMBUP_CLICK* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_THUMBUP_CLICK* 9)
(intern "*DYNAMIC_GESTURE_THUMBUP*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_THUMBUP* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_THUMBUP* 10)
(intern "*DYNAMIC_GESTURE_GRAB_OR_FIST*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_GRAB_OR_FIST* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_GRAB_OR_FIST* 11)
(intern "*DYNAMIC_GESTURE_RESERVED1*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_RESERVED1* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED1* 12)
(intern "*DYNAMIC_GESTURE_RESERVED2*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_RESERVED2* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED2* 13)
(intern "*DYNAMIC_GESTURE_RESERVED3*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_RESERVED3* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED3* 14)
(intern "*DYNAMIC_GESTURE_RESERVED4*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_RESERVED4* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED4* 15)
(intern "*DYNAMIC_GESTURE_RESERVED5*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*DYNAMIC_GESTURE_RESERVED5* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED5* 16)
(intern "*UNCERTAIN*" (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(shadow '*UNCERTAIN* (find-package "OMS_MSGS::OMSDYNAMICGESTUREEVENT"))
(defconstant oms_msgs::OMSDynamicGestureEvent::*UNCERTAIN* 17)

(defun oms_msgs::OMSDynamicGestureEvent-to-symbol (const)
  (cond
        ((= const 0) 'oms_msgs::OMSDynamicGestureEvent::*UNAVAILABLE*)
        ((= const 1) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FINGER_LASER*)
        ((= const 2) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT*)
        ((= const 3) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT*)
        ((= const 4) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_PINCH*)
        ((= const 5) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_FIST*)
        ((= const 6) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_GRAB*)
        ((= const 7) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_PALM*)
        ((= const 8) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_OK*)
        ((= const 9) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_THUMBUP_CLICK*)
        ((= const 10) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_THUMBUP*)
        ((= const 11) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_GRAB_OR_FIST*)
        ((= const 12) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED1*)
        ((= const 13) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED2*)
        ((= const 14) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED3*)
        ((= const 15) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED4*)
        ((= const 16) 'oms_msgs::OMSDynamicGestureEvent::*DYNAMIC_GESTURE_RESERVED5*)
        ((= const 17) 'oms_msgs::OMSDynamicGestureEvent::*UNCERTAIN*)
        (t nil)))

(defclass oms_msgs::OMSDynamicGestureEvent
  :super ros::object
  :slots (_value _score _start_time _end_time ))

(defmethod oms_msgs::OMSDynamicGestureEvent
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

(setf (get oms_msgs::OMSDynamicGestureEvent :md5sum-) "97313da58e48d579dcb48ac49cd095ad")
(setf (get oms_msgs::OMSDynamicGestureEvent :datatype-) "oms_msgs/OMSDynamicGestureEvent")
(setf (get oms_msgs::OMSDynamicGestureEvent :definition-)
      "uint8 UNAVAILABLE = 0
uint8 DYNAMIC_GESTURE_FINGER_LASER = 1
uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_LEFT = 2
uint8 DYNAMIC_GESTURE_FINGER_CIRCLE_RIGHT = 3
uint8 DYNAMIC_GESTURE_PINCH = 4
uint8 DYNAMIC_GESTURE_FIST = 5
uint8 DYNAMIC_GESTURE_GRAB = 6
uint8 DYNAMIC_GESTURE_PALM = 7
uint8 DYNAMIC_GESTURE_OK = 8
uint8 DYNAMIC_GESTURE_THUMBUP_CLICK = 9
uint8 DYNAMIC_GESTURE_THUMBUP = 10
uint8 DYNAMIC_GESTURE_GRAB_OR_FIST = 11
uint8 DYNAMIC_GESTURE_RESERVED1 = 12
uint8 DYNAMIC_GESTURE_RESERVED2 = 13
uint8 DYNAMIC_GESTURE_RESERVED3 = 14
uint8 DYNAMIC_GESTURE_RESERVED4 = 15
uint8 DYNAMIC_GESTURE_RESERVED5 = 16
uint8 UNCERTAIN = 17
uint8 value
float32 score
uint64 start_time
uint64 end_time

")



(provide :oms_msgs/OMSDynamicGestureEvent "97313da58e48d579dcb48ac49cd095ad")


