import 'package:flutter/foundation.dart';
import '../models/profile.dart';

class Profiles with ChangeNotifier {
  List<Profile> _profiles = [];

  List<Profile> get profiles {
    return [..._profiles];
  }

  void addProfile(String name, int age) {
    _profiles.add(Profile(name, age));
    notifyListeners();
  }

  void removeProfile(String id) {
    _profiles.removeWhere((profile) => profile.id == id);
    notifyListeners();
  }
}
