;; Auto-generated. Do not edit!


(when (boundp 'lane_navi_info_msgs::Meta)
  (if (not (find-package "LANE_NAVI_INFO_MSGS"))
    (make-package "LANE_NAVI_INFO_MSGS"))
  (shadow 'Meta (find-package "LANE_NAVI_INFO_MSGS")))
(unless (find-package "LANE_NAVI_INFO_MSGS::META")
  (make-package "LANE_NAVI_INFO_MSGS::META"))

(in-package "ROS")
;;//! \htmlinclude Meta.msg.html


(defclass lane_navi_info_msgs::Meta
  :super ros::object
  :slots (_source _version _reserved_data _map_type _administrative_info _administrative_wide_driving_rule ))

(defmethod lane_navi_info_msgs::Meta
  (:init
   (&key
    ((:source __source) "")
    ((:version __version) "")
    ((:reserved_data __reserved_data) "")
    ((:map_type __map_type) (instance lane_navi_info_msgs::MapType :init))
    ((:administrative_info __administrative_info) (instance lane_navi_info_msgs::AdministrativeInfo :init))
    ((:administrative_wide_driving_rule __administrative_wide_driving_rule) (instance lane_navi_info_msgs::AdministrativeWideDrivingRule :init))
    )
   (send-super :init)
   (setq _source (string __source))
   (setq _version (string __version))
   (setq _reserved_data (string __reserved_data))
   (setq _map_type __map_type)
   (setq _administrative_info __administrative_info)
   (setq _administrative_wide_driving_rule __administrative_wide_driving_rule)
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:version
   (&optional __version)
   (if __version (setq _version __version)) _version)
  (:reserved_data
   (&optional __reserved_data)
   (if __reserved_data (setq _reserved_data __reserved_data)) _reserved_data)
  (:map_type
   (&rest __map_type)
   (if (keywordp (car __map_type))
       (send* _map_type __map_type)
     (progn
       (if __map_type (setq _map_type (car __map_type)))
       _map_type)))
  (:administrative_info
   (&rest __administrative_info)
   (if (keywordp (car __administrative_info))
       (send* _administrative_info __administrative_info)
     (progn
       (if __administrative_info (setq _administrative_info (car __administrative_info)))
       _administrative_info)))
  (:administrative_wide_driving_rule
   (&rest __administrative_wide_driving_rule)
   (if (keywordp (car __administrative_wide_driving_rule))
       (send* _administrative_wide_driving_rule __administrative_wide_driving_rule)
     (progn
       (if __administrative_wide_driving_rule (setq _administrative_wide_driving_rule (car __administrative_wide_driving_rule)))
       _administrative_wide_driving_rule)))
  (:serialization-length
   ()
   (+
    ;; string _source
    4 (length _source)
    ;; string _version
    4 (length _version)
    ;; string _reserved_data
    4 (length _reserved_data)
    ;; lane_navi_info_msgs/MapType _map_type
    (send _map_type :serialization-length)
    ;; lane_navi_info_msgs/AdministrativeInfo _administrative_info
    (send _administrative_info :serialization-length)
    ;; lane_navi_info_msgs/AdministrativeWideDrivingRule _administrative_wide_driving_rule
    (send _administrative_wide_driving_rule :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; string _version
       (write-long (length _version) s) (princ _version s)
     ;; string _reserved_data
       (write-long (length _reserved_data) s) (princ _reserved_data s)
     ;; lane_navi_info_msgs/MapType _map_type
       (send _map_type :serialize s)
     ;; lane_navi_info_msgs/AdministrativeInfo _administrative_info
       (send _administrative_info :serialize s)
     ;; lane_navi_info_msgs/AdministrativeWideDrivingRule _administrative_wide_driving_rule
       (send _administrative_wide_driving_rule :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _reserved_data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _reserved_data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; lane_navi_info_msgs/MapType _map_type
     (send _map_type :deserialize buf ptr-) (incf ptr- (send _map_type :serialization-length))
   ;; lane_navi_info_msgs/AdministrativeInfo _administrative_info
     (send _administrative_info :deserialize buf ptr-) (incf ptr- (send _administrative_info :serialization-length))
   ;; lane_navi_info_msgs/AdministrativeWideDrivingRule _administrative_wide_driving_rule
     (send _administrative_wide_driving_rule :deserialize buf ptr-) (incf ptr- (send _administrative_wide_driving_rule :serialization-length))
   ;;
   self)
  )

(setf (get lane_navi_info_msgs::Meta :md5sum-) "304013d29f82cbefc689634092a9193b")
(setf (get lane_navi_info_msgs::Meta :datatype-) "lane_navi_info_msgs/Meta")
(setf (get lane_navi_info_msgs::Meta :definition-)
      "string source
string version
string reserved_data
lane_navi_info_msgs/MapType map_type
lane_navi_info_msgs/AdministrativeInfo administrative_info
lane_navi_info_msgs/AdministrativeWideDrivingRule administrative_wide_driving_rule

================================================================================
MSG: lane_navi_info_msgs/MapType
uint8 SD_PRO = 0
uint8 SD_MAP = 1
uint8 value

================================================================================
MSG: lane_navi_info_msgs/AdministrativeInfo
uint16 UNKNOWN = 0
uint16 BELGIEN = 56
uint16 BULGARIEN = 100
uint16 DAENEMARK = 208
uint16 DEUTSCHLAND = 276
uint16 ESTLAND = 233
uint16 FINNLAND = 246
uint16 FRANKREICH = 250
uint16 GRIECHENLAND = 300
uint16 GROSSBRITANNIEN = 826
uint16 IRLAND = 372
uint16 ISLAND = 352
uint16 ISRAEL = 376
uint16 ITALIEN = 380
uint16 KROATIEN = 191
uint16 LETTLAND = 428
uint16 LITAUEN = 440
uint16 LUXEMBURG = 442
uint16 MALTA = 470
uint16 NIEDERLANDE = 528
uint16 NORWEGEN = 578
uint16 OESTERREICH = 40
uint16 POLEN = 616
uint16 PORTUGAL = 620
uint16 RUMAENIEN = 642
uint16 SCHWEDEN = 752
uint16 SCHWEIZ = 756
uint16 SLOWAKISCHE_REPUBLIK = 703
uint16 SLOWENIEN = 705
uint16 SPANIEN = 724
uint16 TSCHECHISCHE_REPUBLIK = 203
uint16 UNGARN = 348
uint16 ZYPERN_EU_GEBIET = 196
uint16 HONGKONG = 344
uint16 MACAO = 446
uint16 SINGAPUR = 702
uint16 FRANZ_POLYNES = 258
uint16 REP_NORDMAZEDONIEN = 807
uint16 SERBIEN = 688
uint16 TUERKEI = 792
uint16 UKRAINE = 804
uint16 WESTJORDANLAND = 275
uint16 ZYPERN_NORD = 10001
uint16 CHINA = 156
uint16 JAPAN = 392
uint16 USA = 840
uint16 OTHERS = 9999
uint16 value

================================================================================
MSG: lane_navi_info_msgs/AdministrativeWideDrivingRule
uint8 UNKNOWN = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 value

")



(provide :lane_navi_info_msgs/Meta "304013d29f82cbefc689634092a9193b")


