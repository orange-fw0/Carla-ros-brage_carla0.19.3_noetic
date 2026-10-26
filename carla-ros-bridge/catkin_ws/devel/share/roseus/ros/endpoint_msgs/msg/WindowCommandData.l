;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::WindowCommandData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'WindowCommandData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::WINDOWCOMMANDDATA")
  (make-package "ENDPOINT_MSGS::WINDOWCOMMANDDATA"))

(in-package "ROS")
;;//! \htmlinclude WindowCommandData.msg.html


(defclass endpoint_msgs::WindowCommandData
  :super ros::object
  :slots (_timestamp_us _window_lock _window_left_front _window_right_front _window_left_rear _window_right_rear _window_top ))

(defmethod endpoint_msgs::WindowCommandData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:window_lock __window_lock) nil)
    ((:window_left_front __window_left_front) (instance endpoint_msgs::WindowType :init))
    ((:window_right_front __window_right_front) (instance endpoint_msgs::WindowType :init))
    ((:window_left_rear __window_left_rear) (instance endpoint_msgs::WindowType :init))
    ((:window_right_rear __window_right_rear) (instance endpoint_msgs::WindowType :init))
    ((:window_top __window_top) (instance endpoint_msgs::WindowType :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _window_lock __window_lock)
   (setq _window_left_front __window_left_front)
   (setq _window_right_front __window_right_front)
   (setq _window_left_rear __window_left_rear)
   (setq _window_right_rear __window_right_rear)
   (setq _window_top __window_top)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:window_lock
   (&optional (__window_lock :null))
   (if (not (eq __window_lock :null)) (setq _window_lock __window_lock)) _window_lock)
  (:window_left_front
   (&rest __window_left_front)
   (if (keywordp (car __window_left_front))
       (send* _window_left_front __window_left_front)
     (progn
       (if __window_left_front (setq _window_left_front (car __window_left_front)))
       _window_left_front)))
  (:window_right_front
   (&rest __window_right_front)
   (if (keywordp (car __window_right_front))
       (send* _window_right_front __window_right_front)
     (progn
       (if __window_right_front (setq _window_right_front (car __window_right_front)))
       _window_right_front)))
  (:window_left_rear
   (&rest __window_left_rear)
   (if (keywordp (car __window_left_rear))
       (send* _window_left_rear __window_left_rear)
     (progn
       (if __window_left_rear (setq _window_left_rear (car __window_left_rear)))
       _window_left_rear)))
  (:window_right_rear
   (&rest __window_right_rear)
   (if (keywordp (car __window_right_rear))
       (send* _window_right_rear __window_right_rear)
     (progn
       (if __window_right_rear (setq _window_right_rear (car __window_right_rear)))
       _window_right_rear)))
  (:window_top
   (&rest __window_top)
   (if (keywordp (car __window_top))
       (send* _window_top __window_top)
     (progn
       (if __window_top (setq _window_top (car __window_top)))
       _window_top)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _window_lock
    1
    ;; endpoint_msgs/WindowType _window_left_front
    (send _window_left_front :serialization-length)
    ;; endpoint_msgs/WindowType _window_right_front
    (send _window_right_front :serialization-length)
    ;; endpoint_msgs/WindowType _window_left_rear
    (send _window_left_rear :serialization-length)
    ;; endpoint_msgs/WindowType _window_right_rear
    (send _window_right_rear :serialization-length)
    ;; endpoint_msgs/WindowType _window_top
    (send _window_top :serialization-length)
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
     ;; endpoint_msgs/WindowType _window_left_front
       (send _window_left_front :serialize s)
     ;; endpoint_msgs/WindowType _window_right_front
       (send _window_right_front :serialize s)
     ;; endpoint_msgs/WindowType _window_left_rear
       (send _window_left_rear :serialize s)
     ;; endpoint_msgs/WindowType _window_right_rear
       (send _window_right_rear :serialize s)
     ;; endpoint_msgs/WindowType _window_top
       (send _window_top :serialize s)
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
   ;; endpoint_msgs/WindowType _window_left_front
     (send _window_left_front :deserialize buf ptr-) (incf ptr- (send _window_left_front :serialization-length))
   ;; endpoint_msgs/WindowType _window_right_front
     (send _window_right_front :deserialize buf ptr-) (incf ptr- (send _window_right_front :serialization-length))
   ;; endpoint_msgs/WindowType _window_left_rear
     (send _window_left_rear :deserialize buf ptr-) (incf ptr- (send _window_left_rear :serialization-length))
   ;; endpoint_msgs/WindowType _window_right_rear
     (send _window_right_rear :deserialize buf ptr-) (incf ptr- (send _window_right_rear :serialization-length))
   ;; endpoint_msgs/WindowType _window_top
     (send _window_top :deserialize buf ptr-) (incf ptr- (send _window_top :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::WindowCommandData :md5sum-) "7547f26f8cd2ee6600aeb12eff893dae")
(setf (get endpoint_msgs::WindowCommandData :datatype-) "endpoint_msgs/WindowCommandData")
(setf (get endpoint_msgs::WindowCommandData :definition-)
      "uint64 timestamp_us
bool window_lock
endpoint_msgs/WindowType window_left_front
endpoint_msgs/WindowType window_right_front
endpoint_msgs/WindowType window_left_rear
endpoint_msgs/WindowType window_right_rear
endpoint_msgs/WindowType window_top

================================================================================
MSG: endpoint_msgs/WindowType
uint8 LIFT_STOP = 0
uint8 LIFT_UP = 1
uint8 LIFT_DOWN = 2
uint8 value

")



(provide :endpoint_msgs/WindowCommandData "7547f26f8cd2ee6600aeb12eff893dae")


