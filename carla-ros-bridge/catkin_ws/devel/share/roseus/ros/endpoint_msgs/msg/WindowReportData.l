;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WindowReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WindowReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WINDOWREPORTDATA")
  (make-package "ENDPOINT_MSGS::WINDOWREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude WindowReportData.msg.html


(defclass endpoint_msgs::WindowReportData
  :super ros::object
  :slots (_timestamp_us _window_lock _window_state_left_front _window_state_right_front _window_state_left_rear _window_state_right_rear _window_state_top _valid ))

(defmethod endpoint_msgs::WindowReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:window_lock __window_lock) nil)
    ((:window_state_left_front __window_state_left_front) (instance endpoint_msgs::WindowState :init))
    ((:window_state_right_front __window_state_right_front) (instance endpoint_msgs::WindowState :init))
    ((:window_state_left_rear __window_state_left_rear) (instance endpoint_msgs::WindowState :init))
    ((:window_state_right_rear __window_state_right_rear) (instance endpoint_msgs::WindowState :init))
    ((:window_state_top __window_state_top) (instance endpoint_msgs::WindowState :init))
    ((:valid __valid) nil)
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _window_lock __window_lock)
   (setq _window_state_left_front __window_state_left_front)
   (setq _window_state_right_front __window_state_right_front)
   (setq _window_state_left_rear __window_state_left_rear)
   (setq _window_state_right_rear __window_state_right_rear)
   (setq _window_state_top __window_state_top)
   (setq _valid __valid)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:window_lock
   (&optional (__window_lock :null))
   (if (not (eq __window_lock :null)) (setq _window_lock __window_lock)) _window_lock)
  (:window_state_left_front
   (&rest __window_state_left_front)
   (if (keywordp (car __window_state_left_front))
       (send* _window_state_left_front __window_state_left_front)
     (progn
       (if __window_state_left_front (setq _window_state_left_front (car __window_state_left_front)))
       _window_state_left_front)))
  (:window_state_right_front
   (&rest __window_state_right_front)
   (if (keywordp (car __window_state_right_front))
       (send* _window_state_right_front __window_state_right_front)
     (progn
       (if __window_state_right_front (setq _window_state_right_front (car __window_state_right_front)))
       _window_state_right_front)))
  (:window_state_left_rear
   (&rest __window_state_left_rear)
   (if (keywordp (car __window_state_left_rear))
       (send* _window_state_left_rear __window_state_left_rear)
     (progn
       (if __window_state_left_rear (setq _window_state_left_rear (car __window_state_left_rear)))
       _window_state_left_rear)))
  (:window_state_right_rear
   (&rest __window_state_right_rear)
   (if (keywordp (car __window_state_right_rear))
       (send* _window_state_right_rear __window_state_right_rear)
     (progn
       (if __window_state_right_rear (setq _window_state_right_rear (car __window_state_right_rear)))
       _window_state_right_rear)))
  (:window_state_top
   (&rest __window_state_top)
   (if (keywordp (car __window_state_top))
       (send* _window_state_top __window_state_top)
     (progn
       (if __window_state_top (setq _window_state_top (car __window_state_top)))
       _window_state_top)))
  (:valid
   (&optional (__valid :null))
   (if (not (eq __valid :null)) (setq _valid __valid)) _valid)
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _window_lock
    1
    ;; endpoint_msgs/WindowState _window_state_left_front
    (send _window_state_left_front :serialization-length)
    ;; endpoint_msgs/WindowState _window_state_right_front
    (send _window_state_right_front :serialization-length)
    ;; endpoint_msgs/WindowState _window_state_left_rear
    (send _window_state_left_rear :serialization-length)
    ;; endpoint_msgs/WindowState _window_state_right_rear
    (send _window_state_right_rear :serialization-length)
    ;; endpoint_msgs/WindowState _window_state_top
    (send _window_state_top :serialization-length)
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
     ;; bool _window_lock
       (if _window_lock (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/WindowState _window_state_left_front
       (send _window_state_left_front :serialize s)
     ;; endpoint_msgs/WindowState _window_state_right_front
       (send _window_state_right_front :serialize s)
     ;; endpoint_msgs/WindowState _window_state_left_rear
       (send _window_state_left_rear :serialize s)
     ;; endpoint_msgs/WindowState _window_state_right_rear
       (send _window_state_right_rear :serialize s)
     ;; endpoint_msgs/WindowState _window_state_top
       (send _window_state_top :serialize s)
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
   ;; bool _window_lock
     (setq _window_lock (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/WindowState _window_state_left_front
     (send _window_state_left_front :deserialize buf ptr-) (incf ptr- (send _window_state_left_front :serialization-length))
   ;; endpoint_msgs/WindowState _window_state_right_front
     (send _window_state_right_front :deserialize buf ptr-) (incf ptr- (send _window_state_right_front :serialization-length))
   ;; endpoint_msgs/WindowState _window_state_left_rear
     (send _window_state_left_rear :deserialize buf ptr-) (incf ptr- (send _window_state_left_rear :serialization-length))
   ;; endpoint_msgs/WindowState _window_state_right_rear
     (send _window_state_right_rear :deserialize buf ptr-) (incf ptr- (send _window_state_right_rear :serialization-length))
   ;; endpoint_msgs/WindowState _window_state_top
     (send _window_state_top :deserialize buf ptr-) (incf ptr- (send _window_state_top :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::WindowReportData :md5sum-) "f072ee52e155260b4ecbe7f25e3f6c5a")
(setf (get endpoint_msgs::WindowReportData :datatype-) "endpoint_msgs/WindowReportData")
(setf (get endpoint_msgs::WindowReportData :definition-)
      "uint64 timestamp_us
bool window_lock
endpoint_msgs/WindowState window_state_left_front
endpoint_msgs/WindowState window_state_right_front
endpoint_msgs/WindowState window_state_left_rear
endpoint_msgs/WindowState window_state_right_rear
endpoint_msgs/WindowState window_state_top
bool valid

================================================================================
MSG: endpoint_msgs/WindowState
uint8 WINDOW_CLOSED = 0
uint8 WINDOW_OPENED = 1
uint8 WINDOW_MIDDLE = 2
uint8 value

")



(provide :endpoint_msgs/WindowReportData "f072ee52e155260b4ecbe7f25e3f6c5a")


