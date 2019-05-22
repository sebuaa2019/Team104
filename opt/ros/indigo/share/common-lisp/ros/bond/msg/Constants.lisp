; Auto-generated. Do not edit!


(cl:in-package bond-msg)


;//! \htmlinclude Constants.msg.html

(cl:defclass <Constants> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Constants (<Constants>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Constants>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Constants)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name bond-msg:<Constants> is deprecated: use bond-msg:Constants instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Constants>)))
    "Constants for message type '<Constants>"
  '((:DEAD_PUBLISH_PERIOD . 0.05)
    (:DEFAULT_CONNECT_TIMEOUT . 10.0)
    (:DEFAULT_HEARTBEAT_TIMEOUT . 4.0)
    (:DEFAULT_DISCONNECT_TIMEOUT . 2.0)
    (:DEFAULT_HEARTBEAT_PERIOD . 1.0)
    (:DISABLE_HEARTBEAT_TIMEOUT_PARAM . /bond_disable_heartbeat_timeout))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Constants)))
    "Constants for message type 'Constants"
  '((:DEAD_PUBLISH_PERIOD . 0.05)
    (:DEFAULT_CONNECT_TIMEOUT . 10.0)
    (:DEFAULT_HEARTBEAT_TIMEOUT . 4.0)
    (:DEFAULT_DISCONNECT_TIMEOUT . 2.0)
    (:DEFAULT_HEARTBEAT_PERIOD . 1.0)
    (:DISABLE_HEARTBEAT_TIMEOUT_PARAM . /bond_disable_heartbeat_timeout))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Constants>) ostream)
  "Serializes a message object of type '<Constants>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Constants>) istream)
  "Deserializes a message object of type '<Constants>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Constants>)))
  "Returns string type for a message object of type '<Constants>"
  "bond/Constants")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Constants)))
  "Returns string type for a message object of type 'Constants"
  "bond/Constants")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Constants>)))
  "Returns md5sum for a message object of type '<Constants>"
  "6fc594dc1d7bd7919077042712f8c8b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Constants)))
  "Returns md5sum for a message object of type 'Constants"
  "6fc594dc1d7bd7919077042712f8c8b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Constants>)))
  "Returns full string definition for message of type '<Constants>"
  (cl:format cl:nil "float32 DEAD_PUBLISH_PERIOD = 0.05~%float32 DEFAULT_CONNECT_TIMEOUT = 10.0~%float32 DEFAULT_HEARTBEAT_TIMEOUT = 4.0~%float32 DEFAULT_DISCONNECT_TIMEOUT = 2.0~%float32 DEFAULT_HEARTBEAT_PERIOD = 1.0~%~%string DISABLE_HEARTBEAT_TIMEOUT_PARAM=/bond_disable_heartbeat_timeout~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Constants)))
  "Returns full string definition for message of type 'Constants"
  (cl:format cl:nil "float32 DEAD_PUBLISH_PERIOD = 0.05~%float32 DEFAULT_CONNECT_TIMEOUT = 10.0~%float32 DEFAULT_HEARTBEAT_TIMEOUT = 4.0~%float32 DEFAULT_DISCONNECT_TIMEOUT = 2.0~%float32 DEFAULT_HEARTBEAT_PERIOD = 1.0~%~%string DISABLE_HEARTBEAT_TIMEOUT_PARAM=/bond_disable_heartbeat_timeout~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Constants>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Constants>))
  "Converts a ROS message object to a list"
  (cl:list 'Constants
))
