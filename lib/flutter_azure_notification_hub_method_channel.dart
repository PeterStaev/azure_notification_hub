import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_azure_notification_hub_platform_interface.dart';

/// An implementation of [FlutterAzureNotificationHubPlatform] that uses method channels.
class MethodChannelFlutterAzureNotificationHub extends FlutterAzureNotificationHubPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_azure_notification_hub');

  @override
  Future<void> start() {
    return methodChannel.invokeMethod<void>('start');
  }
}