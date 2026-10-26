;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLARoadLaneIdInfo)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLARoadLaneIdInfo (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLAROADLANEIDINFO")
  (make-package "MLA_LOCALIZATION_MSGS::MLAROADLANEIDINFO"))

(in-package "ROS")
;;//! \htmlinclude MLARoadLaneIdInfo.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass mla_localization_msgs::MLARoadLaneIdInfo
  :super ros::object
  :slots (_lane_id _road_id _offset _road_class _floor_id _status _reserved ))

(defmethod mla_localization_msgs::MLARoadLaneIdInfo
  (:init
   (&key
    ((:lane_id __lane_id) (instance landmark_msgs::TrackId :init))
    ((:road_id __road_id) (instance landmark_msgs::TrackId :init))
    ((:offset __offset) 0)
    ((:road_class __road_class) 0)
    ((:floor_id __floor_id) 0.0)
    ((:status __status) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _lane_id __lane_id)
   (setq _road_id __road_id)
   (setq _offset (round __offset))
   (setq _road_class (round __road_class))
   (setq _floor_id (float __floor_id))
   (setq _status (round __status))
   (setq _reserved (round __reserved))
   self)
  (:lane_id
   (&rest __lane_id)
   (if (keywordp (car __lane_id))
       (send* _lane_id __lane_id)
     (progn
       (if __lane_id (setq _lane_id (car __lane_id)))
       _lane_id)))
  (:road_id
   (&rest __road_id)
   (if (keywordp (car __road_id))
       (send* _road_id __road_id)
     (progn
       (if __road_id (setq _road_id (car __road_id)))
       _road_id)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:road_class
   (&optional __road_class)
   (if __road_class (setq _road_class __road_class)) _road_class)
  (:floor_id
   (&optional __floor_id)
   (if __floor_id (setq _floor_id __floor_id)) _floor_id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; landmark_msgs/TrackId _lane_id
    (send _lane_id :serialization-length)
    ;; landmark_msgs/TrackId _road_id
    (send _road_id :serialization-length)
    ;; uint32 _offset
    4
    ;; uint16 _road_class
    2
    ;; float64 _floor_id
    8
    ;; uint16 _status
    2
    ;; uint16 _reserved
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; landmark_msgs/TrackId _lane_id
       (send _lane_id :serialize s)
     ;; landmark_msgs/TrackId _road_id
       (send _road_id :serialize s)
     ;; uint32 _offset
       (write-long _offset s)
     ;; uint16 _road_class
       (write-word _road_class s)
     ;; float64 _floor_id
       (sys::poke _floor_id (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _status
       (write-word _status s)
     ;; uint16 _reserved
       (write-word _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; landmark_msgs/TrackId _lane_id
     (send _lane_id :deserialize buf ptr-) (incf ptr- (send _lane_id :serialization-length))
   ;; landmark_msgs/TrackId _road_id
     (send _road_id :deserialize buf ptr-) (incf ptr- (send _road_id :serialization-length))
   ;; uint32 _offset
     (setq _offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _road_class
     (setq _road_class (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _floor_id
     (setq _floor_id (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reserved
     (setq _reserved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLARoadLaneIdInfo :md5sum-) "c72cc0c521b316521e57f63cc9a1a145")
(setf (get mla_localization_msgs::MLARoadLaneIdInfo :datatype-) "mla_localization_msgs/MLARoadLaneIdInfo")
(setf (get mla_localization_msgs::MLARoadLaneIdInfo :definition-)
      "landmark_msgs/TrackId lane_id
landmark_msgs/TrackId road_id
uint32 offset
uint16 road_class
float64 floor_id
uint16 status
uint16 reserved

================================================================================
MSG: landmark_msgs/TrackId
bool is_visible
uint8 count
uint32 id
uint32 linked_id
uint32 map_id
uint32 area_id

")



(provide :mla_localization_msgs/MLARoadLaneIdInfo "c72cc0c521b316521e57f63cc9a1a145")


