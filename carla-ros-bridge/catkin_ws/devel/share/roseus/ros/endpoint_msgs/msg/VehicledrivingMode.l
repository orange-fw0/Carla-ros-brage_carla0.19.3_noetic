;; Auto-generated. Do not edit!


(when (boundp 'endpoint_msgs::VehicledrivingMode)
  (if (not (find-package "ENDPOINT_MSGS"))
    (make-package "ENDPOINT_MSGS"))
  (shadow 'VehicledrivingMode (find-package "ENDPOINT_MSGS")))
(unless (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE")
  (make-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))

(in-package "ROS")
;;//! \htmlinclude VehicledrivingMode.msg.html


(intern "*NONE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*NONE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*NONE* 0)
(intern "*NORMAL*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*NORMAL* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*NORMAL* 1)
(intern "*DRIFT_EXP*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*DRIFT_EXP* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*DRIFT_EXP* 2)
(intern "*WINTER_SPORT*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*WINTER_SPORT* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*WINTER_SPORT* 3)
(intern "*OFFROAD*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*OFFROAD* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*OFFROAD* 4)
(intern "*RACE_TRACK*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*RACE_TRACK* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*RACE_TRACK* 5)
(intern "*ROCK*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ROCK* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ROCK* 6)
(intern "*SAND*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*SAND* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*SAND* 7)
(intern "*SPORT*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*SPORT* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*SPORT* 8)
(intern "*ECO*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ECO* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ECO* 9)
(intern "*MUD*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*MUD* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*MUD* 10)
(intern "*OPD*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*OPD* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*OPD* 11)
(intern "*WADING*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*WADING* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*WADING* 12)
(intern "*SNOW*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*SNOW* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*SNOW* 13)
(intern "*ICE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ICE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ICE* 14)
(intern "*GRASS*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*GRASS* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*GRASS* 15)
(intern "*GRIT*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*GRIT* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*GRIT* 16)
(intern "*MOUNTAIN*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*MOUNTAIN* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*MOUNTAIN* 17)
(intern "*SUPER_WADING*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*SUPER_WADING* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*SUPER_WADING* 18)
(intern "*ADAPTIVE_FEEDBACK_SYSTEM*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ADAPTIVE_FEEDBACK_SYSTEM* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ADAPTIVE_FEEDBACK_SYSTEM* 19)
(intern "*TURN_IN_PLACE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*TURN_IN_PLACE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*TURN_IN_PLACE* 20)
(intern "*ECO_PLUS*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ECO_PLUS* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ECO_PLUS* 21)
(intern "*RALLY*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*RALLY* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*RALLY* 22)
(intern "*LIMP_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*LIMP_MODE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*LIMP_MODE* 23)
(intern "*SPORT_PLUS*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*SPORT_PLUS* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*SPORT_PLUS* 24)
(intern "*CREEP*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*CREEP* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*CREEP* 25)
(intern "*OVERCLOCKING_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*OVERCLOCKING_MODE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*OVERCLOCKING_MODE* 26)
(intern "*ANTISKID_CHAIN*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ANTISKID_CHAIN* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ANTISKID_CHAIN* 27)
(intern "*STRUCK_ASSISTANT*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*STRUCK_ASSISTANT* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*STRUCK_ASSISTANT* 28)
(intern "*TERRAIN_ASSISTANT*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*TERRAIN_ASSISTANT* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*TERRAIN_ASSISTANT* 29)
(intern "*ITAC*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*ITAC* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*ITAC* 30)
(intern "*EXT_ENDURANCE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*EXT_ENDURANCE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*EXT_ENDURANCE* 31)
(intern "*DEEPSNOW*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*DEEPSNOW* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*DEEPSNOW* 32)
(intern "*TBS_DETN*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*TBS_DETN* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*TBS_DETN* 33)
(intern "*AUTOMATIC_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*AUTOMATIC_MODE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*AUTOMATIC_MODE* 34)
(intern "*CUSTOM_MODE*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*CUSTOM_MODE* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*CUSTOM_MODE* 35)
(intern "*RESERVED1*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*RESERVED1* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*RESERVED1* 36)
(intern "*RESERVED2*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*RESERVED2* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*RESERVED2* 37)
(intern "*RESERVED3*" (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(shadow '*RESERVED3* (find-package "ENDPOINT_MSGS::VEHICLEDRIVINGMODE"))
(defconstant endpoint_msgs::VehicledrivingMode::*RESERVED3* 38)

(defun endpoint_msgs::VehicledrivingMode-to-symbol (const)
  (cond
        ((= const 0) 'endpoint_msgs::VehicledrivingMode::*NONE*)
        ((= const 1) 'endpoint_msgs::VehicledrivingMode::*NORMAL*)
        ((= const 2) 'endpoint_msgs::VehicledrivingMode::*DRIFT_EXP*)
        ((= const 3) 'endpoint_msgs::VehicledrivingMode::*WINTER_SPORT*)
        ((= const 4) 'endpoint_msgs::VehicledrivingMode::*OFFROAD*)
        ((= const 5) 'endpoint_msgs::VehicledrivingMode::*RACE_TRACK*)
        ((= const 6) 'endpoint_msgs::VehicledrivingMode::*ROCK*)
        ((= const 7) 'endpoint_msgs::VehicledrivingMode::*SAND*)
        ((= const 8) 'endpoint_msgs::VehicledrivingMode::*SPORT*)
        ((= const 9) 'endpoint_msgs::VehicledrivingMode::*ECO*)
        ((= const 10) 'endpoint_msgs::VehicledrivingMode::*MUD*)
        ((= const 11) 'endpoint_msgs::VehicledrivingMode::*OPD*)
        ((= const 12) 'endpoint_msgs::VehicledrivingMode::*WADING*)
        ((= const 13) 'endpoint_msgs::VehicledrivingMode::*SNOW*)
        ((= const 14) 'endpoint_msgs::VehicledrivingMode::*ICE*)
        ((= const 15) 'endpoint_msgs::VehicledrivingMode::*GRASS*)
        ((= const 16) 'endpoint_msgs::VehicledrivingMode::*GRIT*)
        ((= const 17) 'endpoint_msgs::VehicledrivingMode::*MOUNTAIN*)
        ((= const 18) 'endpoint_msgs::VehicledrivingMode::*SUPER_WADING*)
        ((= const 19) 'endpoint_msgs::VehicledrivingMode::*ADAPTIVE_FEEDBACK_SYSTEM*)
        ((= const 20) 'endpoint_msgs::VehicledrivingMode::*TURN_IN_PLACE*)
        ((= const 21) 'endpoint_msgs::VehicledrivingMode::*ECO_PLUS*)
        ((= const 22) 'endpoint_msgs::VehicledrivingMode::*RALLY*)
        ((= const 23) 'endpoint_msgs::VehicledrivingMode::*LIMP_MODE*)
        ((= const 24) 'endpoint_msgs::VehicledrivingMode::*SPORT_PLUS*)
        ((= const 25) 'endpoint_msgs::VehicledrivingMode::*CREEP*)
        ((= const 26) 'endpoint_msgs::VehicledrivingMode::*OVERCLOCKING_MODE*)
        ((= const 27) 'endpoint_msgs::VehicledrivingMode::*ANTISKID_CHAIN*)
        ((= const 28) 'endpoint_msgs::VehicledrivingMode::*STRUCK_ASSISTANT*)
        ((= const 29) 'endpoint_msgs::VehicledrivingMode::*TERRAIN_ASSISTANT*)
        ((= const 30) 'endpoint_msgs::VehicledrivingMode::*ITAC*)
        ((= const 31) 'endpoint_msgs::VehicledrivingMode::*Ext_Endurance*)
        ((= const 32) 'endpoint_msgs::VehicledrivingMode::*DEEPSNOW*)
        ((= const 33) 'endpoint_msgs::VehicledrivingMode::*TBS_Detn*)
        ((= const 34) 'endpoint_msgs::VehicledrivingMode::*AUTOMATIC_MODE*)
        ((= const 35) 'endpoint_msgs::VehicledrivingMode::*CUSTOM_MODE*)
        ((= const 36) 'endpoint_msgs::VehicledrivingMode::*RESERVED1*)
        ((= const 37) 'endpoint_msgs::VehicledrivingMode::*RESERVED2*)
        ((= const 38) 'endpoint_msgs::VehicledrivingMode::*RESERVED3*)
        (t nil)))

(defclass endpoint_msgs::VehicledrivingMode
  :super ros::object
  :slots (_mode _sub_mode ))

(defmethod endpoint_msgs::VehicledrivingMode
  (:init
   (&key
    ((:mode __mode) 0)
    ((:sub_mode __sub_mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _sub_mode (round __sub_mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:sub_mode
   (&optional __sub_mode)
   (if __sub_mode (setq _sub_mode __sub_mode)) _sub_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; uint8 _sub_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; uint8 _sub_mode
       (write-byte _sub_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sub_mode
     (setq _sub_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get endpoint_msgs::VehicledrivingMode :md5sum-) "95271e4159c01cb2988d9ea2d24929b6")
(setf (get endpoint_msgs::VehicledrivingMode :datatype-) "endpoint_msgs/VehicledrivingMode")
(setf (get endpoint_msgs::VehicledrivingMode :definition-)
      "uint8 NONE = 0
uint8 NORMAL = 1
uint8 DRIFT_EXP = 2
uint8 WINTER_SPORT = 3
uint8 OFFROAD = 4
uint8 RACE_TRACK = 5
uint8 ROCK = 6
uint8 SAND = 7
uint8 SPORT = 8
uint8 ECO = 9
uint8 MUD = 10
uint8 OPD = 11
uint8 WADING = 12
uint8 SNOW = 13
uint8 ICE = 14
uint8 GRASS = 15
uint8 GRIT = 16
uint8 MOUNTAIN = 17
uint8 SUPER_WADING = 18
uint8 ADAPTIVE_FEEDBACK_SYSTEM = 19
uint8 TURN_IN_PLACE = 20
uint8 ECO_PLUS = 21
uint8 RALLY = 22
uint8 LIMP_MODE = 23
uint8 SPORT_PLUS = 24
uint8 CREEP = 25
uint8 OVERCLOCKING_MODE = 26
uint8 ANTISKID_CHAIN = 27
uint8 STRUCK_ASSISTANT = 28
uint8 TERRAIN_ASSISTANT = 29
uint8 ITAC = 30
uint8 Ext_Endurance = 31
uint8 DEEPSNOW = 32
uint8 TBS_Detn = 33
uint8 AUTOMATIC_MODE = 34
uint8 CUSTOM_MODE = 35
uint8 RESERVED1 = 36
uint8 RESERVED2 = 37
uint8 RESERVED3 = 38
uint8 mode
uint8 sub_mode

")



(provide :endpoint_msgs/VehicledrivingMode "95271e4159c01cb2988d9ea2d24929b6")


