;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::BoschRadarSensorStatus)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'BoschRadarSensorStatus (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::BOSCHRADARSENSORSTATUS")
  (make-package "PERCEPTION_INTERFACE_MSGS::BOSCHRADARSENSORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude BoschRadarSensorStatus.msg.html


(defclass perception_interface_msgs::BoschRadarSensorStatus
  :super ros::object
  :slots (_sensor_tag _hardware_failure _alignment_failure _sgu_failure _sensor_dirty _other_failure _status _details ))

(defmethod perception_interface_msgs::BoschRadarSensorStatus
  (:init
   (&key
    ((:sensor_tag __sensor_tag) "")
    ((:hardware_failure __hardware_failure) 0)
    ((:alignment_failure __alignment_failure) 0)
    ((:sgu_failure __sgu_failure) 0)
    ((:sensor_dirty __sensor_dirty) 0)
    ((:other_failure __other_failure) 0)
    ((:status __status) 0)
    ((:details __details) "")
    )
   (send-super :init)
   (setq _sensor_tag (string __sensor_tag))
   (setq _hardware_failure (round __hardware_failure))
   (setq _alignment_failure (round __alignment_failure))
   (setq _sgu_failure (round __sgu_failure))
   (setq _sensor_dirty (round __sensor_dirty))
   (setq _other_failure (round __other_failure))
   (setq _status (round __status))
   (setq _details (string __details))
   self)
  (:sensor_tag
   (&optional __sensor_tag)
   (if __sensor_tag (setq _sensor_tag __sensor_tag)) _sensor_tag)
  (:hardware_failure
   (&optional __hardware_failure)
   (if __hardware_failure (setq _hardware_failure __hardware_failure)) _hardware_failure)
  (:alignment_failure
   (&optional __alignment_failure)
   (if __alignment_failure (setq _alignment_failure __alignment_failure)) _alignment_failure)
  (:sgu_failure
   (&optional __sgu_failure)
   (if __sgu_failure (setq _sgu_failure __sgu_failure)) _sgu_failure)
  (:sensor_dirty
   (&optional __sensor_dirty)
   (if __sensor_dirty (setq _sensor_dirty __sensor_dirty)) _sensor_dirty)
  (:other_failure
   (&optional __other_failure)
   (if __other_failure (setq _other_failure __other_failure)) _other_failure)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:details
   (&optional __details)
   (if __details (setq _details __details)) _details)
  (:serialization-length
   ()
   (+
    ;; string _sensor_tag
    4 (length _sensor_tag)
    ;; int16 _hardware_failure
    2
    ;; int16 _alignment_failure
    2
    ;; int16 _sgu_failure
    2
    ;; int16 _sensor_dirty
    2
    ;; int16 _other_failure
    2
    ;; uint64 _status
    8
    ;; string _details
    4 (length _details)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sensor_tag
       (write-long (length _sensor_tag) s) (princ _sensor_tag s)
     ;; int16 _hardware_failure
       (write-word _hardware_failure s)
     ;; int16 _alignment_failure
       (write-word _alignment_failure s)
     ;; int16 _sgu_failure
       (write-word _sgu_failure s)
     ;; int16 _sensor_dirty
       (write-word _sensor_dirty s)
     ;; int16 _other_failure
       (write-word _other_failure s)
     ;; uint64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;; string _details
       (write-long (length _details) s) (princ _details s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sensor_tag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sensor_tag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _hardware_failure
     (setq _hardware_failure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _alignment_failure
     (setq _alignment_failure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sgu_failure
     (setq _sgu_failure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _sensor_dirty
     (setq _sensor_dirty (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _other_failure
     (setq _other_failure (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _status
     
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _details
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _details (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::BoschRadarSensorStatus :md5sum-) "4a4e73d46d61946dedbe1686d258c98b")
(setf (get perception_interface_msgs::BoschRadarSensorStatus :datatype-) "perception_interface_msgs/BoschRadarSensorStatus")
(setf (get perception_interface_msgs::BoschRadarSensorStatus :definition-)
      "string sensor_tag
int16 hardware_failure
int16 alignment_failure
int16 sgu_failure
int16 sensor_dirty
int16 other_failure
uint64 status
string details

")



(provide :perception_interface_msgs/BoschRadarSensorStatus "4a4e73d46d61946dedbe1686d258c98b")


