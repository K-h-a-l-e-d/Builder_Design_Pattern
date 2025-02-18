class User {
  final String _firstName;
  final String _lastName;
  String _age;
  String _phone;

  //making a setter for age in case the user wants to set age later
  void setAge(String age) {
    _age = age;
  }

  void setPhone(String phone) {
    _phone = phone;
  }

  //Underscore "_" here is used to make this constructor private in order to restrict
  //direct User Instantiation and instead use the builder pattern way
  User._(
      {required String firstName,
      required String lastName,
      String? age,
      String? phone})
      : _firstName = firstName,
        _lastName = lastName,
        _age = age ?? 'Age not Provided',
        _phone = phone ?? 'No Provided Phone Number';

  //making a static function in order to access it without instantiating the class
  static User builder({required UserBuilder userInfoBuilder}) {
    return User._(
        firstName: userInfoBuilder.firstName,
        lastName: userInfoBuilder.lastName,
        age: userInfoBuilder.age,
        phone: userInfoBuilder.phone);
  }

  //overriding dart's toString Function and returning User's info as a string
  @override
  String toString() {
    return 'User(firstName: $_firstName, lastName: $_lastName, age: $_age, phone: $_phone)';
  }
}

class UserBuilder {
  final String firstName;
  final String lastName;
  final String? age;
  final String? phone;

  //setting User data
  UserBuilder({
    required this.firstName,
    required this.lastName,
    this.age,
    this.phone,
  });

  //returning an instance of User after setting user data
  User build() {
    return User._(
        firstName: firstName, lastName: lastName, age: age, phone: phone);
  }
}
