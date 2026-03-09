class SIPSDKDtmfInfo {
  final String callUuid;
  final int dtmfInfoType;
  final String contentType;
  final String content;

  SIPSDKDtmfInfo({
    required this.callUuid,
    required this.dtmfInfoType,
    required this.contentType,
    required this.content,
  });

  factory SIPSDKDtmfInfo.fromMap(Map<String, dynamic> map) {
    return SIPSDKDtmfInfo(
      callUuid: map['callUuid'] ?? '',
      dtmfInfoType: map['dtmfInfoType'] ?? 0,
      contentType: map['contentType'] ?? '',
      content: map['content'] ?? '',
    );
  }

  @override
  String toString() {
    return 'SIPSDKDtmfInfo{callUuid: $callUuid, dtmfInfoType: $dtmfInfoType, contentType: $contentType, content: $content}';
  }
}
