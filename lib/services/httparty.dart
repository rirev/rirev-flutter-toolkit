import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class Httparty {
  static final Httparty instance = Httparty._();

  Httparty._() {
    dio = Dio();

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (
      final HttpClient client,
    ) {
      client.badCertificateCallback = (
        final X509Certificate cert,
        final String host,
        final int port,
      ) {
        return true;
      };

      return client;
    };
  }

  Dio dio;
}

// Solves CERTIFICATE_VERIFY_FAILED
// https://github.com/flutter/flutter/issues/19588#issuecomment-406779390
class SyncHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(final SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (
        final X509Certificate cert,
        final String host,
        final int port,
      ) {
        return true;
      };
  }
}
