;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::ParkingSpaceInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'ParkingSpaceInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::PARKINGSPACEINFO")
  (make-package "SYSTEM_MANAGER_MSGS::PARKINGSPACEINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingSpaceInfo.msg.html
(if (not (find-package "MLA_LOCALIZATION_MSGS"))
  (ros::roseus-add-msgs "mla_localization_msgs"))


(defclass system_manager_msgs::ParkingSpaceInfo
  :super ros::object
  :slots (_id _code _status _type _corners ))

(defmethod system_manager_msgs::ParkingSpaceInfo
  (:init
   (&key
    ((:id __id) 0)
    ((:code __code) 0)
    ((:status __status) (instance system_manager_msgs::ParkingSpaceStatusEnum :init))
    ((:type __type) (instance system_manager_msgs::ParkingSpaceTypeEnum :init))
    ((:corners __corners) ())
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _code (round __code))
   (setq _status __status)
   (setq _type __type)
   (setq _corners __corners)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:corners
   (&rest __corners)
   (if (keywordp (car __corners))
       (send* _corners __corners)
     (progn
       (if __corners (setq _corners (car __corners)))
       _corners)))
  (:serialization-length
   ()
   (+
    ;; uint64 _id
    8
    ;; uint8 _code
    1
    ;; system_manager_msgs/ParkingSpaceStatusEnum _status
    (send _status :serialization-length)
    ;; system_manager_msgs/ParkingSpaceTypeEnum _type
    (send _type :serialization-length)
    ;; mla_localization_msgs/MLAPosLocal[] _corners
    (apply #'+ (send-all _corners :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id) (= (length (_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id . bv) 0) 0) s)
              (write-long (ash (elt (_id . bv) 1) -1) s))
             ((and (class _id) (= (length (_id . bv)) 1)) ;; big1
              (write-long (elt (_id . bv) 0) s)
              (write-long (if (>= _id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id s)(write-long (if (>= _id 0) 0 #xffffffff) s)))
     ;; uint8 _code
       (write-byte _code s)
     ;; system_manager_msgs/ParkingSpaceStatusEnum _status
       (send _status :serialize s)
     ;; system_manager_msgs/ParkingSpaceTypeEnum _type
       (send _type :serialize s)
     ;; mla_localization_msgs/MLAPosLocal[] _corners
     (write-long (length _corners) s)
     (dolist (elem _corners)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _id
     
#+(or :alpha :irix6 :x86_64)
      (setf _id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; system_manager_msgs/ParkingSpaceStatusEnum _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; system_manager_msgs/ParkingSpaceTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; mla_localization_msgs/MLAPosLocal[] _corners
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _corners (let (r) (dotimes (i n) (push (instance mla_localization_msgs::MLAPosLocal :init) r)) r))
     (dolist (elem- _corners)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get system_manager_msgs::ParkingSpaceInfo :md5sum-) "ee747198c9da7f190b2ef73bf49bfcf4")
(setf (get system_manager_msgs::ParkingSpaceInfo :datatype-) "system_manager_msgs/ParkingSpaceInfo")
(setf (get system_manager_msgs::ParkingSpaceInfo :definition-)
      "uint64 id
uint8 code
system_manager_msgs/ParkingSpaceStatusEnum status
system_manager_msgs/ParkingSpaceTypeEnum type
mla_localization_msgs/MLAPosLocal[] corners

================================================================================
MSG: system_manager_msgs/ParkingSpaceStatusEnum
uint8 NO_INFORMATION = 0
uint8 PARKING_SPACE_VACANT = 1
uint8 PARKING_SPACE_OCCUPIED = 2
uint8 PARKING_SPACE_HIGHLIGHT = 3
uint8 value

================================================================================
MSG: system_manager_msgs/ParkingSpaceTypeEnum
uint8 UNKNOWN = 0
uint8 PARKING_SPACE_WITH_CHARGING = 1
uint8 value

================================================================================
MSG: mla_localization_msgs/MLAPosLocal
float64 x
float64 y
float64 z

")



(provide :system_manager_msgs/ParkingSpaceInfo "ee747198c9da7f190b2ef73bf49bfcf4")


