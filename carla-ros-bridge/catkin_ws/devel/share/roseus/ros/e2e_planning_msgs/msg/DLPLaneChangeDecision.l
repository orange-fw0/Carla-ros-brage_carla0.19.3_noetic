;; Auto-generated. Do not edit!


(when (boundp 'e2e_planning_msgs::DLPLaneChangeDecision)
  (if (not (find-package "E2E_PLANNING_MSGS"))
    (make-package "E2E_PLANNING_MSGS"))
  (shadow 'DLPLaneChangeDecision (find-package "E2E_PLANNING_MSGS")))
(unless (find-package "E2E_PLANNING_MSGS::DLPLANECHANGEDECISION")
  (make-package "E2E_PLANNING_MSGS::DLPLANECHANGEDECISION"))

(in-package "ROS")
;;//! \htmlinclude DLPLaneChangeDecision.msg.html


(defclass e2e_planning_msgs::DLPLaneChangeDecision
  :super ros::object
  :slots (_request_type _direction _target_lane_id _score _source ))

(defmethod e2e_planning_msgs::DLPLaneChangeDecision
  (:init
   (&key
    ((:request_type __request_type) 0)
    ((:direction __direction) 0)
    ((:target_lane_id __target_lane_id) 0)
    ((:score __score) 0.0)
    ((:source __source) "")
    )
   (send-super :init)
   (setq _request_type (round __request_type))
   (setq _direction (round __direction))
   (setq _target_lane_id (round __target_lane_id))
   (setq _score (float __score))
   (setq _source (string __source))
   self)
  (:request_type
   (&optional __request_type)
   (if __request_type (setq _request_type __request_type)) _request_type)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:target_lane_id
   (&optional __target_lane_id)
   (if __target_lane_id (setq _target_lane_id __target_lane_id)) _target_lane_id)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; int32 _request_type
    4
    ;; int32 _direction
    4
    ;; int32 _target_lane_id
    4
    ;; float64 _score
    8
    ;; string _source
    4 (length _source)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _request_type
       (write-long _request_type s)
     ;; int32 _direction
       (write-long _direction s)
     ;; int32 _target_lane_id
       (write-long _target_lane_id s)
     ;; float64 _score
       (sys::poke _score (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _request_type
     (setq _request_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _direction
     (setq _direction (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _target_lane_id
     (setq _target_lane_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _score
     (setq _score (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get e2e_planning_msgs::DLPLaneChangeDecision :md5sum-) "16e2c167d9cc0a8bff7205af1eb74484")
(setf (get e2e_planning_msgs::DLPLaneChangeDecision :datatype-) "e2e_planning_msgs/DLPLaneChangeDecision")
(setf (get e2e_planning_msgs::DLPLaneChangeDecision :definition-)
      "int32 request_type
int32 direction
int32 target_lane_id
float64 score
string source

")



(provide :e2e_planning_msgs/DLPLaneChangeDecision "16e2c167d9cc0a8bff7205af1eb74484")


