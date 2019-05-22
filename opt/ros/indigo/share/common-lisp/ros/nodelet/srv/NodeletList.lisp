; Auto-generated. Do not edit!


(cl:in-package nodelet-srv)


;//! \htmlinclude NodeletList-request.msg.html

(cl:defclass <NodeletList-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass NodeletList-request (<NodeletList-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeletList-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeletList-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nodelet-srv:<NodeletList-request> is deprecated: use nodelet-srv:NodeletList-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeletList-request>) ostream)
  "Serializes a message object of type '<NodeletList-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeletList-request>) istream)
  "Deserializes a message object of type '<NodeletList-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeletList-request>)))
  "Returns string type for a service object of type '<NodeletList-request>"
  "nodelet/NodeletListRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletList-request)))
  "Returns string type for a service object of type 'NodeletList-request"
  "nodelet/NodeletListRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeletList-request>)))
  "Returns md5sum for a message object of type '<NodeletList-request>"
  "99c7b10e794f5600b8030e697e946ca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeletList-request)))
  "Returns md5sum for a message object of type 'NodeletList-request"
  "99c7b10e794f5600b8030e697e946ca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeletList-request>)))
  "Returns full string definition for message of type '<NodeletList-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeletList-request)))
  "Returns full string definition for message of type 'NodeletList-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeletList-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeletList-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeletList-request
))
;//! \htmlinclude NodeletList-response.msg.html

(cl:defclass <NodeletList-response> (roslisp-msg-protocol:ros-message)
  ((nodelets
    :reader nodelets
    :initarg :nodelets
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass NodeletList-response (<NodeletList-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NodeletList-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NodeletList-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nodelet-srv:<NodeletList-response> is deprecated: use nodelet-srv:NodeletList-response instead.")))

(cl:ensure-generic-function 'nodelets-val :lambda-list '(m))
(cl:defmethod nodelets-val ((m <NodeletList-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nodelet-srv:nodelets-val is deprecated.  Use nodelet-srv:nodelets instead.")
  (nodelets m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NodeletList-response>) ostream)
  "Serializes a message object of type '<NodeletList-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'nodelets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'nodelets))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NodeletList-response>) istream)
  "Deserializes a message object of type '<NodeletList-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'nodelets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'nodelets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NodeletList-response>)))
  "Returns string type for a service object of type '<NodeletList-response>"
  "nodelet/NodeletListResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletList-response)))
  "Returns string type for a service object of type 'NodeletList-response"
  "nodelet/NodeletListResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NodeletList-response>)))
  "Returns md5sum for a message object of type '<NodeletList-response>"
  "99c7b10e794f5600b8030e697e946ca7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NodeletList-response)))
  "Returns md5sum for a message object of type 'NodeletList-response"
  "99c7b10e794f5600b8030e697e946ca7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NodeletList-response>)))
  "Returns full string definition for message of type '<NodeletList-response>"
  (cl:format cl:nil "string[] nodelets~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NodeletList-response)))
  "Returns full string definition for message of type 'NodeletList-response"
  (cl:format cl:nil "string[] nodelets~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NodeletList-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'nodelets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NodeletList-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NodeletList-response
    (cl:cons ':nodelets (nodelets msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NodeletList)))
  'NodeletList-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NodeletList)))
  'NodeletList-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NodeletList)))
  "Returns string type for a service object of type '<NodeletList>"
  "nodelet/NodeletList")