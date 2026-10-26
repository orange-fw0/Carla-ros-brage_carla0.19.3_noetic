;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::DoorReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'DoorReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::DOORREPORTDATA")
  (make-package "ENDPOINT_MSGS::DOORREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude DoorReportData.msg.html


(defclass endpoint_msgs::DoorReportData
  :super ros::object
  :slots (_timestamp_us _opened_door_array _valid ))

(defmethod endpoint_msgs::DoorReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:opened_door_array __opened_door_array) ())
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _opened_door_array __opened_door_array)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:opened_door_array
   (&rest __opened_door_array)
   (if (keywordp (car __opened_door_array))
       (send* _opened_door_array __opened_door_array)
     (progn
       (if __opened_door_array (setq _opened_door_array (car __opened_door_array)))
       _opened_door_array)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; endpoint_msgs/DoorType[] _opened_door_array
    (apply #'+ (send-all _opened_door_array :serialization-length)) 4
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
     ;; endpoint_msgs/DoorType[] _opened_door_array
     (write-long (length _opened_door_array) s)
     (dolist (elem _opened_door_array)
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
   ;; endpoint_msgs/DoorType[] _opened_door_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opened_door_array (let (r) (dotimes (i n) (push (instance endpoint_msgs::DoorType :init) r)) r))
     (dolist (elem- _opened_door_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::DoorReportData :md5sum-) "85a4ee7ea87c38816f3b71fbd0df1296")
(setf (get endpoint_msgs::DoorReportData :datatype-) "endpoint_msgs/DoorReportData")
(setf (get endpoint_msgs::DoorReportData :definition-)
      "uint64 timestamp_us
endpoint_msgs/DoorType[] opened_door_array
bool valid

================================================================================
MSG: endpoint_msgs/DoorType
uint8 DRIVER = 0
uint8 PASSENGER = 1
uint8 REAR_LEFT = 2
uint8 REAR_RIGHT = 3
uint8 HOOD = 4
uint8 TRUNK = 5
uint8 value

")



(provide :endpoint_msgs/DoorReportData "85a4ee7ea87c38816f3b71fbd0df1296")


