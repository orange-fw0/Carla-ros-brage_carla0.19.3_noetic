;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::ButtonEventReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'ButtonEventReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::BUTTONEVENTREPORTDATA")
  (make-package "ENDPOINT_MSGS::BUTTONEVENTREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude ButtonEventReportData.msg.html


(defclass endpoint_msgs::ButtonEventReportData
  :super ros::object
  :slots (_timestamp_us _button_event_array _valid ))

(defmethod endpoint_msgs::ButtonEventReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:button_event_array __button_event_array) ())
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _button_event_array __button_event_array)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:button_event_array
   (&rest __button_event_array)
   (if (keywordp (car __button_event_array))
       (send* _button_event_array __button_event_array)
     (progn
       (if __button_event_array (setq _button_event_array (car __button_event_array)))
       _button_event_array)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/ButtonEvent[] _button_event_array
    (apply #'+ (send-all _button_event_array :serialization-length)) 4
    ;; bool _valid
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
     ;; endpoint_msgs/ButtonEvent[] _button_event_array
     (write-long (length _button_event_array) s)
     (dolist (elem _button_event_array)
       (send elem :serialize s)
       )
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
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
   ;; endpoint_msgs/ButtonEvent[] _button_event_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _button_event_array (let (r) (dotimes (i n) (push (instance endpoint_msgs::ButtonEvent :init) r)) r))
     (dolist (elem- _button_event_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::ButtonEventReportData :md5sum-) "8aa5f88ea6c9cfdaeafa68023f4e2b19")
(setf (get endpoint_msgs::ButtonEventReportData :datatype-) "endpoint_msgs/ButtonEventReportData")
(setf (get endpoint_msgs::ButtonEventReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/ButtonEvent[] button_event_array
bool valid

================================================================================
MSG: endpoint_msgs/ButtonEvent
uint8 BUTTON1 = 0
uint8 BUTTON2 = 1
uint8 BUTTON3 = 2
uint8 BUTTON4 = 3
uint8 BUTTON5 = 4
uint8 BUTTON6 = 5
uint8 BUTTON7 = 6
uint8 BUTTON8 = 7
uint8 BUTTON9 = 8
uint8 BUTTON10 = 9
uint8 BUTTON11 = 10
uint8 BUTTON12 = 11
uint8 BUTTON13 = 12
uint8 BUTTON14 = 13
uint8 BUTTON15 = 14
uint8 BUTTON16 = 15
uint8 BUTTON17 = 16
uint8 BUTTON18 = 17
uint8 BUTTON19 = 18
uint8 BUTTON20 = 19
uint8 value

")



(provide :endpoint_msgs/ButtonEventReportData "8aa5f88ea6c9cfdaeafa68023f4e2b19")


