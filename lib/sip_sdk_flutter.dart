import 'dart:ffi';

import 'package:sip_sdk_flutter/entitys/sip_sdk_local_config.dart';
import 'package:sip_sdk_flutter/sip_sdk_callbacks.dart';

import 'entitys/sip_sdk_camera_config.dart';
import 'entitys/sip_sdk_config.dart';
import 'entitys/sip_sdk_registrar_config.dart';
import 'sip_sdk_flutter_platform_interface.dart';

class SipSdkFlutter {
  Future<Void?> setupCallbacks(SIPSDKCallbacks callbacks) {
    return SipSdkFlutterPlatform.instance.setupCallbacks(callbacks);
  }

  Future<Void?> initSDK(SIPSDKConfig config) {
    return SipSdkFlutterPlatform.instance.initSDK(config);
  }

  Future<Void?> initToken(SIPSDKConfig config) {
    return SipSdkFlutterPlatform.instance.initToken(config);
  }

  Future<Void?> localAccount(SIPSDKLocalConfig config) {
    return SipSdkFlutterPlatform.instance.localAccount(config);
  }

  Future<Void?> remoteAccount(SIPSDKRegistrarConfig config) {
    return SipSdkFlutterPlatform.instance.remoteAccount(config);
  }

  Future<void> delRemoteAccount() {
    return SipSdkFlutterPlatform.instance.delRemoteAccount();
  }

  Future<void> cameraOpen(SIPSDKCameraConfig config) {
    return SipSdkFlutterPlatform.instance.cameraOpen(config);
  }

  Future<void> cameraClose() {
    return SipSdkFlutterPlatform.instance.cameraClose();
  }

  Future<String?> call(
    int type, {
    String? username,
    String? remoteIp,
    bool? transmitVideo,
    bool? transmitSound,
    Map<String, String>? headers,
  }) {
    return SipSdkFlutterPlatform.instance.call(
      type,
      username: username,
      remoteIp: remoteIp,
      transmitVideo: transmitVideo,
      transmitSound: transmitSound,
      headers: headers,
    );
  }

  Future<void> answer(int code, [String? callUUID]) {
    return SipSdkFlutterPlatform.instance.answer(code, callUUID);
  }

  Future<void> sendDtmfInfo(int type, String content, String callUUID) {
    return SipSdkFlutterPlatform.instance.sendDtmfInfo(type, content, callUUID);
  }

  Future<void> sendMessage(
    int type,
    String content, {
    String? username,
    String? remoteIp,
  }) {
    return SipSdkFlutterPlatform.instance.sendMessage(
      type,
      content,
      username: username,
      remoteIp: remoteIp,
    );
  }

  Future<void> hangup(int code, [String? callUUID]) {
    return SipSdkFlutterPlatform.instance.hangup(code, callUUID);
  }

  Future<void> dump() {
    return SipSdkFlutterPlatform.instance.dump();
  }

  Future<void> handleIpChange() {
    return SipSdkFlutterPlatform.instance.handleIpChange();
  }

  Future<void> destroy() {
    return SipSdkFlutterPlatform.instance.destroy();
  }

  Future<void> startRecording() {
    return SipSdkFlutterPlatform.instance.startRecording();
  }

  Future<void> stopRecording() {
    return SipSdkFlutterPlatform.instance.stopRecording();
  }

  Future<void> startPlaying() {
    return SipSdkFlutterPlatform.instance.startPlaying();
  }

  Future<void> stopPlaying() {
    return SipSdkFlutterPlatform.instance.stopPlaying();
  }

  Future<bool?> isMute() {
    return SipSdkFlutterPlatform.instance.isMute();
  }

  Future<void> setMute(bool mute) {
    return SipSdkFlutterPlatform.instance.setMute(mute);
  }

  Future<bool?> isSpeaker() {
    return SipSdkFlutterPlatform.instance.isSpeaker();
  }

  Future<void> setSpeaker(bool speaker) {
    return SipSdkFlutterPlatform.instance.setSpeaker(speaker);
  }
}
