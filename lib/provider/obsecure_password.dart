import 'package:flutter/cupertino.dart';

class ObsecurePassword extends ChangeNotifier {
  bool _isObsecure = true;

  get obsecure => _isObsecure;

  void updateIsSecure() {
    _isObsecure = !_isObsecure;
    notifyListeners();
  }
}
