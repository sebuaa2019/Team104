; Auto-generated. Do not edit!


(cl:in-package rosgraph_msgs-msg)


;//! \htmlinclude TopicStatistics.msg.html

(cl:defclass <TopicStatistics> (roslisp-msg-protocol:ros-message)
  ((topic
    :reader topic
    :initarg :topic
    :type cl:string
    :initform "")
   (node_pub
    :reader node_pub
    :initarg :node_pub
    :type cl:string
    :initform "")
   (node_sub
    :reader node_sub
    :initarg :node_sub
    :type cl:string
    :initform "")
   (window_start
    :reader window_start
    :initarg :window_start
    :type cl:real
    :initform 0)
   (window_stop
    :reader window_stop
    :initarg :window_stop
    :type cl:real
    :initform 0)
   (delivered_msgs
    :reader delivered_msgs
    :initarg :delivered_msgs
    :type cl:integer
    :initform 0)
   (dropped_msgs
    :reader dropped_msgs
    :initarg :dropped_msgs
    :type cl:integer
    :initform 0)
   (traffic
    :reader traffic
    :initarg :traffic
    :type cl:integer
    :initform 0)
   (period_mean
    :reader period_mean
    :initarg :period_mean
    :type cl:real
    :initform 0)
   (period_stddev
    :reader period_stddev
    :initarg :period_stddev
    :type cl:real
    :initform 0)
   (period_max
    :reader period_max
    :initarg :period_max
    :type cl:real
    :initform 0)
   (stamp_age_mean
    :reader stamp_age_mean
    :initarg :stamp_age_mean
    :type cl:real
    :initform 0)
   (stamp_age_stddev
    :reader stamp_age_stddev
    :initarg :stamp_age_stddev
    :type cl:real
    :initform 0)
   (stamp_age_max
    :reader stamp_age_max
    :initarg :stamp_age_max
    :type cl:real
    :initform 0))
)

