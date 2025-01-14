import 'package:flutter/material.dart';
import 'package:hajj_umrah_accessories/core/utils/lang.dart';

import 'failure.dart';

// TODO: inisialisasi pesan error berdasarkan Failure

class FailureHandler {
  static void handleFailure(
      {required BuildContext context, required Failure failure}) {
    switch (failure.runtimeType) {
      case const (ServerFailure):
        Lang.of(context).serverError;
        break;
      case const (OfflineFailure):
        Lang.of(context).networkError;
        break;
      case const (LoginFailure):
        Lang.of(context).loginError;
        break;
      default:
        Lang.of(context).unexpectedError;
        break;
    }
  }
}
