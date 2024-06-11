import 'package:hive_flutter/hive_flutter.dart';
import 'package:useful_points/data/storage/auth/holder.dart';

class AuthPrefs extends Holder {
  late Box authBox;

  AuthPrefs() {
    authBox = Hive.box(authBoxID);
  }

  @override
  String get email => authBox.get(emailId, defaultValue: '');

  @override
  set email(String token) => authBox.put(emailId, token);

  @override
  Future<void> clearHolder() async => await authBox.clear();

  static const authBoxID = 'auth_hive_box';
  static const emailId = 'email';

}
