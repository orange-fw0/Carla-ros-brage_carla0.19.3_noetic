;; Auto-generated. Do not edit!


(when (boundp 'oms_msgs::OMSBodyInfo)
  (if (not (find-package "OMS_MSGS"))
    (make-package "OMS_MSGS"))
  (shadow 'OMSBodyInfo (find-package "OMS_MSGS")))
(unless (find-package "OMS_MSGS::OMSBODYINFO")
  (make-package "OMS_MSGS::OMSBODYINFO"))

(in-package "ROS")
;;//! \htmlinclude OMSBodyInfo.msg.html


(defclass oms_msgs::OMSBodyInfo
  :super ros::object
  :slots (_seat_id _body_det_result _seatbelt_status _age_cls_result _body_event_info ))

(defmethod oms_msgs::OMSBodyInfo
  (:init
   (&key
    ((:seat_id __seat_id) 0)
    ((:body_det_result __body_det_result) (instance oms_msgs::OMSBodyDetResult :init))
    ((:seatbelt_status __seatbelt_status) (instance oms_msgs::OMSSeatBeltStatus :init))
    ((:age_cls_result __age_cls_result) (instance oms_msgs::OMSAgeGroup :init))
    ((:body_event_info __body_event_info) (instance oms_msgs::OMSBodyEventInfo :init))
    )
   (send-super :init)
   (setq _seat_id (round __seat_id))
   (setq _body_det_result __body_det_result)
   (setq _seatbelt_status __seatbelt_status)
   (setq _age_cls_result __age_cls_result)
   (setq _body_event_info __body_event_info)
   self)
  (:seat_id
   (&optional __seat_id)
   (if __seat_id (setq _seat_id __seat_id)) _seat_id)
  (:body_det_result
   (&rest __body_det_result)
   (if (keywordp (car __body_det_result))
       (send* _body_det_result __body_det_result)
     (progn
       (if __body_det_result (setq _body_det_result (car __body_det_result)))
       _body_det_result)))
  (:seatbelt_status
   (&rest __seatbelt_status)
   (if (keywordp (car __seatbelt_status))
       (send* _seatbelt_status __seatbelt_status)
     (progn
       (if __seatbelt_status (setq _seatbelt_status (car __seatbelt_status)))
       _seatbelt_status)))
  (:age_cls_result
   (&rest __age_cls_result)
   (if (keywordp (car __age_cls_result))
       (send* _age_cls_result __age_cls_result)
     (progn
       (if __age_cls_result (setq _age_cls_result (car __age_cls_result)))
       _age_cls_result)))
  (:body_event_info
   (&rest __body_event_info)
   (if (keywordp (car __body_event_info))
       (send* _body_event_info __body_event_info)
     (progn
       (if __body_event_info (setq _body_event_info (car __body_event_info)))
       _body_event_info)))
  (:serialization-length
   ()
   (+
    ;; uint8 _seat_id
    1
    ;; oms_msgs/OMSBodyDetResult _body_det_result
    (send _body_det_result :serialization-length)
    ;; oms_msgs/OMSSeatBeltStatus _seatbelt_status
    (send _seatbelt_status :serialization-length)
    ;; oms_msgs/OMSAgeGroup _age_cls_result
    (send _age_cls_result :serialization-length)
    ;; oms_msgs/OMSBodyEventInfo _body_event_info
    (send _body_event_info :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _seat_id
       (write-byte _seat_id s)
     ;; oms_msgs/OMSBodyDetResult _body_det_result
       (send _body_det_result :serialize s)
     ;; oms_msgs/OMSSeatBeltStatus _seatbelt_status
       (send _seatbelt_status :serialize s)
     ;; oms_msgs/OMSAgeGroup _age_cls_result
       (send _age_cls_result :serialize s)
     ;; oms_msgs/OMSBodyEventInfo _body_event_info
       (send _body_event_info :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _seat_id
     (setq _seat_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; oms_msgs/OMSBodyDetResult _body_det_result
     (send _body_det_result :deserialize buf ptr-) (incf ptr- (send _body_det_result :serialization-length))
   ;; oms_msgs/OMSSeatBeltStatus _seatbelt_status
     (send _seatbelt_status :deserialize buf ptr-) (incf ptr- (send _seatbelt_status :serialization-length))
   ;; oms_msgs/OMSAgeGroup _age_cls_result
     (send _age_cls_result :deserialize buf ptr-) (incf ptr- (send _age_cls_result :serialization-length))
   ;; oms_msgs/OMSBodyEventInfo _body_event_info
     (send _body_event_info :deserialize buf ptr-) (incf ptr- (send _body_event_info :serialization-length))
   ;;
   self)
  )

(setf (get oms_msgs::OMSBodyInfo :md5sum-) "1dfe137d0f785f9f6b93ddebcb9299ee")
(setf (get oms_msgs::OMSBodyInfo :datatype-) "oms_msgs/OMSBodyInfo")
(setf (get oms_msgs::OMSBodyInfo :definition-)
      "uint8 seat_id
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
MSG: oms_msgs/OMSRect2f
float32 left
float32 top
float32 right
float32 bottom
float32 score

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

")



(provide :oms_msgs/OMSBodyInfo "1dfe137d0f785f9f6b93ddebcb9299ee")


