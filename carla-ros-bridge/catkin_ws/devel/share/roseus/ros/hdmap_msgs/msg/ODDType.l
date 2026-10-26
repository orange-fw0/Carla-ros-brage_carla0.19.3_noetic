;; Auto-generated. Do not edit!


(when (boundp 'hdmap_msgs::ODDType)
  (if (not (find-package "HDMAP_MSGS"))
    (make-package "HDMAP_MSGS"))
  (shadow 'ODDType (find-package "HDMAP_MSGS")))
(unless (find-package "HDMAP_MSGS::ODDTYPE")
  (make-package "HDMAP_MSGS::ODDTYPE"))

(in-package "ROS")
;;//! \htmlinclude ODDType.msg.html


(intern "*ODD_UNKNOWN*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_UNKNOWN* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_UNKNOWN* 0)
(intern "*ODD_ROAD_CONSTRUCTION*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_ROAD_CONSTRUCTION* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_ROAD_CONSTRUCTION* 1)
(intern "*ODD_TOLL*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_TOLL* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_TOLL* 2)
(intern "*ODD_GATE_MACHINE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_GATE_MACHINE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_GATE_MACHINE* 3)
(intern "*ODD_MAP_COLLECT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_MAP_COLLECT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_MAP_COLLECT* 4)
(intern "*ODD_MAP_ERROR*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_MAP_ERROR* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_MAP_ERROR* 5)
(intern "*ODD_NONE_MAP_ERROR*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_NONE_MAP_ERROR* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_NONE_MAP_ERROR* 6)
(intern "*ODD_DYNAMIC_EVENT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_DYNAMIC_EVENT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_DYNAMIC_EVENT* 7)
(intern "*ODD_SERVICE_AREA*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_SERVICE_AREA* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_SERVICE_AREA* 9)
(intern "*ODD_DRIVABLE_TOLL*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_DRIVABLE_TOLL* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_DRIVABLE_TOLL* 20)
(intern "*ODD_SHORT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_SHORT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_SHORT* 50)
(intern "*ODD_NOT_AVAILABLE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_NOT_AVAILABLE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_NOT_AVAILABLE* 100)
(intern "*ODD_UNMATCH*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_UNMATCH* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_UNMATCH* 101)
(intern "*ODD_TOUR_END*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_TOUR_END* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_TOUR_END* 102)
(intern "*ESR_ROAD_CLASS*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ESR_ROAD_CLASS* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ESR_ROAD_CLASS* 103)
(intern "*ODD_TILE_END*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_TILE_END* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_TILE_END* 104)
(intern "*ODD_UNP_ROUNDABOUT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_UNP_ROUNDABOUT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_UNP_ROUNDABOUT* 105)
(intern "*ODD_UNP_U_TURN*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_UNP_U_TURN* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_UNP_U_TURN* 106)
(intern "*ODD_UNP_TIDAL_FLOW_LANE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_UNP_TIDAL_FLOW_LANE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_UNP_TIDAL_FLOW_LANE* 107)
(intern "*ODD_UNP_REVERSIBLE_LANE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_UNP_REVERSIBLE_LANE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_UNP_REVERSIBLE_LANE* 108)
(intern "*ODD_CRITICALLY_OVER_CURVATURE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_CRITICALLY_OVER_CURVATURE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_CRITICALLY_OVER_CURVATURE* 109)
(intern "*ODD_OVER_CURVATURE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_OVER_CURVATURE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_OVER_CURVATURE* 110)
(intern "*ODD_OVER_SLOPE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_OVER_SLOPE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_OVER_SLOPE* 111)
(intern "*ODD_OVER_LANEWIDTH*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_OVER_LANEWIDTH* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_OVER_LANEWIDTH* 112)
(intern "*ODD_INVALID_LINE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_INVALID_LINE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_INVALID_LINE* 113)
(intern "*ODD_TOO_LOW_SPDLIMIT_HIGHWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_TOO_LOW_SPDLIMIT_HIGHWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_TOO_LOW_SPDLIMIT_HIGHWAY* 114)
(intern "*ODD_PROHIBITED_LANE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_PROHIBITED_LANE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_PROHIBITED_LANE* 115)
(intern "*ODD_INTERSECTION_HIGHWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_INTERSECTION_HIGHWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_INTERSECTION_HIGHWAY* 116)
(intern "*ODD_TRAFFICLIGHT_HIGHWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_TRAFFICLIGHT_HIGHWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_TRAFFICLIGHT_HIGHWAY* 117)
(intern "*ODD_PROHIBITED_FACILITY_HIGHWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_PROHIBITED_FACILITY_HIGHWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_PROHIBITED_FACILITY_HIGHWAY* 118)
(intern "*ODD_ROUNDABOUT_HIGHWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_ROUNDABOUT_HIGHWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_ROUNDABOUT_HIGHWAY* 119)
(intern "*ODD_LOCAL_MAP_EDGE*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_LOCAL_MAP_EDGE* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_LOCAL_MAP_EDGE* 120)
(intern "*ODD_HNP_MINUS*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_HNP_MINUS* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_HNP_MINUS* 121)
(intern "*ODD_CHECK_POINT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_CHECK_POINT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_CHECK_POINT* 130)
(intern "*ODD_INNER_ROAD*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_INNER_ROAD* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_INNER_ROAD* 131)
(intern "*ODD_DYNAMIC_ROADWORK*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_DYNAMIC_ROADWORK* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_DYNAMIC_ROADWORK* 132)
(intern "*ODD_L3_CROSS_NOLIGHT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_CROSS_NOLIGHT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_CROSS_NOLIGHT* 141)
(intern "*ODD_L3_NARROW_UTURN*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_NARROW_UTURN* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_NARROW_UTURN* 142)
(intern "*ODD_L3_UNREGULAR_ROAD*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_UNREGULAR_ROAD* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_UNREGULAR_ROAD* 143)
(intern "*ODD_L3_ETC*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_ETC* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_ETC* 144)
(intern "*ODD_L3_DUALWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_DUALWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_DUALWAY* 145)
(intern "*ODD_L3_BROKEN_ICJCT*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_BROKEN_ICJCT* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_BROKEN_ICJCT* 146)
(intern "*ODD_L3_DEAD_ROAD*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*ODD_L3_DEAD_ROAD* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*ODD_L3_DEAD_ROAD* 147)
(intern "*URBAN*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*URBAN* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*URBAN* 201)
(intern "*HIGHWAY*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*HIGHWAY* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*HIGHWAY* 202)
(intern "*HDMAP*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*HDMAP* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*HDMAP* 203)
(intern "*NO_HDMAP*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*NO_HDMAP* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*NO_HDMAP* 204)
(intern "*SDNAVINP_AREA*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*SDNAVINP_AREA* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*SDNAVINP_AREA* 205)
(intern "*SWITCH_NP_TO_PNP_AREA*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*SWITCH_NP_TO_PNP_AREA* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*SWITCH_NP_TO_PNP_AREA* 210)
(intern "*SWITCH_PNP_TO_NP_AREA*" (find-package "HDMAP_MSGS::ODDTYPE"))
(shadow '*SWITCH_PNP_TO_NP_AREA* (find-package "HDMAP_MSGS::ODDTYPE"))
(defconstant hdmap_msgs::ODDType::*SWITCH_PNP_TO_NP_AREA* 211)

(defun hdmap_msgs::ODDType-to-symbol (const)
  (cond
        ((= const 0) 'hdmap_msgs::ODDType::*ODD_UNKNOWN*)
        ((= const 1) 'hdmap_msgs::ODDType::*ODD_ROAD_CONSTRUCTION*)
        ((= const 2) 'hdmap_msgs::ODDType::*ODD_TOLL*)
        ((= const 3) 'hdmap_msgs::ODDType::*ODD_GATE_MACHINE*)
        ((= const 4) 'hdmap_msgs::ODDType::*ODD_MAP_COLLECT*)
        ((= const 5) 'hdmap_msgs::ODDType::*ODD_MAP_ERROR*)
        ((= const 6) 'hdmap_msgs::ODDType::*ODD_NONE_MAP_ERROR*)
        ((= const 7) 'hdmap_msgs::ODDType::*ODD_DYNAMIC_EVENT*)
        ((= const 9) 'hdmap_msgs::ODDType::*ODD_SERVICE_AREA*)
        ((= const 20) 'hdmap_msgs::ODDType::*ODD_DRIVABLE_TOLL*)
        ((= const 50) 'hdmap_msgs::ODDType::*ODD_SHORT*)
        ((= const 100) 'hdmap_msgs::ODDType::*ODD_NOT_AVAILABLE*)
        ((= const 101) 'hdmap_msgs::ODDType::*ODD_UNMATCH*)
        ((= const 102) 'hdmap_msgs::ODDType::*ODD_TOUR_END*)
        ((= const 103) 'hdmap_msgs::ODDType::*ESR_ROAD_CLASS*)
        ((= const 104) 'hdmap_msgs::ODDType::*ODD_TILE_END*)
        ((= const 105) 'hdmap_msgs::ODDType::*ODD_UNP_ROUNDABOUT*)
        ((= const 106) 'hdmap_msgs::ODDType::*ODD_UNP_U_TURN*)
        ((= const 107) 'hdmap_msgs::ODDType::*ODD_UNP_TIDAL_FLOW_LANE*)
        ((= const 108) 'hdmap_msgs::ODDType::*ODD_UNP_REVERSIBLE_LANE*)
        ((= const 109) 'hdmap_msgs::ODDType::*ODD_CRITICALLY_OVER_CURVATURE*)
        ((= const 110) 'hdmap_msgs::ODDType::*ODD_OVER_CURVATURE*)
        ((= const 111) 'hdmap_msgs::ODDType::*ODD_OVER_SLOPE*)
        ((= const 112) 'hdmap_msgs::ODDType::*ODD_OVER_LANEWIDTH*)
        ((= const 113) 'hdmap_msgs::ODDType::*ODD_INVALID_LINE*)
        ((= const 114) 'hdmap_msgs::ODDType::*ODD_TOO_LOW_SPDLIMIT_HIGHWAY*)
        ((= const 115) 'hdmap_msgs::ODDType::*ODD_PROHIBITED_LANE*)
        ((= const 116) 'hdmap_msgs::ODDType::*ODD_INTERSECTION_HIGHWAY*)
        ((= const 117) 'hdmap_msgs::ODDType::*ODD_TRAFFICLIGHT_HIGHWAY*)
        ((= const 118) 'hdmap_msgs::ODDType::*ODD_PROHIBITED_FACILITY_HIGHWAY*)
        ((= const 119) 'hdmap_msgs::ODDType::*ODD_ROUNDABOUT_HIGHWAY*)
        ((= const 120) 'hdmap_msgs::ODDType::*ODD_LOCAL_MAP_EDGE*)
        ((= const 121) 'hdmap_msgs::ODDType::*ODD_HNP_MINUS*)
        ((= const 130) 'hdmap_msgs::ODDType::*ODD_CHECK_POINT*)
        ((= const 131) 'hdmap_msgs::ODDType::*ODD_INNER_ROAD*)
        ((= const 132) 'hdmap_msgs::ODDType::*ODD_DYNAMIC_ROADWORK*)
        ((= const 141) 'hdmap_msgs::ODDType::*ODD_L3_CROSS_NOLIGHT*)
        ((= const 142) 'hdmap_msgs::ODDType::*ODD_L3_NARROW_UTURN*)
        ((= const 143) 'hdmap_msgs::ODDType::*ODD_L3_UNREGULAR_ROAD*)
        ((= const 144) 'hdmap_msgs::ODDType::*ODD_L3_ETC*)
        ((= const 145) 'hdmap_msgs::ODDType::*ODD_L3_DUALWAY*)
        ((= const 146) 'hdmap_msgs::ODDType::*ODD_L3_BROKEN_ICJCT*)
        ((= const 147) 'hdmap_msgs::ODDType::*ODD_L3_DEAD_ROAD*)
        ((= const 201) 'hdmap_msgs::ODDType::*URBAN*)
        ((= const 202) 'hdmap_msgs::ODDType::*HIGHWAY*)
        ((= const 203) 'hdmap_msgs::ODDType::*HDMAP*)
        ((= const 204) 'hdmap_msgs::ODDType::*NO_HDMAP*)
        ((= const 205) 'hdmap_msgs::ODDType::*SDNaviNP_AREA*)
        ((= const 210) 'hdmap_msgs::ODDType::*SWITCH_NP_TO_PNP_AREA*)
        ((= const 211) 'hdmap_msgs::ODDType::*SWITCH_PNP_TO_NP_AREA*)
        (t nil)))

(defclass hdmap_msgs::ODDType
  :super ros::object
  :slots (_value ))

(defmethod hdmap_msgs::ODDType
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hdmap_msgs::ODDType :md5sum-) "cbbdc0c0074ed03017b14ad8652bcf25")
(setf (get hdmap_msgs::ODDType :datatype-) "hdmap_msgs/ODDType")
(setf (get hdmap_msgs::ODDType :definition-)
      "uint8 ODD_UNKNOWN = 0
uint8 ODD_ROAD_CONSTRUCTION = 1
uint8 ODD_TOLL = 2
uint8 ODD_GATE_MACHINE = 3
uint8 ODD_MAP_COLLECT = 4
uint8 ODD_MAP_ERROR = 5
uint8 ODD_NONE_MAP_ERROR = 6
uint8 ODD_DYNAMIC_EVENT = 7
uint8 ODD_SERVICE_AREA = 9
uint8 ODD_DRIVABLE_TOLL = 20
uint8 ODD_SHORT = 50
uint8 ODD_NOT_AVAILABLE = 100
uint8 ODD_UNMATCH = 101
uint8 ODD_TOUR_END = 102
uint8 ESR_ROAD_CLASS = 103
uint8 ODD_TILE_END = 104
uint8 ODD_UNP_ROUNDABOUT = 105
uint8 ODD_UNP_U_TURN = 106
uint8 ODD_UNP_TIDAL_FLOW_LANE = 107
uint8 ODD_UNP_REVERSIBLE_LANE = 108
uint8 ODD_CRITICALLY_OVER_CURVATURE = 109
uint8 ODD_OVER_CURVATURE = 110
uint8 ODD_OVER_SLOPE = 111
uint8 ODD_OVER_LANEWIDTH = 112
uint8 ODD_INVALID_LINE = 113
uint8 ODD_TOO_LOW_SPDLIMIT_HIGHWAY = 114
uint8 ODD_PROHIBITED_LANE = 115
uint8 ODD_INTERSECTION_HIGHWAY = 116
uint8 ODD_TRAFFICLIGHT_HIGHWAY = 117
uint8 ODD_PROHIBITED_FACILITY_HIGHWAY = 118
uint8 ODD_ROUNDABOUT_HIGHWAY = 119
uint8 ODD_LOCAL_MAP_EDGE = 120
uint8 ODD_HNP_MINUS = 121
uint8 ODD_CHECK_POINT = 130
uint8 ODD_INNER_ROAD = 131
uint8 ODD_DYNAMIC_ROADWORK = 132
uint8 ODD_L3_CROSS_NOLIGHT = 141
uint8 ODD_L3_NARROW_UTURN = 142
uint8 ODD_L3_UNREGULAR_ROAD = 143
uint8 ODD_L3_ETC = 144
uint8 ODD_L3_DUALWAY = 145
uint8 ODD_L3_BROKEN_ICJCT = 146
uint8 ODD_L3_DEAD_ROAD = 147
uint8 URBAN = 201
uint8 HIGHWAY = 202
uint8 HDMAP = 203
uint8 NO_HDMAP = 204
uint8 SDNaviNP_AREA = 205
uint8 SWITCH_NP_TO_PNP_AREA = 210
uint8 SWITCH_PNP_TO_NP_AREA = 211
uint8 value

")



(provide :hdmap_msgs/ODDType "cbbdc0c0074ed03017b14ad8652bcf25")


