// Autogenerated from Pigeon (v13.1.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

List<Object?> wrapResponse(
    {Object? result, PlatformException? error, bool empty = false}) {
  if (empty) {
    return <Object?>[];
  }
  if (error == null) {
    return <Object?>[result];
  }
  return <Object?>[error.code, error.message, error.details];
}

abstract class Native2Flutter {
  static const MessageCodec<Object?> codec = StandardMessageCodec();

  void onClick(bool forward);

  static void setup(Native2Flutter? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.desktop_adb_file_browser.Native2Flutter.onClick',
          codec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        channel.setMessageHandler(null);
      } else {
        channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.desktop_adb_file_browser.Native2Flutter.onClick was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final bool? arg_forward = (args[0] as bool?);
          assert(arg_forward != null,
              'Argument for dev.flutter.pigeon.desktop_adb_file_browser.Native2Flutter.onClick was null, expected non-null bool.');
          try {
            api.onClick(arg_forward!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}
