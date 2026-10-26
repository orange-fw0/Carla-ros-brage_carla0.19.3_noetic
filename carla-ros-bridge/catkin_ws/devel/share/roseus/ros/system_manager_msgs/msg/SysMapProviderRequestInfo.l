;; Auto-generated. Do not edit!


(when (boundp 'system_manager_msgs::SysMapProviderRequestInfo)
  (if (not (find-package "SYSTEM_MANAGER_MSGS"))
    (make-package "SYSTEM_MANAGER_MSGS"))
  (shadow 'SysMapProviderRequestInfo (find-package "SYSTEM_MANAGER_MSGS")))
(unless (find-package "SYSTEM_MANAGER_MSGS::SYSMAPPROVIDERREQUESTINFO")
  (make-package "SYSTEM_MANAGER_MSGS::SYSMAPPROVIDERREQUESTINFO"))

(in-package "ROS")
;;//! \htmlinclude SysMapProviderRequestInfo.msg.html
(if (not (find-package "MLA_LOCALIZATION_MSGS"))
  (ros::roseus-add-msgs "mla_localization_msgs"))


(defclass system_manager_msgs::SysMapProviderRequestInfo
  :super ros::object
  :slots (_position _radius_range _type _parking_lot_id _target_partition_id_list _query_mode _time_threshold_for_deleting _amout_for_deleting _map_content ))

(defmethod system_manager_msgs::SysMapProviderRequestInfo
  (:init
   (&key
    ((:position __position) (instance mla_localization_msgs::MLAPosGlobal :init))
    ((:radius_range __radius_range) 0)
    ((:type __type) (instance system_manager_msgs::ParkingLotTypeEnum :init))
    ((:parking_lot_id __parking_lot_id) 0)
    ((:target_partition_id_list __target_partition_id_list) (make-array 0 :initial-element 0 :element-type :integer))
    ((:query_mode __query_mode) (instance system_manager_msgs::ParkingQueryModeEnum :init))
    ((:time_threshold_for_deleting __time_threshold_for_deleting) 0)
    ((:amout_for_deleting __amout_for_deleting) 0)
    ((:map_content __map_content) (instance system_manager_msgs::MapContentToUpdate :init))
    )
   (send-super :init)
   (setq _position __position)
   (setq _radius_range (round __radius_range))
   (setq _type __type)
   (setq _parking_lot_id (round __parking_lot_id))
   (setq _target_partition_id_list __target_partition_id_list)
   (setq _query_mode __query_mode)
   (setq _time_threshold_for_deleting (round __time_threshold_for_deleting))
   (setq _amout_for_deleting (round __amout_for_deleting))
   (setq _map_content __map_content)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:radius_range
   (&optional __radius_range)
   (if __radius_range (setq _radius_range __radius_range)) _radius_range)
  (:type
   (&rest __type)
   (if (keywordp (car __type))
       (send* _type __type)
     (progn
       (if __type (setq _type (car __type)))
       _type)))
  (:parking_lot_id
   (&optional __parking_lot_id)
   (if __parking_lot_id (setq _parking_lot_id __parking_lot_id)) _parking_lot_id)
  (:target_partition_id_list
   (&optional __target_partition_id_list)
   (if __target_partition_id_list (setq _target_partition_id_list __target_partition_id_list)) _target_partition_id_list)
  (:query_mode
   (&rest __query_mode)
   (if (keywordp (car __query_mode))
       (send* _query_mode __query_mode)
     (progn
       (if __query_mode (setq _query_mode (car __query_mode)))
       _query_mode)))
  (:time_threshold_for_deleting
   (&optional __time_threshold_for_deleting)
   (if __time_threshold_for_deleting (setq _time_threshold_for_deleting __time_threshold_for_deleting)) _time_threshold_for_deleting)
  (:amout_for_deleting
   (&optional __amout_for_deleting)
   (if __amout_for_deleting (setq _amout_for_deleting __amout_for_deleting)) _amout_for_deleting)
  (:map_content
   (&rest __map_content)
   (if (keywordp (car __map_content))
       (send* _map_content __map_content)
     (progn
       (if __map_content (setq _map_content (car __map_content)))
       _map_content)))
  (:serialization-length
   ()
   (+
    ;; mla_localization_msgs/MLAPosGlobal _position
    (send _position :serialization-length)
    ;; uint32 _radius_range
    4
    ;; system_manager_msgs/ParkingLotTypeEnum _type
    (send _type :serialization-length)
    ;; uint32 _parking_lot_id
    4
    ;; uint32[] _target_partition_id_list
    (* 4    (length _target_partition_id_list)) 4
    ;; system_manager_msgs/ParkingQueryModeEnum _query_mode
    (send _query_mode :serialization-length)
    ;; uint64 _time_threshold_for_deleting
    8
    ;; uint32 _amout_for_deleting
    4
    ;; system_manager_msgs/MapContentToUpdate _map_content
    (send _map_content :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mla_localization_msgs/MLAPosGlobal _position
       (send _position :serialize s)
     ;; uint32 _radius_range
       (write-long _radius_range s)
     ;; system_manager_msgs/ParkingLotTypeEnum _type
       (send _type :serialize s)
     ;; uint32 _parking_lot_id
       (write-long _parking_lot_id s)
     ;; uint32[] _target_partition_id_list
     (write-long (length _target_partition_id_list) s)
     (dotimes (i (length _target_partition_id_list))
       (write-long (elt _target_partition_id_list i) s)
       )
     ;; system_manager_msgs/ParkingQueryModeEnum _query_mode
       (send _query_mode :serialize s)
     ;; uint64 _time_threshold_for_deleting
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _time_threshold_for_deleting (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _time_threshold_for_deleting) (= (length (_time_threshold_for_deleting . bv)) 2)) ;; bignum
              (write-long (ash (elt (_time_threshold_for_deleting . bv) 0) 0) s)
              (write-long (ash (elt (_time_threshold_for_deleting . bv) 1) -1) s))
             ((and (class _time_threshold_for_deleting) (= (length (_time_threshold_for_deleting . bv)) 1)) ;; big1
              (write-long (elt (_time_threshold_for_deleting . bv) 0) s)
              (write-long (if (>= _time_threshold_for_deleting 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _time_threshold_for_deleting s)(write-long (if (>= _time_threshold_for_deleting 0) 0 #xffffffff) s)))
     ;; uint32 _amout_for_deleting
       (write-long _amout_for_deleting s)
     ;; system_manager_msgs/MapContentToUpdate _map_content
       (send _map_content :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mla_localization_msgs/MLAPosGlobal _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; uint32 _radius_range
     (setq _radius_range (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; system_manager_msgs/ParkingLotTypeEnum _type
     (send _type :deserialize buf ptr-) (incf ptr- (send _type :serialization-length))
   ;; uint32 _parking_lot_id
     (setq _parking_lot_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _target_partition_id_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_partition_id_list (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _target_partition_id_list i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; system_manager_msgs/ParkingQueryModeEnum _query_mode
     (send _query_mode :deserialize buf ptr-) (incf ptr- (send _query_mode :serialization-length))
   ;; uint64 _time_threshold_for_deleting
     
#+(or :alpha :irix6 :x86_64)
      (setf _time_threshold_for_deleting (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _time_threshold_for_deleting (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint32 _amout_for_deleting
     (setq _amout_for_deleting (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; system_manager_msgs/MapContentToUpdate _map_content
     (send _map_content :deserialize buf ptr-) (incf ptr- (send _map_content :serialization-length))
   ;;
   self)
  )

(setf (get system_manager_msgs::SysMapProviderRequestInfo :md5sum-) "9bac8b403ecdb89398cc2d9976f87bc2")
(setf (get system_manager_msgs::SysMapProviderRequestInfo :datatype-) "system_manager_msgs/SysMapProviderRequestInfo")
(setf (get system_manager_msgs::SysMapProviderRequestInfo :definition-)
      "mla_localization_msgs/MLAPosGlobal position
uint32 radius_range
system_manager_msgs/ParkingLotTypeEnum type
uint32 parking_lot_id
uint32[] target_partition_id_list
system_manager_msgs/ParkingQueryModeEnum query_mode
uint64 time_threshold_for_deleting
uint32 amout_for_deleting
system_manager_msgs/MapContentToUpdate map_content

================================================================================
MSG: mla_localization_msgs/MLAPosGlobal
float64 latitude
float64 longitude
float64 altitude

================================================================================
MSG: system_manager_msgs/ParkingLotTypeEnum
uint8 PNP = 0
uint8 LPNP = 1
uint8 BOTH = 2
uint8 type

================================================================================
MSG: system_manager_msgs/ParkingQueryModeEnum
uint8 BY_RANGE = 0
uint8 BY_LAST_USAGE = 1
uint8 BY_LATEST_BUILD = 2
uint8 BY_SPECIFIC_ID = 3
uint8 mode

================================================================================
MSG: system_manager_msgs/MapContentToUpdate
string name
string address
string label
string parking_space_id
string parking_type
string reversed

")



(provide :system_manager_msgs/SysMapProviderRequestInfo "9bac8b403ecdb89398cc2d9976f87bc2")


