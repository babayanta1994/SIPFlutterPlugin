import 'sip_sdk_stun_config.dart';
import 'sip_sdk_media_config.dart';

class SIPSDKConfig {
  final String baseUrl;
  final String clientId;
  final String clientSecret;
  final int logLevel;
  final String? userAgent;
  final int workerThreadCount;
  final bool updateRoute;
  final bool enableVideo;
  final bool videoOutAutoTransmit;
  final bool allowMultipleConnections;
  final bool domainNameDirectRegistrar;
  final bool doesItSupportBroadcast;
  final String? customSessionName;
  final int localCallUpdateTime;
  final STUNConfig? stunConfig;
  final SIPSDKMediaConfig? mediaConfig;

  SIPSDKConfig({
    this.baseUrl = "",
    this.clientId = "",
    this.clientSecret = "",
    this.logLevel = 4,
    this.userAgent,
    this.workerThreadCount = 1,
    this.updateRoute = false,
    this.enableVideo = true,
    this.videoOutAutoTransmit = true,
    this.allowMultipleConnections = false,
    this.domainNameDirectRegistrar = false,
    this.doesItSupportBroadcast = false,
    this.customSessionName,
    this.localCallUpdateTime = 60,
    this.stunConfig,
    this.mediaConfig,
  });

  Map<String, Object?> toJson() {
    return {
      'baseUrl': baseUrl,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'logLevel': logLevel,
      'userAgent': userAgent,
      'workerThreadCount': workerThreadCount,
      'updateRoute': updateRoute,
      'enableVideo': enableVideo,
      'videoOutAutoTransmit': videoOutAutoTransmit,
      'allowMultipleConnections': allowMultipleConnections,
      'domainNameDirectRegistrar': domainNameDirectRegistrar,
      'doesItSupportBroadcast': doesItSupportBroadcast,
      'customSessionName': customSessionName,
      'localCallUpdateTime': localCallUpdateTime,
      'stunConfig': stunConfig?.toJson(),
      'mediaConfig': mediaConfig?.toJson(),
    };
  }

  factory SIPSDKConfig.fromJson(Map<String, dynamic> json) {
    return SIPSDKConfig(
      baseUrl: json['baseUrl'] as String? ?? "",
      clientId: json['clientId'] as String? ?? "",
      clientSecret: json['clientSecret'] as String? ?? "",
      logLevel: json['logLevel'] is int ? json['logLevel'] as int : 4,
      userAgent: json['userAgent'] as String? ?? "",
      workerThreadCount: json['workerThreadCount'] as int? ?? 1,
      updateRoute: json['updateRoute'] as bool? ?? false,
      enableVideo:
          json['enableVideo'] is bool ? json['enableVideo'] as bool : true,
      videoOutAutoTransmit: json['videoOutAutoTransmit'] as bool? ?? true,
      allowMultipleConnections:
          json['allowMultipleConnections'] as bool? ?? false,
      domainNameDirectRegistrar:
          json['domainNameDirectRegistrar'] as bool? ?? false,
      doesItSupportBroadcast: json['doesItSupportBroadcast'] as bool? ?? false,
      customSessionName: json['customSessionName'] as String?,
      localCallUpdateTime: json['localCallUpdateTime'] as int? ?? 60,
      stunConfig: json['stunConfig'] != null &&
              json['stunConfig'] is Map<String, dynamic>
          ? STUNConfig.fromJson(json['stunConfig'] as Map<String, dynamic>)
          : null,
      mediaConfig: json['mediaConfig'] != null &&
              json['mediaConfig'] is Map<String, dynamic>
          ? SIPSDKMediaConfig.fromJson(
              json['mediaConfig'] as Map<String, dynamic>,
            )
          : null,
    );
  }
}
