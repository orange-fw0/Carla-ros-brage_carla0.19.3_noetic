;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::SuspensionReportData)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'SuspensionReportData (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::SUSPENSIONREPORTDATA")
  (make-package "ENDPOINT_MSGS::SUSPENSIONREPORTDATA"))

(in-package "ROS")
;;//! \htmlinclude SuspensionReportData.msg.html


(defclass endpoint_msgs::SuspensionReportData
  :super ros::object
  :slots (_timestamp_us _calibration_completed _requested_target_level _cur_height_status _suspension_height _suspension_hight_valid _failure_status _reserved1 _reserved2 _adjust_status ))

(defmethod endpoint_msgs::SuspensionReportData
  (:init
   (&key
    ((:timestamp_us __timestamp_us) 0)
    ((:calibration_completed __calibration_completed) nil)
    ((:requested_target_level __requested_target_level) (instance endpoint_msgs::HeightLevel :init))
    ((:cur_height_status __cur_height_status) (instance endpoint_msgs::HeightLevel :init))
    ((:suspension_height __suspension_height) (instance endpoint_msgs::SuspensionHeight :init))
    ((:suspension_hight_valid __suspension_hight_valid) (instance endpoint_msgs::SuspensionHeightValid :init))
    ((:failure_status __failure_status) (instance endpoint_msgs::FailureStatus :init))
    ((:reserved1 __reserved1) 0.0)
    ((:reserved2 __reserved2) 0.0)
    ((:adjust_status __adjust_status) (instance endpoint_msgs::SuspensionAdjustStatus :init))
    )
   (send-super :init)
   (setq _timestamp_us (round __timestamp_us))
   (setq _calibration_completed __calibration_completed)
   (setq _requested_target_level __requested_target_level)
   (setq _cur_height_status __cur_height_status)
   (setq _suspension_height __suspension_height)
   (setq _suspension_hight_valid __suspension_hight_valid)
   (setq _failure_status __failure_status)
   (setq _reserved1 (float __reserved1))
   (setq _reserved2 (float __reserved2))
   (setq _adjust_status __adjust_status)
   self)
  (:timestamp_us
   (&optional __timestamp_us)
   (if __timestamp_us (setq _timestamp_us __timestamp_us)) _timestamp_us)
  (:calibration_completed
   (&optional (__calibration_completed :null))
   (if (not (eq __calibration_completed :null)) (setq _calibration_completed __calibration_completed)) _calibration_completed)
  (:requested_target_level
   (&rest __requested_target_level)
   (if (keywordp (car __requested_target_level))
       (send* _requested_target_level __requested_target_level)
     (progn
       (if __requested_target_level (setq _requested_target_level (car __requested_target_level)))
       _requested_target_level)))
  (:cur_height_status
   (&rest __cur_height_status)
   (if (keywordp (car __cur_height_status))
       (send* _cur_height_status __cur_height_status)
     (progn
       (if __cur_height_status (setq _cur_height_status (car __cur_height_status)))
       _cur_height_status)))
  (:suspension_height
   (&rest __suspension_height)
   (if (keywordp (car __suspension_height))
       (send* _suspension_height __suspension_height)
     (progn
       (if __suspension_height (setq _suspension_height (car __suspension_height)))
       _suspension_height)))
  (:suspension_hight_valid
   (&rest __suspension_hight_valid)
   (if (keywordp (car __suspension_hight_valid))
       (send* _suspension_hight_valid __suspension_hight_valid)
     (progn
       (if __suspension_hight_valid (setq _suspension_hight_valid (car __suspension_hight_valid)))
       _suspension_hight_valid)))
  (:failure_status
   (&rest __failure_status)
   (if (keywordp (car __failure_status))
       (send* _failure_status __failure_status)
     (progn
       (if __failure_status (setq _failure_status (car __failure_status)))
       _failure_status)))
  (:reserved1
   (&optional __reserved1)
   (if __reserved1 (setq _reserved1 __reserved1)) _reserved1)
  (:reserved2
   (&optional __reserved2)
   (if __reserved2 (setq _reserved2 __reserved2)) _reserved2)
  (:adjust_status
   (&rest __adjust_status)
   (if (keywordp (car __adjust_status))
       (send* _adjust_status __adjust_status)
     (progn
       (if __adjust_status (setq _adjust_status (car __adjust_status)))
       _adjust_status)))
  (:serialization-length
   ()
   (+
    ;; uint64 _timestamp_us
    8
    ;; bool _calibration_completed
    1
    ;; endpoint_msgs/HeightLevel _requested_target_level
    (send _requested_target_level :serialization-length)
    ;; endpoint_msgs/HeightLevel _cur_height_status
    (send _cur_height_status :serialization-length)
    ;; endpoint_msgs/SuspensionHeight _suspension_height
    (send _suspension_height :serialization-length)
    ;; endpoint_msgs/SuspensionHeightValid _suspension_hight_valid
    (send _suspension_hight_valid :serialization-length)
    ;; endpoint_msgs/FailureStatus _failure_status
    (send _failure_status :serialization-length)
    ;; float32 _reserved1
    4
    ;; float32 _reserved2
    4
    ;; endpoint_msgs/SuspensionAdjustStatus _adjust_status
    (send _adjust_status :serialization-length)
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
     ;; bool _calibration_completed
       (if _calibration_completed (write-byte -1 s) (write-byte 0 s))
     ;; endpoint_msgs/HeightLevel _requested_target_level
       (send _requested_target_level :serialize s)
     ;; endpoint_msgs/HeightLevel _cur_height_status
       (send _cur_height_status :serialize s)
     ;; endpoint_msgs/SuspensionHeight _suspension_height
       (send _suspension_height :serialize s)
     ;; endpoint_msgs/SuspensionHeightValid _suspension_hight_valid
       (send _suspension_hight_valid :serialize s)
     ;; endpoint_msgs/FailureStatus _failure_status
       (send _failure_status :serialize s)
     ;; float32 _reserved1
       (sys::poke _reserved1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _reserved2
       (sys::poke _reserved2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; endpoint_msgs/SuspensionAdjustStatus _adjust_status
       (send _adjust_status :serialize s)
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
   ;; bool _calibration_completed
     (setq _calibration_completed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; endpoint_msgs/HeightLevel _requested_target_level
     (send _requested_target_level :deserialize buf ptr-) (incf ptr- (send _requested_target_level :serialization-length))
   ;; endpoint_msgs/HeightLevel _cur_height_status
     (send _cur_height_status :deserialize buf ptr-) (incf ptr- (send _cur_height_status :serialization-length))
   ;; endpoint_msgs/SuspensionHeight _suspension_height
     (send _suspension_height :deserialize buf ptr-) (incf ptr- (send _suspension_height :serialization-length))
   ;; endpoint_msgs/SuspensionHeightValid _suspension_hight_valid
     (send _suspension_hight_valid :deserialize buf ptr-) (incf ptr- (send _suspension_hight_valid :serialization-length))
   ;; endpoint_msgs/FailureStatus _failure_status
     (send _failure_status :deserialize buf ptr-) (incf ptr- (send _failure_status :serialization-length))
   ;; float32 _reserved1
     (setq _reserved1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _reserved2
     (setq _reserved2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; endpoint_msgs/SuspensionAdjustStatus _adjust_status
     (send _adjust_status :deserialize buf ptr-) (incf ptr- (send _adjust_status :serialization-length))
   ;;
   self)
  )

(setf (get endpoint_msgs::SuspensionReportData :md5sum-) "edb923c971181c057278446d61875f55")
(setf (get endpoint_msgs::SuspensionReportData :datatype-) "endpoint_msgs/SuspensionReportData")
(setf (get endpoint_msgs::SuspensionReportData :definition-)
      "uint64 timestamp_us
bool calibration_completed
endpoint_msgs/HeightLevel requested_target_level
endpoint_msgs/HeightLevel cur_height_status
endpoint_msgs/SuspensionHeight suspension_height
endpoint_msgs/SuspensionHeightValid suspension_hight_valid
endpoint_msgs/FailureStatus failure_status
float32 reserved1
float32 reserved2
endpoint_msgs/SuspensionAdjustStatus adjust_status

================================================================================
MSG: endpoint_msgs/HeightLevel
uint8 NONE = 0
uint8 LEVEL1 = 1
uint8 LEVEL2 = 2
uint8 LEVEL3 = 3
uint8 LEVEL4 = 4
uint8 LEVEL5 = 5
uint8 LEVEL6 = 6
uint8 LEVEL7 = 7
uint8 LEVEL8 = 8
uint8 LEVEL9 = 9
uint8 LEVEL10 = 10
uint8 RESERVED1 = 11
uint8 RESERVED2 = 12
uint8 RESERVED3 = 13
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionHeight
int8 front_left
int8 front_right
int8 rear_left
int8 rear_right

================================================================================
MSG: endpoint_msgs/SuspensionHeightValid
bool front_left
bool front_right
bool rear_left
bool rear_right

================================================================================
MSG: endpoint_msgs/FailureStatus
uint8 NOFAILURE = 0
uint8 TEMPORARYFAILURE = 1
uint8 FAILURE = 2
uint8 RESERVED = 3
uint8 value

================================================================================
MSG: endpoint_msgs/SuspensionAdjustStatus
uint8 NOACTION = 0
uint8 LOWERING = 1
uint8 LIFTING = 2
uint8 PENDING = 3
uint8 ADJUSTING = 4
uint8 RESERVED = 5
uint8 value

")



(provide :endpoint_msgs/SuspensionReportData "edb923c971181c057278446d61875f55")


