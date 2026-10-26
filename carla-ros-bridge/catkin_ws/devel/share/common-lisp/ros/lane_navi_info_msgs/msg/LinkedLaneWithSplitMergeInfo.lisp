; Auto-generated. Do not edit!


(cl:in-package lane_navi_info_msgs-msg)


;//! \htmlinclude LinkedLaneWithSplitMergeInfo.msg.html

(cl:defclass <LinkedLaneWithSplitMergeInfo> (roslisp-msg-protocol:ros-message)
  ((lane_id
    :reader lane_id
    :initarg :lane_id
    :type landmark_msgs-msg:TrackId
    :initform (cl:make-instance 'landmark_msgs-msg:TrackId))
   (split_merge_info
    :reader split_merge_info
    :initarg :split_merge_info
    :type lane_navi_info_msgs-msg:SplitMergeInfo
    :initform (cl:make-instance 'lane_navi_info_msgs-msg:SplitMergeInfo)))
)

(cl:defclass LinkedLaneWithSplitMergeInfo (<LinkedLaneWithSplitMergeInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LinkedLaneWithSplitMergeInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LinkedLaneWithSplitMergeInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lane_navi_info_msgs-msg:<LinkedLaneWithSplitMergeInfo> is deprecated: use lane_navi_info_msgs-msg:LinkedLaneWithSplitMergeInfo instead.")))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <LinkedLaneWithSplitMergeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:lane_id-val is deprecated.  Use lane_navi_info_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'split_merge_info-val :lambda-list '(m))
(cl:defmethod split_merge_info-val ((m <LinkedLaneWithSplitMergeInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lane_navi_info_msgs-msg:split_merge_info-val is deprecated.  Use lane_navi_info_msgs-msg:split_merge_info instead.")
  (split_merge_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LinkedLaneWithSplitMergeInfo>) ostream)
  "Serializes a message object of type '<LinkedLaneWithSplitMergeInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lane_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'split_merge_info) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LinkedLaneWithSplitMergeInfo>) istream)
  "Deserializes a message object of type '<LinkedLaneWithSplitMergeInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lane_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'split_merge_info) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LinkedLaneWithSplitMergeInfo>)))
  "Returns string type for a message object of type '<LinkedLaneWithSplitMergeInfo>"
  "lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LinkedLaneWithSplitMergeInfo)))
  "Returns string type for a message object of type 'LinkedLaneWithSplitMergeInfo"
  "lane_navi_info_msgs/LinkedLaneWithSplitMergeInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LinkedLaneWithSplitMergeInfo>)))
  "Returns md5sum for a message object of type '<LinkedLaneWithSplitMergeInfo>"
  "3462ad2276fbd8b14c6c839076350ba4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LinkedLaneWithSplitMergeInfo)))
  "Returns md5sum for a message object of type 'LinkedLaneWithSplitMergeInfo"
  "3462ad2276fbd8b14c6c839076350ba4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LinkedLaneWithSplitMergeInfo>)))
  "Returns full string definition for message of type '<LinkedLaneWithSplitMergeInfo>"
  (cl:format cl:nil "landmark_msgs/TrackId lane_id~%lane_navi_info_msgs/SplitMergeInfo split_merge_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SplitMergeInfo~%uint8 NONE = 0~%uint8 SPLIT = 1~%uint8 MERGE = 2~%uint8 CONTINUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LinkedLaneWithSplitMergeInfo)))
  "Returns full string definition for message of type 'LinkedLaneWithSplitMergeInfo"
  (cl:format cl:nil "landmark_msgs/TrackId lane_id~%lane_navi_info_msgs/SplitMergeInfo split_merge_info~%~%================================================================================~%MSG: landmark_msgs/TrackId~%bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%================================================================================~%MSG: lane_navi_info_msgs/SplitMergeInfo~%uint8 NONE = 0~%uint8 SPLIT = 1~%uint8 MERGE = 2~%uint8 CONTINUE = 3~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LinkedLaneWithSplitMergeInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lane_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'split_merge_info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LinkedLaneWithSplitMergeInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'LinkedLaneWithSplitMergeInfo
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':split_merge_info (split_merge_info msg))
))
