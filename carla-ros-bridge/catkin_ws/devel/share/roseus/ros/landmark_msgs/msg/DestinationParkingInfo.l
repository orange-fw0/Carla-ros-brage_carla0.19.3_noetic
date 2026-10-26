;; Auto-generated. Do not edit!


(when (boundp 'landmark_msgs::DestinationParkingInfo)
  (if (not (find-package "LANDMARK_MSGS"))
    (make-package "LANDMARK_MSGS"))
  (shadow 'DestinationParkingInfo (find-package "LANDMARK_MSGS")))
(unless (find-package "LANDMARK_MSGS::DESTINATIONPARKINGINFO")
  (make-package "LANDMARK_MSGS::DESTINATIONPARKINGINFO"))

(in-package "ROS")
;;//! \htmlinclude DestinationParkingInfo.msg.html


(intern "*PARKING_TYPE_VALID*" (find-package "LANDMARK_MSGS::DESTINATIONPARKINGINFO"))
(shadow '*PARKING_TYPE_VALID* (find-package "LANDMARK_MSGS::DESTINATIONPARKINGINFO"))
(defconstant landmark_msgs::DestinationParkingInfo::*PARKING_TYPE_VALID* 1)
(intern "*ID_VALID*" (find-package "LANDMARK_MSGS::DESTINATIONPARKINGINFO"))
(shadow '*ID_VALID* (find-package "LANDMARK_MSGS::DESTINATIONPARKINGINFO"))
(defconstant landmark_msgs::DestinationParkingInfo::*ID_VALID* 2)

(defun landmark_msgs::DestinationParkingInfo-to-symbol (const)
  (cond
        ((= const 1) 'landmark_msgs::DestinationParkingInfo::*PARKING_TYPE_VALID*)
        ((= const 2) 'landmark_msgs::DestinationParkingInfo::*ID_VALID*)
        (t nil)))

(defclass landmark_msgs::DestinationParkingInfo
  :super ros::object
  :slots (_available _parking_type _id ))

(defmethod landmark_msgs::DestinationParkingInfo
  (:init
   (&key
    ((:available __available) 0)
    ((:parking_type __parking_type) (instance landmark_msgs::DestinationParkingType :init))
    ((:id __id) (instance landmark_msgs::TrackId :init))
    )
   (send-super :init)
   (setq _available (round __available))
   (setq _parking_type __parking_type)
   (setq _id __id)
   self)
  (:available
   (&optional __available)
   (if __available (setq _available __available)) _available)
  (:parking_type
   (&rest __parking_type)
   (if (keywordp (car __parking_type))
       (send* _parking_type __parking_type)
     (progn
       (if __parking_type (setq _parking_type (car __parking_type)))
       _parking_type)))
  (:id
   (&rest __id)
   (if (keywordp (car __id))
       (send* _id __id)
     (progn
       (if __id (setq _id (car __id)))
       _id)))
  (:serialization-length
   ()
   (+
    ;; uint8 _available
    1
    ;; landmark_msgs/DestinationParkingType _parking_type
    (send _parking_type :serialization-length)
    ;; landmark_msgs/TrackId _id
    (send _id :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _available
       (write-byte _available s)
     ;; landmark_msgs/DestinationParkingType _parking_type
       (send _parking_type :serialize s)
     ;; landmark_msgs/TrackId _id
       (send _id :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _available
     (setq _available (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; landmark_msgs/DestinationParkingType _parking_type
     (send _parking_type :deserialize buf ptr-) (incf ptr- (send _parking_type :serialization-length))
   ;; landmark_msgs/TrackId _id
     (send _id :deserialize buf ptr-) (incf ptr- (send _id :serialization-length))
   ;;
   self)
  )

(setf (get landmark_msgs::DestinationParkingInfo :md5sum-) "9a1b9d331c13ba8270660a4d56a17c0e")
(setf (get landmark_msgs::DestinationParkingInfo :datatype-) "landmark_msgs/DestinationParkingInfo")
(setf (get landmark_msgs::DestinationParkingInfo :definition-)
      "uint8 PARKING_TYPE_VALID = 1
uint8 ID_VALID = 2
uint8 available
landmark_msgs/DestinationParkingType parking_type
landmark_msgs/TrackId id

================================================================================
MSG: landmark_msgs/DestinationParkingType
uint8 UNKNOWN = 0
uint8 NORMAL_DESTINATION = 1
uint8 PARKING_SPACE = 2
uint8 PARKING_AOI = 3
uint8 value

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :landmark_msgs/DestinationParkingInfo "9a1b9d331c13ba8270660a4d56a17c0e")


