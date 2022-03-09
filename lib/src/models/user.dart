
//-No las dejo final para poder cambiarlas, tambien puede utilizarse el copyWith pero se haran muchas modificaciones
class User {
  String name;
  DateTime age;
  List<String> professions;

  User({required this.name, required this.age, required this.professions});

  User copyWith({String? name, DateTime? age, List<String>? professions}){
    return User(
      name: name ?? this.name,
      age: age ?? this.age,
      professions: professions ?? this.professions
    );
  }
}