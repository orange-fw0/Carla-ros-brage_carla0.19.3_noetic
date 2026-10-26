;; Auto-generated. Do not edit!


(when (boundp 'perception_interface_msgs::FusionParkingSlotData)
  (if (not (find-package "PERCEPTION_INTERFACE_MSGS"))
    (make-package "PERCEPTION_INTERFACE_MSGS"))
  (shadow 'FusionParkingSlotData (find-package "PERCEPTION_INTERFACE_MSGS")))
(unless (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA")
  (make-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))

(in-package "ROS")
;;//! \htmlinclude FusionParkingSlotData.msg.html


(intern "*FUSION_PARKING_SLOT_SOURCE_VISON*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(shadow '*FUSION_PARKING_SLOT_SOURCE_VISON* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(defconstant perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_VISON* 1)
(intern "*FUSION_PARKING_SLOT_SOURCE_ULTRASONIC*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(shadow '*FUSION_PARKING_SLOT_SOURCE_ULTRASONIC* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(defconstant perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_ULTRASONIC* 2)
(intern "*FUSION_PARKING_SLOT_SOURCE_MAP*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(shadow '*FUSION_PARKING_SLOT_SOURCE_MAP* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(defconstant perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_MAP* 4)
(intern "*FUSION_PARKING_SLOT_SOURCE_USER_SELECT*" (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(shadow '*FUSION_PARKING_SLOT_SOURCE_USER_SELECT* (find-package "PERCEPTION_INTERFACE_MSGS::FUSIONPARKINGSLOTDATA"))
(defconstant perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_USER_SELECT* 8)

(defun perception_interface_msgs::FusionParkingSlotData-to-symbol (const)
  (cond
        ((= const 1) 'perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_VISON*)
        ((= const 2) 'perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_ULTRASONIC*)
        ((= const 4) 'perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_MAP*)
        ((= const 8) 'perception_interface_msgs::FusionParkingSlotData::*FUSION_PARKING_SLOT_SOURCE_USER_SELECT*)
        (t nil)))

(defclass perception_interface_msgs::FusionParkingSlotData
  :super ros::object
  :slots (_available _charge_property _track_id _empty_votes _points_fusion _points_fusion_confidence _points_fusion_type _local_points_fusion _local_points_fusion_confidence _local_points_fusion_type _points_fusion_in_image _points_fusion_in_image_confidence _points_fusion_in_image_type _local_wheel_stop_points _slot_type _special_slot_type _virtual_point _reserved_info ))

(defmethod perception_interface_msgs::FusionParkingSlotData
  (:init
   (&key
    ((:available __available) 0)
    ((:charge_property __charge_property) 0)
    ((:track_id __track_id) 0)
    ((:empty_votes __empty_votes) 0)
    ((:points_fusion __points_fusion) ())
    ((:points_fusion_confidence __points_fusion_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_fusion_type __points_fusion_type) ())
    ((:local_points_fusion __local_points_fusion) ())
    ((:local_points_fusion_confidence __local_points_fusion_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:local_points_fusion_type __local_points_fusion_type) ())
    ((:points_fusion_in_image __points_fusion_in_image) ())
    ((:points_fusion_in_image_confidence __points_fusion_in_image_confidence) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:points_fusion_in_image_type __points_fusion_in_image_type) ())
    ((:local_wheel_stop_points __local_wheel_stop_points) ())
    ((:slot_type __slot_type) (instance perception_interface_msgs::FusionParkingSlotType :init))
    ((:special_slot_type __special_slot_type) (instance perception_interface_msgs::FusionSpecialParkingSlotType :init))
    ((:virtual_point __virtual_point) (instance perception_interface_msgs::ParkingSlotVirtualPoint :init))
    ((:reserved_info __reserved_info) "")
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _charge_property (round __charge_property))
   (setq _track_id (round __track_id))
   (setq _empty_votes (round __empty_votes))
   (setq _points_fusion __points_fusion)
   (setq _points_fusion_confidence __points_fusion_confidence)
   (setq _points_fusion_type __points_fusion_type)
   (setq _local_points_fusion __local_points_fusion)
   (setq _local_points_fusion_confidence __local_points_fusion_confidence)
   (setq _local_points_fusion_type __local_points_fusion_type)
   (setq _points_fusion_in_image __points_fusion_in_image)
   (setq _points_fusion_in_image_confidence __points_fusion_in_image_confidence)
   (setq _points_fusion_in_image_type __points_fusion_in_image_type)
   (setq _local_wheel_stop_points __local_wheel_stop_points)
   (setq _slot_type __slot_type)
   (setq _special_slot_type __special_slot_type)
   (setq _virtual_point __virtual_point)
   (setq _reserved_info (string __reserved_info))
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:charge_property
   (&optional __charge_property)
   (if __charge_property (setq _charge_property __charge_property)) _charge_property)
  (:track_id
   (&optional __track_id)
   (if __track_id (setq _track_id __track_id)) _track_id)
  (:empty_votes
   (&optional __empty_votes)
   (if __empty_votes (setq _empty_votes __empty_votes)) _empty_votes)
  (:points_fusion
   (&rest __points_fusion)
   (if (keywordp (car __points_fusion))
       (send* _points_fusion __points_fusion)
     (progn
       (if __points_fusion (setq _points_fusion (car __points_fusion)))
       _points_fusion)))
  (:points_fusion_confidence
   (&optional __points_fusion_confidence)
   (if __points_fusion_confidence (setq _points_fusion_confidence __points_fusion_confidence)) _points_fusion_confidence)
  (:points_fusion_type
   (&rest __points_fusion_type)
   (if (keywordp (car __points_fusion_type))
       (send* _points_fusion_type __points_fusion_type)
     (progn
       (if __points_fusion_type (setq _points_fusion_type (car __points_fusion_type)))
       _points_fusion_type)))
  (:local_points_fusion
   (&rest __local_points_fusion)
   (if (keywordp (car __local_points_fusion))
       (send* _local_points_fusion __local_points_fusion)
     (progn
       (if __local_points_fusion (setq _local_points_fusion (car __local_points_fusion)))
       _local_points_fusion)))
  (:local_points_fusion_confidence
   (&optional __local_points_fusion_confidence)
   (if __local_points_fusion_confidence (setq _local_points_fusion_confidence __local_points_fusion_confidence)) _local_points_fusion_confidence)
  (:local_points_fusion_type
   (&rest __local_points_fusion_type)
   (if (keywordp (car __local_points_fusion_type))
       (send* _local_points_fusion_type __local_points_fusion_type)
     (progn
       (if __local_points_fusion_type (setq _local_points_fusion_type (car __local_points_fusion_type)))
       _local_points_fusion_type)))
  (:points_fusion_in_image
   (&rest __points_fusion_in_image)
   (if (keywordp (car __points_fusion_in_image))
       (send* _points_fusion_in_image __points_fusion_in_image)
     (progn
       (if __points_fusion_in_image (setq _points_fusion_in_image (car __points_fusion_in_image)))
       _points_fusion_in_image)))
  (:points_fusion_in_image_confidence
   (&optional __points_fusion_in_image_confidence)
   (if __points_fusion_in_image_confidence (setq _points_fusion_in_image_confidence __points_fusion_in_image_confidence)) _points_fusion_in_image_confidence)
  (:points_fusion_in_image_type
   (&rest __points_fusion_in_image_type)
   (if (keywordp (car __points_fusion_in_image_type))
       (send* _points_fusion_in_image_type __points_fusion_in_image_type)
     (progn
       (if __points_fusion_in_image_type (setq _points_fusion_in_image_type (car __points_fusion_in_image_type)))
       _points_fusion_in_image_type)))
  (:local_wheel_stop_points
   (&rest __local_wheel_stop_points)
   (if (keywordp (car __local_wheel_stop_points))
       (send* _local_wheel_stop_points __local_wheel_stop_points)
     (progn
       (if __local_wheel_stop_points (setq _local_wheel_stop_points (car __local_wheel_stop_points)))
       _local_wheel_stop_points)))
  (:slot_type
   (&rest __slot_type)
   (if (keywordp (car __slot_type))
       (send* _slot_type __slot_type)
     (progn
       (if __slot_type (setq _slot_type (car __slot_type)))
       _slot_type)))
  (:special_slot_type
   (&rest __special_slot_type)
   (if (keywordp (car __special_slot_type))
       (send* _special_slot_type __special_slot_type)
     (progn
       (if __special_slot_type (setq _special_slot_type (car __special_slot_type)))
       _special_slot_type)))
  (:virtual_point
   (&rest __virtual_point)
   (if (keywordp (car __virtual_point))
       (send* _virtual_point __virtual_point)
     (progn
       (if __virtual_point (setq _virtual_point (car __virtual_point)))
       _virtual_point)))
  (:reserved_info
   (&optional __reserved_info)
   (if __reserved_info (setq _reserved_info __reserved_info)) _reserved_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; uint8 _charge_property
    1
    ;; uint64 _track_id
    8
    ;; int32 _empty_votes
    4
    ;; perception_interface_msgs/Point3f[] _points_fusion
    (apply #'+ (send-all _points_fusion :serialization-length)) 4
    ;; float32[] _points_fusion_confidence
    (* 4    (length _points_fusion_confidence)) 4
    ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _points_fusion_type
    (apply #'+ (send-all _points_fusion_type :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _local_points_fusion
    (apply #'+ (send-all _local_points_fusion :serialization-length)) 4
    ;; float32[] _local_points_fusion_confidence
    (* 4    (length _local_points_fusion_confidence)) 4
    ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _local_points_fusion_type
    (apply #'+ (send-all _local_points_fusion_type :serialization-length)) 4
    ;; perception_interface_msgs/Point2f[] _points_fusion_in_image
    (apply #'+ (send-all _points_fusion_in_image :serialization-length)) 4
    ;; float32[] _points_fusion_in_image_confidence
    (* 4    (length _points_fusion_in_image_confidence)) 4
    ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _points_fusion_in_image_type
    (apply #'+ (send-all _points_fusion_in_image_type :serialization-length)) 4
    ;; perception_interface_msgs/Point3f[] _local_wheel_stop_points
    (apply #'+ (send-all _local_wheel_stop_points :serialization-length)) 4
    ;; perception_interface_msgs/FusionParkingSlotType _slot_type
    (send _slot_type :serialization-length)
    ;; perception_interface_msgs/FusionSpecialParkingSlotType _special_slot_type
    (send _special_slot_type :serialization-length)
    ;; perception_interface_msgs/ParkingSlotVirtualPoint _virtual_point
    (send _virtual_point :serialization-length)
    ;; string _reserved_info
    4 (length _reserved_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; uint8 _charge_property
       (write-byte _charge_property s)
     ;; uint64 _track_id
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _track_id (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _track_id) (= (length (_track_id . bv)) 2)) ;; bignum
              (write-long (ash (elt (_track_id . bv) 0) 0) s)
              (write-long (ash (elt (_track_id . bv) 1) -1) s))
             ((and (class _track_id) (= (length (_track_id . bv)) 1)) ;; big1
              (write-long (elt (_track_id . bv) 0) s)
              (write-long (if (>= _track_id 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _track_id s)(write-long (if (>= _track_id 0) 0 #xffffffff) s)))
     ;; int32 _empty_votes
       (write-long _empty_votes s)
     ;; perception_interface_msgs/Point3f[] _points_fusion
     (write-long (length _points_fusion) s)
     (dolist (elem _points_fusion)
       (send elem :serialize s)
       )
     ;; float32[] _points_fusion_confidence
     (write-long (length _points_fusion_confidence) s)
     (dotimes (i (length _points_fusion_confidence))
       (sys::poke (elt _points_fusion_confidence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _points_fusion_type
     (write-long (length _points_fusion_type) s)
     (dolist (elem _points_fusion_type)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _local_points_fusion
     (write-long (length _local_points_fusion) s)
     (dolist (elem _local_points_fusion)
       (send elem :serialize s)
       )
     ;; float32[] _local_points_fusion_confidence
     (write-long (length _local_points_fusion_confidence) s)
     (dotimes (i (length _local_points_fusion_confidence))
       (sys::poke (elt _local_points_fusion_confidence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _local_points_fusion_type
     (write-long (length _local_points_fusion_type) s)
     (dolist (elem _local_points_fusion_type)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point2f[] _points_fusion_in_image
     (write-long (length _points_fusion_in_image) s)
     (dolist (elem _points_fusion_in_image)
       (send elem :serialize s)
       )
     ;; float32[] _points_fusion_in_image_confidence
     (write-long (length _points_fusion_in_image_confidence) s)
     (dotimes (i (length _points_fusion_in_image_confidence))
       (sys::poke (elt _points_fusion_in_image_confidence i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _points_fusion_in_image_type
     (write-long (length _points_fusion_in_image_type) s)
     (dolist (elem _points_fusion_in_image_type)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/Point3f[] _local_wheel_stop_points
     (write-long (length _local_wheel_stop_points) s)
     (dolist (elem _local_wheel_stop_points)
       (send elem :serialize s)
       )
     ;; perception_interface_msgs/FusionParkingSlotType _slot_type
       (send _slot_type :serialize s)
     ;; perception_interface_msgs/FusionSpecialParkingSlotType _special_slot_type
       (send _special_slot_type :serialize s)
     ;; perception_interface_msgs/ParkingSlotVirtualPoint _virtual_point
       (send _virtual_point :serialize s)
     ;; string _reserved_info
       (write-long (length _reserved_info) s) (princ _reserved_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _charge_property
     (setq _charge_property (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint64 _track_id
     
#+(or :alpha :irix6 :x86_64)
      (setf _track_id (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _track_id (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int32 _empty_votes
     (setq _empty_votes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; perception_interface_msgs/Point3f[] _points_fusion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _points_fusion)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _points_fusion_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_fusion_confidence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _points_fusion_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion_type (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ParkingSlotPointTypeEnum :init) r)) r))
     (dolist (elem- _points_fusion_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _local_points_fusion
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_points_fusion (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _local_points_fusion)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _local_points_fusion_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_points_fusion_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _local_points_fusion_confidence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _local_points_fusion_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_points_fusion_type (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ParkingSlotPointTypeEnum :init) r)) r))
     (dolist (elem- _local_points_fusion_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point2f[] _points_fusion_in_image
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion_in_image (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point2f :init) r)) r))
     (dolist (elem- _points_fusion_in_image)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _points_fusion_in_image_confidence
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion_in_image_confidence (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _points_fusion_in_image_confidence i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; perception_interface_msgs/ParkingSlotPointTypeEnum[] _points_fusion_in_image_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points_fusion_in_image_type (let (r) (dotimes (i n) (push (instance perception_interface_msgs::ParkingSlotPointTypeEnum :init) r)) r))
     (dolist (elem- _points_fusion_in_image_type)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/Point3f[] _local_wheel_stop_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _local_wheel_stop_points (let (r) (dotimes (i n) (push (instance perception_interface_msgs::Point3f :init) r)) r))
     (dolist (elem- _local_wheel_stop_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; perception_interface_msgs/FusionParkingSlotType _slot_type
     (send _slot_type :deserialize buf ptr-) (incf ptr- (send _slot_type :serialization-length))
   ;; perception_interface_msgs/FusionSpecialParkingSlotType _special_slot_type
     (send _special_slot_type :deserialize buf ptr-) (incf ptr- (send _special_slot_type :serialization-length))
   ;; perception_interface_msgs/ParkingSlotVirtualPoint _virtual_point
     (send _virtual_point :deserialize buf ptr-) (incf ptr- (send _virtual_point :serialization-length))
   ;; string _reserved_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get perception_interface_msgs::FusionParkingSlotData :md5sum-) "618da66150395d2014c8628a0fab5524")
(setf (get perception_interface_msgs::FusionParkingSlotData :datatype-) "perception_interface_msgs/FusionParkingSlotData")
(setf (get perception_interface_msgs::FusionParkingSlotData :definition-)
      "uint8 FUSION_PARKING_SLOT_SOURCE_VISON = 1
uint8 FUSION_PARKING_SLOT_SOURCE_ULTRASONIC = 2
uint8 FUSION_PARKING_SLOT_SOURCE_MAP = 4
uint8 FUSION_PARKING_SLOT_SOURCE_USER_SELECT = 8
uint8 available
uint8 charge_property
uint64 track_id
int32 empty_votes
perception_interface_msgs/Point3f[] points_fusion
float32[] points_fusion_confidence
perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_type
perception_interface_msgs/Point3f[] local_points_fusion
float32[] local_points_fusion_confidence
perception_interface_msgs/ParkingSlotPointTypeEnum[] local_points_fusion_type
perception_interface_msgs/Point2f[] points_fusion_in_image
float32[] points_fusion_in_image_confidence
perception_interface_msgs/ParkingSlotPointTypeEnum[] points_fusion_in_image_type
perception_interface_msgs/Point3f[] local_wheel_stop_points
perception_interface_msgs/FusionParkingSlotType slot_type
perception_interface_msgs/FusionSpecialParkingSlotType special_slot_type
perception_interface_msgs/ParkingSlotVirtualPoint virtual_point
string reserved_info

================================================================================
MSG: perception_interface_msgs/Point3f
float32 x
float32 y
float32 z

================================================================================
MSG: perception_interface_msgs/ParkingSlotPointTypeEnum
uint8 PARKING_SLOT_POINT_TYPE_UNKNOWN = 0
uint8 PARKING_SLOT_POINT_TYPE_REAL = 1
uint8 PARKING_SLOT_POINT_TYPE_FAKE = 2
uint8 value

================================================================================
MSG: perception_interface_msgs/Point2f
float32 x
float32 y

================================================================================
MSG: perception_interface_msgs/FusionParkingSlotType
uint8 PARKING_SLOT_TYPE_UNKOWN = 0
uint8 PARKING_SLOT_TYPE_VERTICAL = 1
uint8 PARKING_SLOT_TYPE_PARALLEL = 2
uint8 PARKING_SLOT_TYPE_NORMAL_DIAGONAL = 3
uint8 PARKING_SLOT_TYPE_ORTHOGON_DIAGONAL = 4
uint8 PARKING_SLOT_TYPE_TOTAL_NUM = 5
uint8 value

================================================================================
MSG: perception_interface_msgs/FusionSpecialParkingSlotType
uint8 SPECIAL_PARKING_SLOT_TYPE_DEFAULT = 0
uint8 SPECIAL_PARKING_SLOT_TYPE_CHARGEABLE = 1
uint8 SPECIAL_PARKING_SLOT_TYPE_MECHANICAL = 2
uint8 SPECIAL_PARKING_SLOT_TYPE_FORBIDDEN = 4
uint8 value

================================================================================
MSG: perception_interface_msgs/ParkingSlotVirtualPoint
uint8 point_index
perception_interface_msgs/Point3f local_point

")



(provide :perception_interface_msgs/FusionParkingSlotData "618da66150395d2014c8628a0fab5524")


