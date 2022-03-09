
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:skeleton_state/src/models/user.dart';

class UserServices {
  UserServices._internal();

  static final _instance = UserServices._internal();

  factory UserServices() {
    return _instance;
  }

  final StreamController<User> _userStreamController = StreamController();
  Stream<User> get userStream => _userStreamController.stream;

  bool get existUser => _user != null;

  User? _user;

  final ValueNotifier<String> titleNotifier = ValueNotifier('Detail Page');

  void setUser(User user){
    _user = user;
    titleNotifier.value = _user!.name;
    _userStreamController.add(_user!);
  }

  void setAge(DateTime birthday){
    if(_user != null){
      _user!.birthday = birthday;
      _userStreamController.add(_user!);
    }
  }

  void addProffesion(String profession){
    if(_user != null){
      _user!.professions.add(profession);
      _userStreamController.add(_user!);
    }
  }

  User? getUser() => _user; //-Se podria pasar la copia si no se quiere que se modifique
}