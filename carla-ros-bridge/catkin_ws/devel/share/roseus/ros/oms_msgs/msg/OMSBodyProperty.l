;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSBodyProperty)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSBodyProperty (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSBODYPROPERTY")
  (make-package "OMS_MSGS::OMSBODYPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude OMSBodyProperty.msg.html


(defclass oms_msgs::OMSBodyProperty
  :super ros::object
  :slots (_det_roi _body_infos _sod_status ))

(defmethod oms_msgs::OMSBodyProperty
  (:init
   (&key
    ((:det_roi __det_roi) ())
    ((:body_infos __body_infos) ())
    ((:sod_status __sod_status) ())
    )
   (send-super :init)
   (setq _det_roi __det_roi)
   (setq _body_infos __body_infos)
   (setq _sod_status __sod_status)
   self)
  (:det_roi
   (&rest __det_roi)
   (if (keywordp (car __det_roi))
       (send* _det_roi __det_roi)
     (progn
       (if __det_roi (setq _det_roi (car __det_roi)))
       _det_roi)))
  (:body_infos
   (&rest __body_infos)
   (if (keywordp (car __body_infos))
       (send* _body_infos __body_infos)
     (progn
       (if __body_infos (setq _body_infos (car __body_infos)))
       _body_infos)))
  (:sod_status
   (&rest __sod_status)
   (if (keywordp (car __sod_status))
       (send* _sod_status __sod_status)
     (progn
       (if __sod_status (setq _sod_status (car __sod_status)))
       _sod_status)))
  (:serialization-length
   ()
   (+
    ;; oms_msgs/OMSRect2f[] _det_roi
    (apply #'+ (send-all _det_roi :serialization-length)) 4
    ;; oms_msgs/OMSBodyInfo[] _body_infos
    (apply #'+ (send-all _body_infos :serialization-length)) 4
    ;; oms_msgs/OMSSodStatus[] _sod_status
    (apply #'+ (send-all _sod_status :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; oms_msgs/OMSRect2f[] _det_roi
     (write-long (length _det_roi) s)
     (dolist (elem _det_roi)
       (send elem :serialize s)
       )
     ;; oms_msgs/OMSBodyInfo[] _body_infos
     (write-long (length _body_infos) s)
     (dolist (elem _body_infos)
       (send elem :serialize s)
       )
     ;; oms_msgs/OMSSodStatus[] _sod_status
     (write-long (length _sod_status) s)
     (dolist (elem _sod_status)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; oms_msgs/OMSRect2f[] _det_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _det_roi (let (r) (dotimes (i n) (push (instance oms_msgs::OMSRect2f :init) r)) r))
     (dolist (elem- _det_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; oms_msgs/OMSBodyInfo[] _body_infos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _body_infos (let (r) (dotimes (i n) (push (instance oms_msgs::OMSBodyInfo :init) r)) r))
     (dolist (elem- _body_infos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; oms_msgs/OMSSodStatus[] _sod_status
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sod_status (let (r) (dotimes (i n) (push (instance oms_msgs::OMSSodStatus :init) r)) r))
     (dolist (elem- _sod_status)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get oms_msgs::OMSBodyProperty :md5sum-) "62ccae5420939cb724c8ed49db69018d")
(setf (get oms_msgs::OMSBodyProperty :datatype-) "oms_msgs/OMSBodyProperty")
(setf (get oms_msgs::OMSBodyProperty :definition-)
      "oms_msgs/OMSRect2f[] det_roi
oms_msgs/OMSBodyInfo[] body_infos
oms_msgs/OMSSodStatus[] sod_status

================================================================================
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

================================================================================
MSG: oms_msgs/OMSBodyInfo
uint8 seat_id
oms_msgs/OMSBodyDetResult body_det_result
oms_msgs/OMSSeatBeltStatus seatbelt_status
oms_msgs/OMSAgeGroup age_cls_result
oms_msgs/OMSBodyEventInfo body_event_info

================================================================================
MSG: oms_msgs/OMSBodyDetResult
uint8 UNAVAILABLE = 0
uint8 AVAILABLE = 1
uint8 UNCERTAIN = 2
uint8 value
oms_msgs/OMSRect2f body_rect
oms_msgs/OMSPoint2f[] body_keypoints

================================================================================
MSG: oms_msgs/OMSPoint2f
float32 x
float32 y
float32 score

================================================================================
MSG: oms_msgs/OMSSeatBeltStatus
uint8 UNAVAILABLE = 0
uint8 BUCKLE_UP = 1
uint8 UNBUCKLE = 2
uint8 UNCERTAIN = 3
uint8 value
float32 score

================================================================================
MSG: oms_msgs/OMSAgeGroup
uint8 UNAVAILABLE = 0
uint8 BABY = 1
uint8 CHILD = 2
uint8 YOUTH = 3
uint8 OLD = 4
uint8 UNCERTAIN = 5
uint8 value
float32 score

================================================================================
MSG: oms_msgs/OMSBodyEventInfo
uint8 UNAVAILABLE = 0
uint8 HAND_OUT_OF_WINDOW = 1
uint8 BODY_LEAVING_THE_SEAT = 2
uint8 RESERVED1 = 3
uint8 RESERVED2 = 4
uint8 RESERVED3 = 5
uint8 RESERVED4 = 6
uint8 RESERVED5 = 7
uint8 UNCERTAIN = 8
uint8 value
float32 score
uint64 start_time
uint64 end_time

================================================================================
MSG: oms_msgs/OMSSodStatus
uint8 UNAVAILABLE = 0
uint8 OCCUPIED = 1
uint8 UNOCCUPIED = 2
uint8 UNCERTAIN = 3
uint8 value
uint8 seat_id

")



(provide :oms_msgs/OMSBodyProperty "62ccae5420939cb724c8ed49db69018d")