(cl:defclass TopicStatistics (<TopicStatistics>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicStatistics>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicStatistics)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rosgraph_msgs-msg:<TopicStatistics> is deprecated: use rosgraph_msgs-msg:TopicStatistics instead.")))

(cl:ensure-generic-function 'topic-val :lambda-list '(m))
(cl:defmethod topic-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:topic-val is deprecated.  Use rosgraph_msgs-msg:topic instead.")
  (topic m))

(cl:ensure-generic-function 'node_pub-val :lambda-list '(m))
(cl:defmethod node_pub-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:node_pub-val is deprecated.  Use rosgraph_msgs-msg:node_pub instead.")
  (node_pub m))

(cl:ensure-generic-function 'node_sub-val :lambda-list '(m))
(cl:defmethod node_sub-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:node_sub-val is deprecated.  Use rosgraph_msgs-msg:node_sub instead.")
  (node_sub m))

(cl:ensure-generic-function 'window_start-val :lambda-list '(m))
(cl:defmethod window_start-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:window_start-val is deprecated.  Use rosgraph_msgs-msg:window_start instead.")
  (window_start m))

(cl:ensure-generic-function 'window_stop-val :lambda-list '(m))
(cl:defmethod window_stop-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:window_stop-val is deprecated.  Use rosgraph_msgs-msg:window_stop instead.")
  (window_stop m))

(cl:ensure-generic-function 'delivered_msgs-val :lambda-list '(m))
(cl:defmethod delivered_msgs-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:delivered_msgs-val is deprecated.  Use rosgraph_msgs-msg:delivered_msgs instead.")
  (delivered_msgs m))

(cl:ensure-generic-function 'dropped_msgs-val :lambda-list '(m))
(cl:defmethod dropped_msgs-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:dropped_msgs-val is deprecated.  Use rosgraph_msgs-msg:dropped_msgs instead.")
  (dropped_msgs m))

(cl:ensure-generic-function 'traffic-val :lambda-list '(m))
(cl:defmethod traffic-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:traffic-val is deprecated.  Use rosgraph_msgs-msg:traffic instead.")
  (traffic m))

(cl:ensure-generic-function 'period_mean-val :lambda-list '(m))
(cl:defmethod period_mean-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:period_mean-val is deprecated.  Use rosgraph_msgs-msg:period_mean instead.")
  (period_mean m))

(cl:ensure-generic-function 'period_stddev-val :lambda-list '(m))
(cl:defmethod period_stddev-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:period_stddev-val is deprecated.  Use rosgraph_msgs-msg:period_stddev instead.")
  (period_stddev m))

(cl:ensure-generic-function 'period_max-val :lambda-list '(m))
(cl:defmethod period_max-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:period_max-val is deprecated.  Use rosgraph_msgs-msg:period_max instead.")
  (period_max m))

(cl:ensure-generic-function 'stamp_age_mean-val :lambda-list '(m))
(cl:defmethod stamp_age_mean-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:stamp_age_mean-val is deprecated.  Use rosgraph_msgs-msg:stamp_age_mean instead.")
  (stamp_age_mean m))

(cl:ensure-generic-function 'stamp_age_stddev-val :lambda-list '(m))
(cl:defmethod stamp_age_stddev-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:stamp_age_stddev-val is deprecated.  Use rosgraph_msgs-msg:stamp_age_stddev instead.")
  (stamp_age_stddev m))

(cl:ensure-generic-function 'stamp_age_max-val :lambda-list '(m))
(cl:defmethod stamp_age_max-val ((m <TopicStatistics>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rosgraph_msgs-msg:stamp_age_max-val is deprecated.  Use rosgraph_msgs-msg:stamp_age_max instead.")
  (stamp_age_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicStatistics>) ostream)
  "Serializes a message object of type '<TopicStatistics>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_pub))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_pub))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'node_sub))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'node_sub))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'window_start)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'window_start) (cl:floor (cl:slot-value msg 'window_start)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'window_stop)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'window_stop) (cl:floor (cl:slot-value msg 'window_stop)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let* ((signed (cl:slot-value msg 'delivered_msgs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'dropped_msgs)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'traffic)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'period_mean)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'period_mean) (cl:floor (cl:slot-value msg 'period_mean)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'period_stddev)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'period_stddev) (cl:floor (cl:slot-value msg 'period_stddev)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'period_max)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'period_max) (cl:floor (cl:slot-value msg 'period_max)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp_age_mean)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp_age_mean) (cl:floor (cl:slot-value msg 'stamp_age_mean)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp_age_stddev)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp_age_stddev) (cl:floor (cl:slot-value msg 'stamp_age_stddev)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp_age_max)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp_age_max) (cl:floor (cl:slot-value msg 'stamp_age_max)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicStatistics>) istream)
  "Deserializes a message object of type '<TopicStatistics>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_pub) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_pub) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'node_sub) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'node_sub) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'window_start) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'window_stop) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delivered_msgs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dropped_msgs) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'traffic) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period_mean) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period_stddev) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'period_max) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp_age_mean) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp_age_stddev) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp_age_max) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicStatistics>)))
  "Returns string type for a message object of type '<TopicStatistics>"
  "rosgraph_msgs/TopicStatistics")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicStatistics)))
  "Returns string type for a message object of type 'TopicStatistics"
  "rosgraph_msgs/TopicStatistics")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicStatistics>)))
  "Returns md5sum for a message object of type '<TopicStatistics>"
  "10152ed868c5097a5e2e4a89d7daa710")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicStatistics)))
  "Returns md5sum for a message object of type 'TopicStatistics"
  "10152ed868c5097a5e2e4a89d7daa710")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicStatistics>)))
  "Returns full string definition for message of type '<TopicStatistics>"
  (cl:format cl:nil "# name of the topic~%string topic~%~%# node id of the publisher~%string node_pub~%~%# node id of the subscriber~%string node_sub~%~%# the statistics apply to this time window~%time window_start~%time window_stop~%~%# number of messages delivered during the window~%int32 delivered_msgs~%# numbers of messages dropped during the window~%int32 dropped_msgs~%~%# traffic during the window, in bytes~%int32 traffic~%~%# mean/stddev/max period between two messages~%duration period_mean~%duration period_stddev~%duration period_max~%~%# mean/stddev/max age of the message based on the~%# timestamp in the message header. In case the~%# message does not have a header, it will be 0.~%duration stamp_age_mean~%duration stamp_age_stddev~%duration stamp_age_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicStatistics)))
  "Returns full string definition for message of type 'TopicStatistics"
  (cl:format cl:nil "# name of the topic~%string topic~%~%# node id of the publisher~%string node_pub~%~%# node id of the subscriber~%string node_sub~%~%# the statistics apply to this time window~%time window_start~%time window_stop~%~%# number of messages delivered during the window~%int32 delivered_msgs~%# numbers of messages dropped during the window~%int32 dropped_msgs~%~%# traffic during the window, in bytes~%int32 traffic~%~%# mean/stddev/max period between two messages~%duration period_mean~%duration period_stddev~%duration period_max~%~%# mean/stddev/max age of the message based on the~%# timestamp in the message header. In case the~%# message does not have a header, it will be 0.~%duration stamp_age_mean~%duration stamp_age_stddev~%duration stamp_age_max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicStatistics>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'topic))
     4 (cl:length (cl:slot-value msg 'node_pub))
     4 (cl:length (cl:slot-value msg 'node_sub))
     8
     8
     4
     4
     4
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicStatistics>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicStatistics
    (cl:cons ':topic (topic msg))
    (cl:cons ':node_pub (node_pub msg))
    (cl:cons ':node_sub (node_sub msg))
    (cl:cons ':window_start (window_start msg))
    (cl:cons ':window_stop (window_stop msg))
    (cl:cons ':delivered_msgs (delivered_msgs msg))
    (cl:cons ':dropped_msgs (dropped_msgs msg))
    (cl:cons ':traffic (traffic msg))
    (cl:cons ':period_mean (period_mean msg))
    (cl:cons ':period_stddev (period_stddev msg))
    (cl:cons ':period_max (period_max msg))
    (cl:cons ':stamp_age_mean (stamp_age_mean msg))
    (cl:cons ':stamp_age_stddev (stamp_age_stddev msg))
    (cl:cons ':stamp_age_max (stamp_age_max msg))
))
