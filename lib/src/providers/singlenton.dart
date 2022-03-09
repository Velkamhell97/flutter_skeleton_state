// import 'package:skeleton_state/src/models/user.dart';

class Singlenton {
  Singlenton._internal();

  static final _instance = Singlenton._internal();

  factory Singlenton() {
    return _instance;
  }
}

// class _Singlenton2 { //-Otra forma de singlenton
//   User? user;
// }

// final userServices = _Singlenton2();