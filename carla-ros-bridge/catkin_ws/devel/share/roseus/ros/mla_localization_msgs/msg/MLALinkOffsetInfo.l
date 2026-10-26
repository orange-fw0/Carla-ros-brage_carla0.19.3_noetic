;; Auto-generated. Do not edit!


(when (boundp 'mla_localization_msgs::MLALinkOffsetInfo)
  (if (not (find-package "MLA_LOCALIZATION_MSGS"))
    (make-package "MLA_LOCALIZATION_MSGS"))
  (shadow 'MLALinkOffsetInfo (find-package "MLA_LOCALIZATION_MSGS")))
(unless (find-package "MLA_LOCALIZATION_MSGS::MLALINKOFFSETINFO")
  (make-package "MLA_LOCALIZATION_MSGS::MLALINKOFFSETINFO"))

(in-package "ROS")
;;//! \htmlinclude MLALinkOffsetInfo.msg.html
(if (not (find-package "LANDMARK_MSGS"))
  (ros::roseus-add-msgs "landmark_msgs"))


(defclass mla_localization_msgs::MLALinkOffsetInfo
  :super ros::object
  :slots (_source _link_id _offset _status _reserved ))

(defmethod mla_localization_msgs::MLALinkOffsetInfo
  (:init
   (&key
    ((:source __source) "")
    ((:link_id __link_id) (instance landmark_msgs::TrackId :init))
    ((:offset __offset) 0)
    ((:status __status) 0)
    ((:reserved __reserved) 0)
    )
   (send-super :init)
   (setq _source (string __source))
   (setq _link_id __link_id)
   (setq _offset (round __offset))
   (setq _status (round __status))
   (setq _reserved (round __reserved))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:link_id
   (&rest __link_id)
   (if (keywordp (car __link_id))
       (send* _link_id __link_id)
     (progn
       (if __link_id (setq _link_id (car __link_id)))
       _link_id)))
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:reserved
   (&optional __reserved)
   (if __reserved (setq _reserved __reserved)) _reserved)
  (:serialization-length
   ()
   (+
    ;; string _source
    4 (length _source)
    ;; landmark_msgs/TrackId _link_id
    (send _link_id :serialization-length)
    ;; uint32 _offset
    4
    ;; uint16 _status
    2
    ;; uint16 _reserved
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; landmark_msgs/TrackId _link_id
       (send _link_id :serialize s)
     ;; uint32 _offset
       (write-long _offset s)
     ;; uint16 _status
       (write-word _status s)
     ;; uint16 _reserved
       (write-word _reserved s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; landmark_msgs/TrackId _link_id
     (send _link_id :deserialize buf ptr-) (incf ptr- (send _link_id :serialization-length))
   ;; uint32 _offset
     (setq _offset (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _status
     (setq _status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _reserved
     (setq _reserved (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get mla_localization_msgs::MLALinkOffsetInfo :md5sum-) "56b99b3a00a84ef423d8e1a501b3e275")
(setf (get mla_localization_msgs::MLALinkOffsetInfo :datatype-) "mla_localization_msgs/MLALinkOffsetInfo")
(setf (get mla_localization_msgs::MLALinkOffsetInfo :definition-)
      "string source
landmark_msgs/TrackId link_id
uint32 offset
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



(provide :mla_localization_msgs/MLALinkOffsetInfo "56b99b3a00a84ef423d8e1a501b3e275")


