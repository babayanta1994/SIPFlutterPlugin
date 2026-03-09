class SIPSDKLocalConfig {
  final String? transport;
  final int? port;
  final String? username;
  final String? boundAddr;
  final String? publicAddr;
  final int? lockCodec;
  final bool enableStreamControl;
  final int streamElapsed;

  SIPSDKLocalConfig({
    this.transport,
    this.username,
    this.port = 5060,
    this.boundAddr,
    this.publicAddr,
    this.lockCodec = 0,
    this.enableStreamControl = false,
    this.streamElapsed = 0,
  });

  Map<String, dynamic> toJson() => {
        'transport': transport,
        'username': username,
        'port': port,
        'boundAddr': boundAddr,
        'publicAddr': publicAddr,
        'lockCodec': lockCodec,
        'enableStreamControl': enableStreamControl,
        'streamElapsed': streamElapsed,
      };
}
