; Auto-generated. Do not edit!


(cl:in-package control_msgs-srv)


;//! \htmlinclude QueryCalibrationState-request.msg.html

(cl:defclass <QueryCalibrationState-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass QueryCalibrationState-request (<QueryCalibrationState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryCalibrationState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryCalibrationState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-srv:<QueryCalibrationState-request> is deprecated: use control_msgs-srv:QueryCalibrationState-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryCalibrationState-request>) ostream)
  "Serializes a message object of type '<QueryCalibrationState-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryCalibrationState-request>) istream)
  "Deserializes a message object of type '<QueryCalibrationState-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryCalibrationState-request>)))
  "Returns string type for a service object of type '<QueryCalibrationState-request>"
  "control_msgs/QueryCalibrationStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryCalibrationState-request)))
  "Returns string type for a service object of type 'QueryCalibrationState-request"
  "control_msgs/QueryCalibrationStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryCalibrationState-request>)))
  "Returns md5sum for a message object of type '<QueryCalibrationState-request>"
  "28af3beedcb84986b8e470dc5470507d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryCalibrationState-request)))
  "Returns md5sum for a message object of type 'QueryCalibrationState-request"
  "28af3beedcb84986b8e470dc5470507d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryCalibrationState-request>)))
  "Returns full string definition for message of type '<QueryCalibrationState-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryCalibrationState-request)))
  "Returns full string definition for message of type 'QueryCalibrationState-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryCalibrationState-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryCalibrationState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryCalibrationState-request
))
;//! \htmlinclude QueryCalibrationState-response.msg.html

(cl:defclass <QueryCalibrationState-response> (roslisp-msg-protocol:ros-message)
  ((is_calibrated
    :reader is_calibrated
    :initarg :is_calibrated
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass QueryCalibrationState-response (<QueryCalibrationState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <QueryCalibrationState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'QueryCalibrationState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name control_msgs-srv:<QueryCalibrationState-response> is deprecated: use control_msgs-srv:QueryCalibrationState-response instead.")))

(cl:ensure-generic-function 'is_calibrated-val :lambda-list '(m))
(cl:defmethod is_calibrated-val ((m <QueryCalibrationState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader control_msgs-srv:is_calibrated-val is deprecated.  Use control_msgs-srv:is_calibrated instead.")
  (is_calibrated m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <QueryCalibrationState-response>) ostream)
  "Serializes a message object of type '<QueryCalibrationState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_calibrated) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <QueryCalibrationState-response>) istream)
  "Deserializes a message object of type '<QueryCalibrationState-response>"
    (cl:setf (cl:slot-value msg 'is_calibrated) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<QueryCalibrationState-response>)))
  "Returns string type for a service object of type '<QueryCalibrationState-response>"
  "control_msgs/QueryCalibrationStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryCalibrationState-response)))
  "Returns string type for a service object of type 'QueryCalibrationState-response"
  "control_msgs/QueryCalibrationStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<QueryCalibrationState-response>)))
  "Returns md5sum for a message object of type '<QueryCalibrationState-response>"
  "28af3beedcb84986b8e470dc5470507d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'QueryCalibrationState-response)))
  "Returns md5sum for a message object of type 'QueryCalibrationState-response"
  "28af3beedcb84986b8e470dc5470507d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<QueryCalibrationState-response>)))
  "Returns full string definition for message of type '<QueryCalibrationState-response>"
  (cl:format cl:nil "bool is_calibrated~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'QueryCalibrationState-response)))
  "Returns full string definition for message of type 'QueryCalibrationState-response"
  (cl:format cl:nil "bool is_calibrated~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <QueryCalibrationState-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <QueryCalibrationState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'QueryCalibrationState-response
    (cl:cons ':is_calibrated (is_calibrated msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'QueryCalibrationState)))
  'QueryCalibrationState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'QueryCalibrationState)))
  'QueryCalibrationState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'QueryCalibrationState)))
  "Returns string type for a service object of type '<QueryCalibrationState>"
  "control_msgs/QueryCalibrationState")