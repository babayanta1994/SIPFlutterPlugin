class SIPSDKLocalConfig {
  final String? transport;
  final int? port;
  final String? username;
  final String? boundAddr;
  final String? publicAddr;
  final bool enableStreamControl;
  final int streamElapsed;

  SIPSDKLocalConfig({
    this.transport,
    this.username,
    this.port = 5060,
    this.boundAddr,
    this.publicAddr,
    this.enableStreamControl = false,
    this.streamElapsed = 0,
  });

  Map<String, dynamic> toJson() => {
        'transport': transport,
        'username': username,
        'port': port,
        'boundAddr': boundAddr,
        'publicAddr': publicAddr,
        'enableStreamControl': enableStreamControl,
        'streamElapsed': streamElapsed,
      };
}
