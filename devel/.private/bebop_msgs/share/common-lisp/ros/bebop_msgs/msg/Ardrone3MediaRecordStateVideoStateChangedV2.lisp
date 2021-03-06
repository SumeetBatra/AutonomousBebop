; Auto-generated. Do not edit!


(cl:in-package bebop_msgs-msg)


;//! \htmlinclude Ardrone3MediaRecordStateVideoStateChangedV2.msg.html

(cl:defclass <Ardrone3MediaRecordStateVideoStateChangedV2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Ardrone3MediaRecordStateVideoStateChangedV2 (<Ardrone3MediaRecordStateVideoStateChangedV2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ardrone3MediaRecordStateVideoStateChangedV2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ardrone3MediaRecordStateVideoStateChangedV2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bebop_msgs-msg:<Ardrone3MediaRecordStateVideoStateChangedV2> is deprecated: use bebop_msgs-msg:Ardrone3MediaRecordStateVideoStateChangedV2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ardrone3MediaRecordStateVideoStateChangedV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:header-val is deprecated.  Use bebop_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <Ardrone3MediaRecordStateVideoStateChangedV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:state-val is deprecated.  Use bebop_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <Ardrone3MediaRecordStateVideoStateChangedV2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader bebop_msgs-msg:error-val is deprecated.  Use bebop_msgs-msg:error instead.")
  (error m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Ardrone3MediaRecordStateVideoStateChangedV2>)))
    "Constants for message type '<Ardrone3MediaRecordStateVideoStateChangedV2>"
  '((:STATE_STOPPED . 0)
    (:STATE_STARTED . 1)
    (:STATE_NOTAVAILABLE . 2)
    (:ERROR_OK . 0)
    (:ERROR_UNKNOWN . 1)
    (:ERROR_CAMERA_KO . 2)
    (:ERROR_MEMORYFULL . 3)
    (:ERROR_LOWBATTERY . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Ardrone3MediaRecordStateVideoStateChangedV2)))
    "Constants for message type 'Ardrone3MediaRecordStateVideoStateChangedV2"
  '((:STATE_STOPPED . 0)
    (:STATE_STARTED . 1)
    (:STATE_NOTAVAILABLE . 2)
    (:ERROR_OK . 0)
    (:ERROR_UNKNOWN . 1)
    (:ERROR_CAMERA_KO . 2)
    (:ERROR_MEMORYFULL . 3)
    (:ERROR_LOWBATTERY . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ardrone3MediaRecordStateVideoStateChangedV2>) ostream)
  "Serializes a message object of type '<Ardrone3MediaRecordStateVideoStateChangedV2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ardrone3MediaRecordStateVideoStateChangedV2>) istream)
  "Deserializes a message object of type '<Ardrone3MediaRecordStateVideoStateChangedV2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'error)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ardrone3MediaRecordStateVideoStateChangedV2>)))
  "Returns string type for a message object of type '<Ardrone3MediaRecordStateVideoStateChangedV2>"
  "bebop_msgs/Ardrone3MediaRecordStateVideoStateChangedV2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ardrone3MediaRecordStateVideoStateChangedV2)))
  "Returns string type for a message object of type 'Ardrone3MediaRecordStateVideoStateChangedV2"
  "bebop_msgs/Ardrone3MediaRecordStateVideoStateChangedV2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ardrone3MediaRecordStateVideoStateChangedV2>)))
  "Returns md5sum for a message object of type '<Ardrone3MediaRecordStateVideoStateChangedV2>"
  "a340391fac53d7779ead611c124980e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ardrone3MediaRecordStateVideoStateChangedV2)))
  "Returns md5sum for a message object of type 'Ardrone3MediaRecordStateVideoStateChangedV2"
  "a340391fac53d7779ead611c124980e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ardrone3MediaRecordStateVideoStateChangedV2>)))
  "Returns full string definition for message of type '<Ardrone3MediaRecordStateVideoStateChangedV2>"
  (cl:format cl:nil "# Ardrone3MediaRecordStateVideoStateChangedV2~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Video record state.~%~%Header header~%~%# State of device video recording~%uint8 state_stopped=0  # Video is stopped~%uint8 state_started=1  # Video is started~%uint8 state_notAvailable=2  # The video recording is not available~%uint8 state~%# Error to explain the state~%uint8 error_ok=0  # No Error~%uint8 error_unknown=1  # Unknown generic error~%uint8 error_camera_ko=2  # Video camera is out of order~%uint8 error_memoryFull=3  # Memory full ; cannot save one additional video~%uint8 error_lowBattery=4  # Battery is too low to start/keep recording.~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ardrone3MediaRecordStateVideoStateChangedV2)))
  "Returns full string definition for message of type 'Ardrone3MediaRecordStateVideoStateChangedV2"
  (cl:format cl:nil "# Ardrone3MediaRecordStateVideoStateChangedV2~%# auto-generated from up stream XML files at~%#   github.com/Parrot-Developers/libARCommands/tree/master/Xml~%# To check upstream commit hash, refer to last_build_info file~%# Do not modify this file by hand. Check scripts/meta folder for generator files.~%#~%# SDK Comment: Video record state.~%~%Header header~%~%# State of device video recording~%uint8 state_stopped=0  # Video is stopped~%uint8 state_started=1  # Video is started~%uint8 state_notAvailable=2  # The video recording is not available~%uint8 state~%# Error to explain the state~%uint8 error_ok=0  # No Error~%uint8 error_unknown=1  # Unknown generic error~%uint8 error_camera_ko=2  # Video camera is out of order~%uint8 error_memoryFull=3  # Memory full ; cannot save one additional video~%uint8 error_lowBattery=4  # Battery is too low to start/keep recording.~%uint8 error~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ardrone3MediaRecordStateVideoStateChangedV2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ardrone3MediaRecordStateVideoStateChangedV2>))
  "Converts a ROS message object to a list"
  (cl:list 'Ardrone3MediaRecordStateVideoStateChangedV2
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':error (error msg))
))
