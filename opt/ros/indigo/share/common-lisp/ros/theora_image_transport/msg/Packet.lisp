; Auto-generated. Do not edit!


(cl:in-package theora_image_transport-msg)


;//! \htmlinclude Packet.msg.html

(cl:defclass <Packet> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (b_o_s
    :reader b_o_s
    :initarg :b_o_s
    :type cl:integer
    :initform 0)
   (e_o_s
    :reader e_o_s
    :initarg :e_o_s
    :type cl:integer
    :initform 0)
   (granulepos
    :reader granulepos
    :initarg :granulepos
    :type cl:integer
    :initform 0)
   (packetno
    :reader packetno
    :initarg :packetno
    :type cl:integer
    :initform 0))
)

(cl:defclass Packet (<Packet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Packet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Packet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name theora_image_transport-msg:<Packet> is deprecated: use theora_image_transport-msg:Packet instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader theora_image_transport-msg:header-val is deprecated.  Use theora_image_transport-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader theora_image_transport-msg:data-val is deprecated.  Use theora_image_transport-msg:data instead.")
  (data m))

(cl:ensure-generic-function 'b_o_s-val :lambda-list '(m))
(cl:defmethod b_o_s-val ((m <Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader theora_image_transport-msg:b_o_s-val is deprecated.  Use theora_image_transport-msg:b_o_s instead.")
  (b_o_s m))

(cl:ensure-generic-function 'e_o_s-val :lambda-list '(m))
(cl:defmethod e_o_s-val ((m <Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader theora_image_transport-msg:e_o_s-val is deprecated.  Use theora_image_transport-msg:e_o_s instead.")
  (e_o_s m))

(cl:ensure-generic-function 'granulepos-val :lambda-list '(m))
(cl:defmethod granulepos-val ((m <Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader theora_image_transport-msg:granulepos-val is deprecated.  Use theora_image_transport-msg:granulepos instead.")
  (granulepos m))

(cl:ensure-generic-function 'packetno-val :lambda-list '(m))
(cl:defmethod packetno-val ((m <Packet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader theora_image_transport-msg:packetno-val is deprecated.  Use theora_image_transport-msg:packetno instead.")
  (packetno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Packet>) ostream)
  "Serializes a message object of type '<Packet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
  (cl:let* ((signed (cl:slot-value msg 'b_o_s)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'e_o_s)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'granulepos)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'packetno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Packet>) istream)
  "Deserializes a message object of type '<Packet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'b_o_s) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'e_o_s) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'granulepos) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'packetno) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Packet>)))
  "Returns string type for a message object of type '<Packet>"
  "theora_image_transport/Packet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Packet)))
  "Returns string type for a message object of type 'Packet"
  "theora_image_transport/Packet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Packet>)))
  "Returns md5sum for a message object of type '<Packet>"
  "33ac4e14a7cff32e7e0d65f18bb410f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Packet)))
  "Returns md5sum for a message object of type 'Packet"
  "33ac4e14a7cff32e7e0d65f18bb410f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Packet>)))
  "Returns full string definition for message of type '<Packet>"
  (cl:format cl:nil "# ROS message adaptation of the ogg_packet struct from libogg,~%# see http://www.xiph.org/ogg/doc/libogg/ogg_packet.html.~%~%Header header     # Original sensor_msgs/Image header~%uint8[] data      # Raw Theora packet data (combines packet and bytes fields from ogg_packet)~%int32 b_o_s       # Flag indicating whether this packet begins a logical bitstream~%int32 e_o_s       # Flag indicating whether this packet ends a bitstream~%int64 granulepos  # A number indicating the position of this packet in the decoded data~%int64 packetno    # Sequential number of this packet in the ogg bitstream~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Packet)))
  "Returns full string definition for message of type 'Packet"
  (cl:format cl:nil "# ROS message adaptation of the ogg_packet struct from libogg,~%# see http://www.xiph.org/ogg/doc/libogg/ogg_packet.html.~%~%Header header     # Original sensor_msgs/Image header~%uint8[] data      # Raw Theora packet data (combines packet and bytes fields from ogg_packet)~%int32 b_o_s       # Flag indicating whether this packet begins a logical bitstream~%int32 e_o_s       # Flag indicating whether this packet ends a bitstream~%int64 granulepos  # A number indicating the position of this packet in the decoded data~%int64 packetno    # Sequential number of this packet in the ogg bitstream~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Packet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Packet>))
  "Converts a ROS message object to a list"
  (cl:list 'Packet
    (cl:cons ':header (header msg))
    (cl:cons ':data (data msg))
    (cl:cons ':b_o_s (b_o_s msg))
    (cl:cons ':e_o_s (e_o_s msg))
    (cl:cons ':granulepos (granulepos msg))
    (cl:cons ':packetno (packetno msg))
))
