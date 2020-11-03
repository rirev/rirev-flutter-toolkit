import 'package:permission_handler/permission_handler.dart';

class Permitter {
  static final Permitter instance = Permitter._();

  Permitter._();

  Future<bool> authorizeContacts() async {
    if (await Permission.contacts.isGranted) {
      return true;
    }

    if (await Permission.contacts.request().isGranted) {
      return true;
    }

    await openAppSettings();

    return false;
  }

  Future<bool> authorizeStorage() async {
    if (await Permission.storage.isGranted) {
      return true;
    }
    if (await Permission.storage.request().isGranted) {
      return true;
    }

    await openAppSettings();

    return false;
  }

  Future<bool> authorizeLocation() async {
    if (await Permission.locationWhenInUse.isGranted ||
        await Permission.location.isGranted) {
      return true;
    }

    if (await Permission.locationWhenInUse.request().isGranted) {
      return true;
    }

    await openAppSettings();

    return false;
  }

  Future<bool> get notificationAuthorized async {
    return await Permission.notification.isGranted;
  }

  Future<bool> authorizeNotification() async {
    if (await Permission.notification.isGranted) {
      return true;
    }

    if (await Permission.notification.request().isGranted) {
      return true;
    }

    await openAppSettings();

    return false;
  }
}
