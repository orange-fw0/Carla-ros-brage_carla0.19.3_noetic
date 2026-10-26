; Auto-generated. Do not edit!


(cl:in-package landmark_msgs-msg)


;//! \htmlinclude TrackId.msg.html

(cl:defclass <TrackId> (roslisp-msg-protocol:ros-message)
  ((is_visible
    :reader is_visible
    :initarg :is_visible
    :type cl:boolean
    :initform cl:nil)
   (count
    :reader count
    :initarg :count
    :type cl:fixnum
    :initform 0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (linked_id
    :reader linked_id
    :initarg :linked_id
    :type cl:integer
    :initform 0)
   (map_id
    :reader map_id
    :initarg :map_id
    :type cl:integer
    :initform 0)
   (area_id
    :reader area_id
    :initarg :area_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TrackId (<TrackId>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TrackId>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TrackId)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name landmark_msgs-msg:<TrackId> is deprecated: use landmark_msgs-msg:TrackId instead.")))

(cl:ensure-generic-function 'is_visible-val :lambda-list '(m))
(cl:defmethod is_visible-val ((m <TrackId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:is_visible-val is deprecated.  Use landmark_msgs-msg:is_visible instead.")
  (is_visible m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <TrackId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:count-val is deprecated.  Use landmark_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <TrackId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:id-val is deprecated.  Use landmark_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'linked_id-val :lambda-list '(m))
(cl:defmethod linked_id-val ((m <TrackId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:linked_id-val is deprecated.  Use landmark_msgs-msg:linked_id instead.")
  (linked_id m))

(cl:ensure-generic-function 'map_id-val :lambda-list '(m))
(cl:defmethod map_id-val ((m <TrackId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:map_id-val is deprecated.  Use landmark_msgs-msg:map_id instead.")
  (map_id m))

(cl:ensure-generic-function 'area_id-val :lambda-list '(m))
(cl:defmethod area_id-val ((m <TrackId>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader landmark_msgs-msg:area_id-val is deprecated.  Use landmark_msgs-msg:area_id instead.")
  (area_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TrackId>) ostream)
  "Serializes a message object of type '<TrackId>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_visible) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'linked_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'linked_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'linked_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'linked_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'area_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'area_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'area_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'area_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TrackId>) istream)
  "Deserializes a message object of type '<TrackId>"
    (cl:setf (cl:slot-value msg 'is_visible) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'linked_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'linked_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'linked_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'linked_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'map_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'area_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'area_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'area_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'area_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TrackId>)))
  "Returns string type for a message object of type '<TrackId>"
  "landmark_msgs/TrackId")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TrackId)))
  "Returns string type for a message object of type 'TrackId"
  "landmark_msgs/TrackId")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TrackId>)))
  "Returns md5sum for a message object of type '<TrackId>"
  "7dbec9f3c427083a5195518c14fad578")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TrackId)))
  "Returns md5sum for a message object of type 'TrackId"
  "7dbec9f3c427083a5195518c14fad578")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TrackId>)))
  "Returns full string definition for message of type '<TrackId>"
  (cl:format cl:nil "bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TrackId)))
  "Returns full string definition for message of type 'TrackId"
  (cl:format cl:nil "bool is_visible~%uint8 count~%uint32 id~%uint32 linked_id~%uint32 map_id~%uint32 area_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TrackId>))
  (cl:+ 0
     1
     1
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TrackId>))
  "Converts a ROS message object to a list"
  (cl:list 'TrackId
    (cl:cons ':is_visible (is_visible msg))
    (cl:cons ':count (count msg))
    (cl:cons ':id (id msg))
    (cl:cons ':linked_id (linked_id msg))
    (cl:cons ':map_id (map_id msg))
    (cl:cons ':area_id (area_id msg))
))
