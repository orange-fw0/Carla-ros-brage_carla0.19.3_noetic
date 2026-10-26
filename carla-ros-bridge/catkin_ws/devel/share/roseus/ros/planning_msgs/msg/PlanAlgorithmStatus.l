;; Auto-generated. Do not edit!


(when (boundp 'planning_msgs::PlanAlgorithmStatus)
  (if (not (find-package "PLANNING_MSGS"))
    (make-package "PLANNING_MSGS"))
  (shadow 'PlanAlgorithmStatus (find-package "PLANNING_MSGS")))
(unless (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS")
  (make-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))

(in-package "ROS")
;;//! \htmlinclude PlanAlgorithmStatus.msg.html


(intern "*NORMAL_ROAD*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NORMAL_ROAD* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NORMAL_ROAD* 1)
(intern "*INTERSECT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INTERSECT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INTERSECT* 2)
(intern "*PARKING_SVP*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*PARKING_SVP* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*PARKING_SVP* 4)
(intern "*PARKING_LVP*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*PARKING_LVP* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*PARKING_LVP* 8)
(intern "*PARKING_APA*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*PARKING_APA* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*PARKING_APA* 16)
(intern "*REMOTE_CONTROL*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*REMOTE_CONTROL* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*REMOTE_CONTROL* 32)
(intern "*LANE_CHANGE_LEFT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_CHANGE_LEFT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_LEFT* 1)
(intern "*LANE_CHANGE_RIGHT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_CHANGE_RIGHT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_RIGHT* 2)
(intern "*LANE_BORROW_LEFT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROW_LEFT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_LEFT* 4)
(intern "*LANE_BORROW_RIGHT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROW_RIGHT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_RIGHT* 8)
(intern "*INTERSECT_GO_STRAIGHT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INTERSECT_GO_STRAIGHT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INTERSECT_GO_STRAIGHT* 16)
(intern "*INTERSECT_TURN_LEFT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INTERSECT_TURN_LEFT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INTERSECT_TURN_LEFT* 32)
(intern "*INTERSECT_TURN_RIGHT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INTERSECT_TURN_RIGHT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INTERSECT_TURN_RIGHT* 64)
(intern "*INTERSECT_U_TURN*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INTERSECT_U_TURN* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INTERSECT_U_TURN* 128)
(intern "*LANE_BORROW_IN_NON_MOTORIZED_LANE*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROW_IN_NON_MOTORIZED_LANE* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_IN_NON_MOTORIZED_LANE* 256)
(intern "*LANE_KEEP*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_KEEP* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_KEEP* 512)
(intern "*PULL_OVER*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*PULL_OVER* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*PULL_OVER* 1024)
(intern "*OPEN_SPACE_PASS*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*OPEN_SPACE_PASS* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_PASS* 2048)
(intern "*PARKING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*PARKING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*PARKING* 4096)
(intern "*SEARCH*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*SEARCH* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*SEARCH* 1)
(intern "*CRUISE*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*CRUISE* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*CRUISE* 2)
(intern "*APA*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*APA* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*APA* 4)
(intern "*APOA*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*APOA* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*APOA* 8)
(intern "*WAIT*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*WAIT* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*WAIT* 16)
(intern "*LANE_CHANGE_WAITING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_CHANGE_WAITING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_WAITING* 1)
(intern "*LANE_CHANGEING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_CHANGEING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_CHANGEING* 2)
(intern "*LANE_CHANGE_BACK*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_CHANGE_BACK* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_BACK* 4)
(intern "*LANE_BORROWING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROWING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROWING* 8)
(intern "*LANE_BORROW_BACK*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROW_BACK* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_BACK* 16)
(intern "*LANE_BORROW_RETURN*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROW_RETURN* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_RETURN* 32)
(intern "*LANE_BORROW_SUSPEND*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_BORROW_SUSPEND* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_SUSPEND* 64)
(intern "*OPEN_SPACE_STANDBY*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*OPEN_SPACE_STANDBY* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_STANDBY* 128)
(intern "*OPEN_SPACE_PLANNING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*OPEN_SPACE_PLANNING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_PLANNING* 256)
(intern "*OPEN_SPACE_RUNNING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*OPEN_SPACE_RUNNING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_RUNNING* 512)
(intern "*OPEN_SPACE_FALLBACK*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*OPEN_SPACE_FALLBACK* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_FALLBACK* 1024)
(intern "*LANE_KEEPING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LANE_KEEPING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LANE_KEEPING* 2048)
(intern "*SIDE_PASS*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*SIDE_PASS* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*SIDE_PASS* 4096)
(intern "*RUNNING*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*RUNNING* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*RUNNING* 1)
(intern "*SUCCEEDED*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*SUCCEEDED* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*SUCCEEDED* 2)
(intern "*FAILED*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*FAILED* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*FAILED* 4)
(intern "*PAUSED*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*PAUSED* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*PAUSED* 8)
(intern "*NONE*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NONE* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NONE* 1)
(intern "*NO_FRONT_VIEW*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NO_FRONT_VIEW* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NO_FRONT_VIEW* 2)
(intern "*NO_SIDE_VIEW*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NO_SIDE_VIEW* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NO_SIDE_VIEW* 4)
(intern "*SIDE_VIEW_BACK*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*SIDE_VIEW_BACK* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*SIDE_VIEW_BACK* 8)
(intern "*FRONT_VIEW_BACK*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*FRONT_VIEW_BACK* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*FRONT_VIEW_BACK* 16)
(intern "*BACK_CNT_BELOW_THRESHOLD*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*BACK_CNT_BELOW_THRESHOLD* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*BACK_CNT_BELOW_THRESHOLD* 32)
(intern "*EXCEED_MOVE_THRESHOLD*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*EXCEED_MOVE_THRESHOLD* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*EXCEED_MOVE_THRESHOLD* 64)
(intern "*NOT_OPTIMAL*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NOT_OPTIMAL* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NOT_OPTIMAL* 128)
(intern "*INVALID_GAP_SELECTION*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INVALID_GAP_SELECTION* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INVALID_GAP_SELECTION* 256)
(intern "*INVALID_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INVALID_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INVALID_REQUEST* 512)
(intern "*CANCELED*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*CANCELED* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*CANCELED* 1024)
(intern "*FRONT_VIEW_FORBID*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*FRONT_VIEW_FORBID* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*FRONT_VIEW_FORBID* 2048)
(intern "*SIDE_VIEW_FORBID*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*SIDE_VIEW_FORBID* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*SIDE_VIEW_FORBID* 4096)
(intern "*EXCEED_GAP_REMOTE_CAR*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*EXCEED_GAP_REMOTE_CAR* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*EXCEED_GAP_REMOTE_CAR* 1024)
(intern "*NOT_EXCEED_GAP_PROXIMAL_CAR*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NOT_EXCEED_GAP_PROXIMAL_CAR* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NOT_EXCEED_GAP_PROXIMAL_CAR* 2048)
(intern "*NO_VALID_GAP*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*NO_VALID_GAP* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*NO_VALID_GAP* 4096)
(intern "*TARGET_LANE_INVALID*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*TARGET_LANE_INVALID* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*TARGET_LANE_INVALID* 8192)
(intern "*MAP_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*MAP_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*MAP_REQUEST* 2)
(intern "*ALC_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*ALC_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*ALC_REQUEST* 4)
(intern "*ALC_BY_MERGE_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*ALC_BY_MERGE_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*ALC_BY_MERGE_REQUEST* 8)
(intern "*ALC_BY_YPOINT_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*ALC_BY_YPOINT_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*ALC_BY_YPOINT_REQUEST* 16)
(intern "*INT_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*INT_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*INT_REQUEST* 32)
(intern "*LB_REQUEST*" (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(shadow '*LB_REQUEST* (find-package "PLANNING_MSGS::PLANALGORITHMSTATUS"))
(defconstant planning_msgs::PlanAlgorithmStatus::*LB_REQUEST* 64)

(defun planning_msgs::PlanAlgorithmStatus-to-symbol (const)
  (cond
        ((= const 1) 'planning_msgs::PlanAlgorithmStatus::*NORMAL_ROAD*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*INTERSECT*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*PARKING_SVP*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*PARKING_LVP*)
        ((= const 16) 'planning_msgs::PlanAlgorithmStatus::*PARKING_APA*)
        ((= const 32) 'planning_msgs::PlanAlgorithmStatus::*REMOTE_CONTROL*)
        ((= const 1) 'planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_LEFT*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_RIGHT*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_LEFT*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_RIGHT*)
        ((= const 16) 'planning_msgs::PlanAlgorithmStatus::*INTERSECT_GO_STRAIGHT*)
        ((= const 32) 'planning_msgs::PlanAlgorithmStatus::*INTERSECT_TURN_LEFT*)
        ((= const 64) 'planning_msgs::PlanAlgorithmStatus::*INTERSECT_TURN_RIGHT*)
        ((= const 128) 'planning_msgs::PlanAlgorithmStatus::*INTERSECT_U_TURN*)
        ((= const 256) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_IN_NON_MOTORIZED_LANE*)
        ((= const 512) 'planning_msgs::PlanAlgorithmStatus::*LANE_KEEP*)
        ((= const 1024) 'planning_msgs::PlanAlgorithmStatus::*PULL_OVER*)
        ((= const 2048) 'planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_PASS*)
        ((= const 4096) 'planning_msgs::PlanAlgorithmStatus::*PARKING*)
        ((= const 1) 'planning_msgs::PlanAlgorithmStatus::*SEARCH*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*CRUISE*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*APA*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*APOA*)
        ((= const 16) 'planning_msgs::PlanAlgorithmStatus::*WAIT*)
        ((= const 1) 'planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_WAITING*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*LANE_CHANGEING*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*LANE_CHANGE_BACK*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROWING*)
        ((= const 16) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_BACK*)
        ((= const 32) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_RETURN*)
        ((= const 64) 'planning_msgs::PlanAlgorithmStatus::*LANE_BORROW_SUSPEND*)
        ((= const 128) 'planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_STANDBY*)
        ((= const 256) 'planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_PLANNING*)
        ((= const 512) 'planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_RUNNING*)
        ((= const 1024) 'planning_msgs::PlanAlgorithmStatus::*OPEN_SPACE_FALLBACK*)
        ((= const 2048) 'planning_msgs::PlanAlgorithmStatus::*LANE_KEEPING*)
        ((= const 4096) 'planning_msgs::PlanAlgorithmStatus::*SIDE_PASS*)
        ((= const 1) 'planning_msgs::PlanAlgorithmStatus::*RUNNING*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*SUCCEEDED*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*FAILED*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*PAUSED*)
        ((= const 1) 'planning_msgs::PlanAlgorithmStatus::*NONE*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*NO_FRONT_VIEW*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*NO_SIDE_VIEW*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*SIDE_VIEW_BACK*)
        ((= const 16) 'planning_msgs::PlanAlgorithmStatus::*FRONT_VIEW_BACK*)
        ((= const 32) 'planning_msgs::PlanAlgorithmStatus::*BACK_CNT_BELOW_THRESHOLD*)
        ((= const 64) 'planning_msgs::PlanAlgorithmStatus::*EXCEED_MOVE_THRESHOLD*)
        ((= const 128) 'planning_msgs::PlanAlgorithmStatus::*NOT_OPTIMAL*)
        ((= const 256) 'planning_msgs::PlanAlgorithmStatus::*INVALID_GAP_SELECTION*)
        ((= const 512) 'planning_msgs::PlanAlgorithmStatus::*INVALID_REQUEST*)
        ((= const 1024) 'planning_msgs::PlanAlgorithmStatus::*CANCELED*)
        ((= const 2048) 'planning_msgs::PlanAlgorithmStatus::*FRONT_VIEW_FORBID*)
        ((= const 4096) 'planning_msgs::PlanAlgorithmStatus::*SIDE_VIEW_FORBID*)
        ((= const 1024) 'planning_msgs::PlanAlgorithmStatus::*EXCEED_GAP_REMOTE_CAR*)
        ((= const 2048) 'planning_msgs::PlanAlgorithmStatus::*NOT_EXCEED_GAP_PROXIMAL_CAR*)
        ((= const 4096) 'planning_msgs::PlanAlgorithmStatus::*NO_VALID_GAP*)
        ((= const 8192) 'planning_msgs::PlanAlgorithmStatus::*TARGET_LANE_INVALID*)
        ((= const 2) 'planning_msgs::PlanAlgorithmStatus::*MAP_REQUEST*)
        ((= const 4) 'planning_msgs::PlanAlgorithmStatus::*ALC_REQUEST*)
        ((= const 8) 'planning_msgs::PlanAlgorithmStatus::*ALC_BY_MERGE_REQUEST*)
        ((= const 16) 'planning_msgs::PlanAlgorithmStatus::*ALC_BY_YPOINT_REQUEST*)
        ((= const 32) 'planning_msgs::PlanAlgorithmStatus::*INT_REQUEST*)
        ((= const 64) 'planning_msgs::PlanAlgorithmStatus::*LB_REQUEST*)
        (t nil)))

(defclass planning_msgs::PlanAlgorithmStatus
  :super ros::object
  :slots (_scene _action _action_status _function _function_status _Reason _source ))

(defmethod planning_msgs::PlanAlgorithmStatus
  (:init
   (&key
    ((:scene __scene) 0)
    ((:action __action) 0)
    ((:action_status __action_status) 0)
    ((:function __function) 0)
    ((:function_status __function_status) 0)
    ((:Reason __Reason) 0)
    ((:source __source) 0)
    )
   (send-super :init)
   (setq _scene (round __scene))
   (setq _action (round __action))
   (setq _action_status (round __action_status))
   (setq _function (round __function))
   (setq _function_status (round __function_status))
   (setq _Reason (round __Reason))
   (setq _source (round __source))
   self)
  (:scene
   (&optional __scene)
   (if __scene (setq _scene __scene)) _scene)
  (:action
   (&optional __action)
   (if __action (setq _action __action)) _action)
  (:action_status
   (&optional __action_status)
   (if __action_status (setq _action_status __action_status)) _action_status)
  (:function
   (&optional __function)
   (if __function (setq _function __function)) _function)
  (:function_status
   (&optional __function_status)
   (if __function_status (setq _function_status __function_status)) _function_status)
  (:Reason
   (&optional __Reason)
   (if __Reason (setq _Reason __Reason)) _Reason)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; uint64 _scene
    8
    ;; uint64 _action
    8
    ;; uint64 _action_status
    8
    ;; uint64 _function
    8
    ;; uint64 _function_status
    8
    ;; uint64 _Reason
    8
    ;; uint64 _source
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint64 _scene
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _scene (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _scene) (= (length (_scene . bv)) 2)) ;; bignum
              (write-long (ash (elt (_scene . bv) 0) 0) s)
              (write-long (ash (elt (_scene . bv) 1) -1) s))
             ((and (class _scene) (= (length (_scene . bv)) 1)) ;; big1
              (write-long (elt (_scene . bv) 0) s)
              (write-long (if (>= _scene 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _scene s)(write-long (if (>= _scene 0) 0 #xffffffff) s)))
     ;; uint64 _action
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _action (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _action) (= (length (_action . bv)) 2)) ;; bignum
              (write-long (ash (elt (_action . bv) 0) 0) s)
              (write-long (ash (elt (_action . bv) 1) -1) s))
             ((and (class _action) (= (length (_action . bv)) 1)) ;; big1
              (write-long (elt (_action . bv) 0) s)
              (write-long (if (>= _action 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _action s)(write-long (if (>= _action 0) 0 #xffffffff) s)))
     ;; uint64 _action_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _action_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _action_status) (= (length (_action_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_action_status . bv) 0) 0) s)
              (write-long (ash (elt (_action_status . bv) 1) -1) s))
             ((and (class _action_status) (= (length (_action_status . bv)) 1)) ;; big1
              (write-long (elt (_action_status . bv) 0) s)
              (write-long (if (>= _action_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _action_status s)(write-long (if (>= _action_status 0) 0 #xffffffff) s)))
     ;; uint64 _function
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _function (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _function) (= (length (_function . bv)) 2)) ;; bignum
              (write-long (ash (elt (_function . bv) 0) 0) s)
              (write-long (ash (elt (_function . bv) 1) -1) s))
             ((and (class _function) (= (length (_function . bv)) 1)) ;; big1
              (write-long (elt (_function . bv) 0) s)
              (write-long (if (>= _function 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _function s)(write-long (if (>= _function 0) 0 #xffffffff) s)))
     ;; uint64 _function_status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _function_status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _function_status) (= (length (_function_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_function_status . bv) 0) 0) s)
              (write-long (ash (elt (_function_status . bv) 1) -1) s))
             ((and (class _function_status) (= (length (_function_status . bv)) 1)) ;; big1
              (write-long (elt (_function_status . bv) 0) s)
              (write-long (if (>= _function_status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _function_status s)(write-long (if (>= _function_status 0) 0 #xffffffff) s)))
     ;; uint64 _Reason
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _Reason (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _Reason) (= (length (_Reason . bv)) 2)) ;; bignum
              (write-long (ash (elt (_Reason . bv) 0) 0) s)
              (write-long (ash (elt (_Reason . bv) 1) -1) s))
             ((and (class _Reason) (= (length (_Reason . bv)) 1)) ;; big1
              (write-long (elt (_Reason . bv) 0) s)
              (write-long (if (>= _Reason 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _Reason s)(write-long (if (>= _Reason 0) 0 #xffffffff) s)))
     ;; uint64 _source
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _source (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _source) (= (length (_source . bv)) 2)) ;; bignum
              (write-long (ash (elt (_source . bv) 0) 0) s)
              (write-long (ash (elt (_source . bv) 1) -1) s))
             ((and (class _source) (= (length (_source . bv)) 1)) ;; big1
              (write-long (elt (_source . bv) 0) s)
              (write-long (if (>= _source 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _source s)(write-long (if (>= _source 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint64 _scene
     
#+(or :alpha :irix6 :x86_64)
      (setf _scene (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _scene (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _action
     
#+(or :alpha :irix6 :x86_64)
      (setf _action (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _action (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _action_status
     
#+(or :alpha :irix6 :x86_64)
      (setf _action_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _action_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _function
     
#+(or :alpha :irix6 :x86_64)
      (setf _function (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _function (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _function_status
     
#+(or :alpha :irix6 :x86_64)
      (setf _function_status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _function_status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _Reason
     
#+(or :alpha :irix6 :x86_64)
      (setf _Reason (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _Reason (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _source
     
#+(or :alpha :irix6 :x86_64)
      (setf _source (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _source (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get planning_msgs::PlanAlgorithmStatus :md5sum-) "28598c4ddd85a1dced9a3bcddb6d7469")
(setf (get planning_msgs::PlanAlgorithmStatus :datatype-) "planning_msgs/PlanAlgorithmStatus")
(setf (get planning_msgs::PlanAlgorithmStatus :definition-)
      "uint64 NORMAL_ROAD = 1
uint64 INTERSECT = 2
uint64 PARKING_SVP = 4
uint64 PARKING_LVP = 8
uint64 PARKING_APA = 16
uint64 REMOTE_CONTROL = 32
uint64 LANE_CHANGE_LEFT = 1
uint64 LANE_CHANGE_RIGHT = 2
uint64 LANE_BORROW_LEFT = 4
uint64 LANE_BORROW_RIGHT = 8
uint64 INTERSECT_GO_STRAIGHT = 16
uint64 INTERSECT_TURN_LEFT = 32
uint64 INTERSECT_TURN_RIGHT = 64
uint64 INTERSECT_U_TURN = 128
uint64 LANE_BORROW_IN_NON_MOTORIZED_LANE = 256
uint64 LANE_KEEP = 512
uint64 PULL_OVER = 1024
uint64 OPEN_SPACE_PASS = 2048
uint64 PARKING = 4096
uint64 SEARCH = 1
uint64 CRUISE = 2
uint64 APA = 4
uint64 APOA = 8
uint64 WAIT = 16
uint64 LANE_CHANGE_WAITING = 1
uint64 LANE_CHANGEING = 2
uint64 LANE_CHANGE_BACK = 4
uint64 LANE_BORROWING = 8
uint64 LANE_BORROW_BACK = 16
uint64 LANE_BORROW_RETURN = 32
uint64 LANE_BORROW_SUSPEND = 64
uint64 OPEN_SPACE_STANDBY = 128
uint64 OPEN_SPACE_PLANNING = 256
uint64 OPEN_SPACE_RUNNING = 512
uint64 OPEN_SPACE_FALLBACK = 1024
uint64 LANE_KEEPING = 2048
uint64 SIDE_PASS = 4096
uint64 RUNNING = 1
uint64 SUCCEEDED = 2
uint64 FAILED = 4
uint64 PAUSED = 8
uint64 NONE = 1
uint64 NO_FRONT_VIEW = 2
uint64 NO_SIDE_VIEW = 4
uint64 SIDE_VIEW_BACK = 8
uint64 FRONT_VIEW_BACK = 16
uint64 BACK_CNT_BELOW_THRESHOLD = 32
uint64 EXCEED_MOVE_THRESHOLD = 64
uint64 NOT_OPTIMAL = 128
uint64 INVALID_GAP_SELECTION = 256
uint64 INVALID_REQUEST = 512
uint64 CANCELED = 1024
uint64 FRONT_VIEW_FORBID = 2048
uint64 SIDE_VIEW_FORBID = 4096
uint64 EXCEED_GAP_REMOTE_CAR = 1024
uint64 NOT_EXCEED_GAP_PROXIMAL_CAR = 2048
uint64 NO_VALID_GAP = 4096
uint64 TARGET_LANE_INVALID = 8192
uint64 MAP_REQUEST = 2
uint64 ALC_REQUEST = 4
uint64 ALC_BY_MERGE_REQUEST = 8
uint64 ALC_BY_YPOINT_REQUEST = 16
uint64 INT_REQUEST = 32
uint64 LB_REQUEST = 64
uint64 scene
uint64 action
uint64 action_status
uint64 function
uint64 function_status
uint64 Reason
uint64 source

")



(provide :planning_msgs/PlanAlgorithmStatus "28598c4ddd85a1dced9a3bcddb6d7469")


