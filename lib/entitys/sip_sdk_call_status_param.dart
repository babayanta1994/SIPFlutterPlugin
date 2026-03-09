class SIPSDKCallStatusParam {
  String? callUuid; // 呼叫ID
  int? state; // 状态
  int? lastStatus; // 状态码
  String? lastStatusText; // 状态描述

  SIPSDKCallStatusParam({
    this.callUuid,
    this.state,
    this.lastStatus,
    this.lastStatusText,
  });

  factory SIPSDKCallStatusParam.fromJson(Map<String, dynamic> json) {
    return SIPSDKCallStatusParam(
      callUuid: json['callUuid'],
      state: json['state'],
      lastStatus: json['lastStatus'],
      lastStatusText: json['lastStatusText'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'callUuid': callUuid,
      'state': state,
      'lastStatus': lastStatus,
      'lastStatusText': lastStatusText,
    };
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
